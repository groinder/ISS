function testPI(start, step, stop)
load_system('pidModel.mdl');
hold on;
ti = start;
i = 0;
color = char('g', 'm', 'r', 'k', 'b', 'y');
set_param('pidModel/PID Controller', 'P', num2str(2));
set_param('pidModel/PID Controller', 'D', num2str(0));
legend('on');
while (ti <= stop)
    set_param('pidModel/PID Controller', 'I', num2str(ti));
    sim('pidModel.mdl');
    figure(1);
    plot(simout.time, simout.signals.values, 'Color', color(mod(i,6)+1), 'DisplayName', strcat('k=',num2str(ti)));
    i = i + 1;
    ti = ti + step;
end
end
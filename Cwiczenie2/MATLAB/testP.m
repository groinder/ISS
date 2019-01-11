function testP(start, step, stop)
load_system('pidModel.mdl');
hold on;
k = start;
color = char('g', 'm', 'r', 'k', 'b', 'y');
set_param('pidModel/PID Controller', 'I', num2str(0));
set_param('pidModel/PID Controller', 'D', num2str(0));
i = 0;
legend('on');
while (k <= stop)
    set_param('pidModel/PID Controller', 'P', num2str(k));
    sim('pidModel.mdl');
    figure(1);
    plot(simout.time, simout.signals.values, 'Color', color(mod(i,6)+1), 'DisplayName', strcat('k=',num2str(k)));
    i = i + 1;
    k = k + step;
end
end
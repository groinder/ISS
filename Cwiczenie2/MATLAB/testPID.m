function testPID(start, step, stop)
load_system('pidModel.mdl');
hold on;
td = start;
i = 0;
color = char('g', 'm', 'r', 'k', 'b', 'y');
set_param('pidModel/PID Controller', 'P', num2str(2));
set_param('pidModel/PID Controller', 'I', num2str(1));
legend('on');
while (td <= stop)
    set_param('pidModel/PID Controller', 'D', num2str(td));
    sim('pidModel.mdl');
    figure(1);
    plot(simout.time, simout.signals.values, 'Color', color(mod(i,6)+1), 'DisplayName', strcat('k=',num2str(td)));
    i = i + 1;
    td = td + step;
end
end
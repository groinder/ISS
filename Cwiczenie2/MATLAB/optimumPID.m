function optimumPID(start, step, stop)
load_system('pidModel.mdl');
hold on;
td = start;
i = 0;
set_param('pidModel/PID Controller', 'P', num2str(2));
set_param('pidModel/PID Controller', 'I', num2str(0.1));
while (td <= stop)
    set_param('pidModel/PID Controller', 'D', num2str(td));
    sim('pidModel.mdl');
    wy = simout.signals.values;
    i = i + 1;
    q(i) = sum(wy.^2)/length(wy);
    tede(i) = td;
    td = td + step;
end
figure(1);
plot(tede, q);
end
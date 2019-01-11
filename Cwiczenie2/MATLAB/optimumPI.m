function optimumPI(start, step, stop)
load_system('pidModel.mdl');
hold on;
ti = start;
i = 0;
set_param('pidModel/PID Controller', 'D', num2str(0));
set_param('pidModel/PID Controller', 'P', num2str(1));
while (ti <= stop)
    set_param('pidModel/PID Controller', 'I', num2str(ti));
    sim('pidModel.mdl');
    wy = simout.signals.values;
    i = i + 1;
    q(i) = sum(wy.^2)/length(wy);
    tei(i) = ti;
    ti = ti + step;
end
figure(1);
plot(tei, q);
end
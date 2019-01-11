function optimumP(start, step, stop)
load_system('pidModel.mdl');
hold on;
k = start;
i = 0;
set_param('pidModel/PID Controller', 'I', num2str(0));
set_param('pidModel/PID Controller', 'D', num2str(0));
while (k <= stop)
    set_param('pidModel/PID Controller', 'P', num2str(k));
    sim('pidModel.mdl');
    wy = simout.signals.values;
    i = i + 1;
    q(i) = sum(wy.^2)/length(wy);
    ka(i) = k;
    k = k + step;
end
figure(1);
plot(ka, q);
end
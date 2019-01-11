function testTrojpolozeniowyZHistereza(n, step, stop)
load_system('trojpolozeniowy.slx');
hold on;

i = 1;

while (step*i <= stop)
    set_param('trojpolozeniowy/Relay1', 'OffSwitchValue', num2str(n-step*i));
    set_param('trojpolozeniowy/Relay1', 'OnSwitchValue', num2str(n+step*i));
    set_param('trojpolozeniowy/Relay2', 'OffSwitchValue', num2str(-(n+step*i)));
    set_param('trojpolozeniowy/Relay2', 'OnSwitchValue', num2str(-(n-step*i)));
    
    sim('trojpolozeniowy.slx');
    
    figure(1);
    plot(u.time, u.signals.values);

    figure(2);
    plot(e.time, e.signals.values);
    i=i+1;
    hold all;
end
end
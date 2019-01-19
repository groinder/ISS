function testTrojpolozeniowyZHistereza(start, step, stop)
    load_system('trojpolozeniowy.slx');
    hold on;
    i = 1;

    s1 = start;
    s2 = start;
    while(s1 <= stop)

    s1 = s1 + step;
    s2 = s2 - step;

    set_param('trojpolozeniowy/Relay1', 'OnSwitchValue', num2str(s1*i));
    set_param('trojpolozeniowy/Relay1', 'OffSwitchValue', num2str(s2*i));
    set_param('trojpolozeniowy/Relay2', 'OnSwitchValue', num2str(-(s2*i)));
    set_param('trojpolozeniowy/Relay2', 'OffSwitchValue', num2str(-(s1*i)));


    sim('trojpolozeniowy.slx');
    figure(1);
    %plot(relay.time, relay.signals.values);
    plot(e.time, e.signals.values, 'DisplayName', num2str(s1));
    %plot(fun.time, fun.signals.values);
    i = i +1;
     end
     hold all;
end
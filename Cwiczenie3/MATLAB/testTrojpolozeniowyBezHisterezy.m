function testTrojpolozeniowyBezHisterezy()
    load_system('trojpolozeniowy.slx');
    hold on;
    
    
    set_param('trojpolozeniowy/Relay1', 'OnSwitchValue', num2str(0));
    set_param('trojpolozeniowy/Relay1', 'OffSwitchValue', num2str(0));
    set_param('trojpolozeniowy/Relay2', 'OnSwitchValue', num2str(0));
    set_param('trojpolozeniowy/Relay2', 'OffSwitchValue', num2str(0));
    
    
    sim('trojpolozeniowy.slx');
    figure(1);
    plot(u.time, u.signals.values);
    plot(e.time, e.signals.values);
    %plot(fun.time, fun.signals.values);
end
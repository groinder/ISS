function testDwupolozeniowyBezHisterezy()
    load_system('dwupolozeniowy.slx');
    hold on;

    set_param('dwupolozeniowy/Relay', 'OnSwitchValue', num2str(0));
    set_param('dwupolozeniowy/Relay', 'OffSwitchValue', num2str(0));

    sim('dwupolozeniowy.slx');
    figure(1);
    plot(u.time, u.signals.values, '-r');
    figure(2);
    plot(e.time, e.signals.values, '-k');
end
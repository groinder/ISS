function testTrojpolozeniowyBezHisterezyKor(start, step, stop)
    load_system('trojpolozeniowy_kor.slx');
    hold on;
    i = 1;

    s1 = start;
    while(s1 <= stop)
    set_param('trojpolozeniowy_kor/Relay1', 'OnSwitchValue', num2str(0.8));
    set_param('trojpolozeniowy_kor/Relay1', 'OffSwitchValue', num2str(-0.6));
    set_param('trojpolozeniowy_kor/Relay2', 'OnSwitchValue', num2str(0.6));
    set_param('trojpolozeniowy_kor/Relay2', 'OffSwitchValue', num2str(-0.8));
    
    %set_param('trojpolozeniowy_kor/Transfer Fcn3', 'Denominator', strcat('[',num2str(s1), ' 1]'));
    set_param('trojpolozeniowy_kor/Transfer Fcn3', 'Denominator', strcat("[0.1 ", num2str(s1), ']'));


    sim('trojpolozeniowy_kor.slx');
    figure(1);
    %plot(relay.time, relay.signals.values);
    plot(e.time, e.signals.values, 'DisplayName', strcat('k=', num2str(s1)));
    %plot(fun.time, fun.signals.values);
    s1 = s1 + step;
    i = i +1;
     end
     hold all;
end
function testDwupolozeniowyZHistereza(step, stop, drawU)
    load_system('dwupolozeniowy.slx');
    hold on;
    i = step;
    
    while (i <= stop)
        set_param('dwupolozeniowy/Relay', 'OnSwitchValue', num2str(i));
        set_param('dwupolozeniowy/Relay', 'OffSwitchValue', num2str(-i));

        sim('dwupolozeniowy.slx');
        figure(1);
        
        plot(e.time, e.signals.values, 'DisplayName', strcat('a=', num2str(i)));
        
        if drawU
            figure(2);
            plot(u.time, u.signals.values);
        end
        
        i=i+step;
        hold all;
    end
end
function testDwupolozeniowyKor(start, step, stop)
    load_system('dwupolozeniowy_kor.slx');
    hold on;
    s=start;
    
    
   while(s <= stop)
    %set_param('dwupolozeniowy_kor/Transfer Fcn3', 'Denominator', strcat('[',num2str(s), ' 1]'));
    set_param('dwupolozeniowy_kor/Transfer Fcn3', 'Denominator', strcat("[0.1 ", num2str(s), ']'));
    %set_param('dwupolozeniowy_kor/Transfer Fcn3', 'Denominator', strcat("[0.1 0.3]"));
    sim('dwupolozeniowy_kor.slx');
    
    figure(1);
    plot(e.time, e.signals.values, 'DisplayName', strcat('k=',num2str(s)));
    s= s+step;
   
   end
  
    
    hold all;
   
    
end
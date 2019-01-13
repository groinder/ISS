function draw(data) 
    figure(1);
    plot(data.time, data.signals.values);
    xlabel('Czas');
    ylabel('Amplituda');
end
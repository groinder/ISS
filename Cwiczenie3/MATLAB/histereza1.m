function histereza1()
    hold on;
    plot([-3 3], [0 0], '-k');
    plot([0 0], [-1.5 1.5], '-k');
    plot([-3 -0.5 -0.5 0.5 0.5 3], [-1 -1 -1 -1 1 1], '-b');
    plot([-3 -0.5 -0.5 0.5 0.5 3], [-1 -1 1 1 1 1], '-b');
end


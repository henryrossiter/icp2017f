estimates = zeros(1000);
for trial = 1:1000
    nc = 0;
    for i = 1:trial
        x = rand;
        y = rand;
        r = sqrt(x^2+y^2);
        if r<=1
            nc = nc +1;
        end
    end
    estimates(trial) = 4*nc/trial;
end
f = figure;
plot(estimates);
saveas(f,'Question4_plot.jpg')
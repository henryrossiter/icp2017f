f = figure(1);
hold on;
set(gca,'xscale','log');
a = dlmread('stuff.txt');
plot(a(:,4),'r');
saveas(figure(1), 'growthrate.png');
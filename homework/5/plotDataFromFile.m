%make sure current folder is set to folder containing this file.
f = figure;
hold on;
set(gca,'xscale','log');
set(gca,'yscale','log');
files = dir;
len = length(files);
tot = 0;
for i = 1:len
    if strcmp(extractAfter(files(i).name,"."),'txt') && ~strcmp(files(i).name,'triggers.txt') && files(i).bytes>100 
        d = readtable(files(i).name);
        if d{:,2}<0.0
        col1 = d{:,1};
        d{:,2} = exp(d{:,2});
        col2 = d{:,2};
        tot = tot+1;
        s = scatter(col2,col1,0.5,'MarkerFaceColor','r','MarkerEdgeColor','r','MarkerFaceAlpha',.04,'MarkerEdgeAlpha',.04);
        end
    end
end
disp([num2str(tot) ' events were counted'])
xlabel('Fluence [ergs/cm^{2}]')
ylabel('E_{peak}')
title('Plot of E_{peak} vs. Fluence for 650 Swift GRB events')
xlim([10^-8 10^-1])
saveas(f,'Question2_plot.jpg')

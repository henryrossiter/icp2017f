function f = robustwebread(inp)
ad =inp;
disp('Reading data from the web address...')
try
    f = webread(ad);
    disp('Done.');
catch
    disp('Warning: The requested web address does not exist! Gracefully exiting...');
    f = [];
end
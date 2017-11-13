output = fopen('fibOutput.csv', 'w') ;
fprintf(output, '%s,', 'n', 'fib') ;
fprintf(output, '%s\n', 'runtime') ;
fclose(output) ;
for i = 1:35
    s = timeFib(i);
    m = {i, s.fib, s.runtime};
    dlmwrite('fibOutput.csv', m,'newline', 'pc', '-append') ;
end

output = fopen('fibLoopOutput.csv', 'w') ;
fprintf(output, '%s,', 'n', 'fib') ;
fprintf(output, '%s,\n', 'runtime') ;
fclose(output) ;
for i = 1:35
    s = timeFibLoop(i);
    m = {i, s.fib, s.runtime};
    dlmwrite('fibLoopOutput.csv', m,'newline', 'pc', '-append') ;
end
 
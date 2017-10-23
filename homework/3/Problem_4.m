function sum = Problem_4(inp)
    oldFolder = cd (inp);
    sum = tot(1);
       function sum = tot(n)
       s = dir;
       if n<=length(s)
           sum = tot(n+1) + s(n).bytes;
       else
           sum = 0;
       end

       end
    cd(oldFolder)
end

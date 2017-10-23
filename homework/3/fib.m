function fib()
    inp = input('Please enter a non-negative integer or type stop:','s');
    if isequal(inp,'stop')
        return
    end
    n = str2double(inp);
    if isreal(n) && (round(n)==n && n>=0) 
        disp(['fib(',inp,') = ',num2str(getFib(n))])
    else
        disp('The input argument is not a non-negative integer!')
    end
    function a = getFib(n_int)
        if n_int<=1
            a = n_int;
        else
            a = getFib(n_int-1)+getFib(n_int-2);
        end
    end
    fib();
end 
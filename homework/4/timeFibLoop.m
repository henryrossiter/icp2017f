function output = timeFibLoop(n)
        if ~ischar(n) && isreal(n) && n>=0 && round(n)==n
            output.n = n;
            output.fib = getFib(n);
            f = @() getFib(n);
            output.runtime = timeit(f);
        else
            disp('The input argument is not a non-negative integer!')
        end
        function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            num1 = 0;
            num2 = 1;
            for i = 2:n_int
                nextTerm = num1+num2;
                num1 = num2;
                num2 = nextTerm;
            end
            fib = nextTerm;
        end
        end
end
function fibLoop()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                disp([char(9),'fib(',num2str(n),') = ',num2str(getFib(n))]);
                f = @() getFib(n);
                disp([char(9),'average runtime: ',num2str(timeit(f)),' seconds'])
                fibLoop()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fib()
    end
    
    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            num1 = 0;
            num2 = 1;
            for i = 3:n_int+1
                nextTerm = num1+num2;
                num1 = num2;
                num2 = nextTerm;
            end
            fib = nextTerm;
        end
    end

end
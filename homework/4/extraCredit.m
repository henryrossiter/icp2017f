%The vector based approach for extra credit
function extraCredit()
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
        fibSeq = zeros(n_int+1,1);
        fibSeq(1) = 0;
        fibSeq(2) = 1;
        if n_int>2
            for i = 3:n_int
                fibSeq(i) = fibSeq(i-1) + fibSeq(i-2);
            end
            fib = fibSeq(n_int);
        end
    end

end
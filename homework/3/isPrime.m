function f = isPrime(n)
    f = calc(n,n-1);
    function bool = calc(n,d)
        if d==1
            bool = 'True';
        else
            if round(n/d)==n/d
            bool = 'False';
            else
            bool = calc(n,d-1);
            end
        end
    end

end
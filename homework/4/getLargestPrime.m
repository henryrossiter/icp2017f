function f = getLargestPrime(n)
    if ~isreal(n) || ischar(n) || mod(n,1)~=0 || n<=0
        disp('the input was not a positive integer')
    else
        for i = n:-1:1
            if isprime(i)
                break
            end
        end
        f=i;
    end
end
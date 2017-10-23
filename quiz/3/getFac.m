function f = getFac(n)
    if n == 0
        f = 1;
    else
        f = n*getFac(n-1);
end
nc = 0;
n = input('how many trials?');
for i = 1:n
    x = rand;
    y = rand;
    r = sqrt(x^2+y^2);
    if r<=1
        nc = nc +1;
    end
end
disp(4*nc/n)

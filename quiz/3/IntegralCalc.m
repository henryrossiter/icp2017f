function IntegralCalc(a,b,c)
f = @(x) x^2+c*x+1;
disp(integral(f,a,b))
end
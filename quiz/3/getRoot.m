function a = getRoot(a,b,c)
    root1 = (-b + sqrt(b^2-4*a*c))/2*a;
    root2 = (-b - sqrt(b^2-4*a*c))/2*a;
    a = [root1,root2];
end
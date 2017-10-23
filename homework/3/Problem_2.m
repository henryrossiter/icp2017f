disp(['when taken from the fridge, it will take ', num2str(answ(4)), ' seconds to cool.'])
disp(['when at room temperature, it will take ', num2str(answ(20)), ' seconds to cool.'])

function time = answ(to)
    m = 67;
    p = 1.038;
    c = 3.7;
    k = .0054;
    tw = 100;
    ty = 70;    
    time = ((m^(2/3)*c*p^(1/3))/(k*pi^2*(4*pi/3)^(2/3)))*log(.76*((to-tw)/(ty-tw)));
end
function f = genFunc(varargin)
    if nargin>3
        disp('you entered more than 3 inputs')
        return
    end
    a = 0;
    b = 0;
    c = 0;
    if isreal(a) && isreal(b) && isreal(c)
        if nargin>=1
            a = varargin{1};
        end
        if nargin>=2
            b = varargin{2};  
        end
        if nargin==3
            c = varargin{3};   
        end
        f = @(x) a.*x.^2+b.*x + c;
        inp = input('input a value for x: ');
        evalFunc(f,inp)
    end
    
    function a = evalFunc(func,x)
        a = func(x);
    end
    
end

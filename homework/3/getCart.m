function a = getCart(inputPolarStruct)
    if isfield(inputPolarStruct,'r') && isfield(inputPolarStruct,'phi')
        x = inputPolarStruct.r*cos(inputPolarStruct.phi);
        y = inputPolarStruct.r*sin(inputPolarStruct.phi);
        a = struct('x',x,'y',y);
    else
        disp('your input is not a struct with fields r and phi')
    end
end
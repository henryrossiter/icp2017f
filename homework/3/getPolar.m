function a = getPolar(inputCartesianStruct)
    if isfield(inputCartesianStruct,'x') && isfield(inputCartesianStruct,'y')
        r = sqrt(inputCartesianStruct.x^2+inputCartesianStruct.y^2);
        theta = atan(inputCartesianStruct.y/inputCartesianStruct.x);
        a = struct('r',r,'phi',theta);
    else
        disp('your input is not a struct with fields x and y')
    end
end
function [ ret ] = convertTempFor(vals,option)
if (strcmp(option,'C2F'))
    for i =1:length(vals)
        ret(i) = vals(i)*9/5 + 32;
    end
end
if strcmp(option,'F2C')
    for i =1:length(vals)
        ret(i) = vals(i)*5/9 -32;
    end
end

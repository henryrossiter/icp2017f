function [ ret ] = convertTempWhile(vals,option)
i = 1;
if (strcmp(option,'C2F'))
    while i <= length(vals)
        ret(i) = vals(i)*9/5 + 32;
        i = i+1;
    end
end
if strcmp(option,'F2C')
    while i <= length(vals)
        ret(i) = vals(i)*5/9 -32;
        i = i+1;
    end
end
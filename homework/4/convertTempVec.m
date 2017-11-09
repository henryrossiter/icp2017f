function ret = convertTempVec(vals,option)
    if (strcmp(option,'C2F'))
        ret = vals*(9/5)+32;
    end
    if strcmp(option,'F2C')
        ret = vals*(5/9)-32;
    end
end
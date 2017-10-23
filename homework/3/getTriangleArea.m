%where vertices is a 3x1 cell array with each cell containing 2 values
function a = getTriangleArea(vertices)
    if strcmp(class(vertices),'cell') && length(vertices)==3 && length(vertices{1})==2 && length(vertices{2})==2 && length(vertices{3})==2
        x1=vertices{1}{1};
        y1=vertices{1}{2} ;
        x2=vertices{2}{1} ;
        y2=vertices{2}{2} ;
        x3=vertices{3}{1} ;
        y3=vertices{3}{2} ;
        a = (1/2)*abs(x2*y3-x3*y2-x1*y3+x3*y1+x1*y2-x2*y1);
    else
        a = 'please input a cell array with 3 cells, each being a cell array with two values';
    end
end

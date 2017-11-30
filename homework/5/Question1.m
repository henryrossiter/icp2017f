studentdata = readtable('students.csv');
studentdata.Properties.VariableNames = {'num','name'};
rng(131313);
nStudents = 99;
newOrder = randperm(nStudents);
c = cell(nStudents/3,3);
for i = 1:nStudents
    c(i) = studentdata{newOrder(i),'name'};
end
xlswrite('studentGroups.xls',c);



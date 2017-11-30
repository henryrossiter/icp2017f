rng(131313)
nStudents = 99;
dat = readtable('C:/Users/Henry/Git/icp2017f/homework/5/students.csv');
trip = randperm(nStudents);
studtrip =  cell(3,nstudents/3)
for i = 1:nStudents
    studtrip(:,i) = [dat.Student(trip(i)) ,dat.Student(trip(nStudents/3+i)) ,dat.Student(trip(nStudents*2/3+i))] ]
end

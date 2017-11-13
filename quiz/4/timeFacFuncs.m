f1 = @() getFacWhile(1700000);
f2 = @() getFacFor(1700000);
f3 = @() getFacVec(1700000);
disp(['average runtime for getFacWhile(1700000): ', num2str(timeit(f1)), ' seconds'])
disp(['average runtime for getFacFor(1700000): ',num2str(timeit(f2)), ' seconds'])
disp(['average runtime for getFacVec(1700000): ',num2str(timeit(f3)), ' seconds'])
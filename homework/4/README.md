2.
```
>> InVec = [-50:.1:100];

>> f1 = @() convertTempFor(InVec, 'C2F');

>> f2 = @() convertTempWhile(InVec, 'C2F');

>> f3 = @() convertTempVec(InVec, 'C2F');

>> timeit(f1)

ans =

   1.5780e-04

>> timeit(f2)

ans =

   1.5732e-04

>> timeit(f3)

ans =

   2.8793e-06
```

The vectorized approach is the fastest by far. The for loop and the while loop had nearly identical speeds.

4.

The code takes the square root of a 2 ```n``` times. Then it squares the result ```n``` times and prints the results. It repeats this process for every ```n``` from 1 to 60.

Precision is lost when this is done because the code uses doubles which hold 64 bytes. The square root of 2 is an irrational number, so decimal places will be cut off, making the answer smaller than the actual square root of 2. When the square root is taken multiple times, accuracy is lost every time. After many iterations, the amount of data lost becomes significant.

5.

Once eps is smaller than the smallest number that a matlab double can hold, eps will be evaluated as equivalent to 0. This occurs once eps <= 2.204e-16 since a double holds 64 bytes. Once this value is achieved, MATLAB will consider eps to be 0 and 1.0~=1.0+eps will be evaluated as false.

7.(B)

I have made the both the placeholder solution (fibLoop.m) and the vector based approach (extraCredit.m). After testing both approaches, the placeholder solution seems to be slightly faster, as shown below.
```
>> extraCredit
Please enter a non-negative integer or type stop: 200
	fib(200) = 1.734025211727978e+41
	average runtime: 9.4103e-06 seconds
Please enter a non-negative integer or type stop: stop
>> fibLoop
Please enter a non-negative integer or type stop: 200
	fib(200) = 2.805711729925102e+41
Warning: The measured time for F may be inaccurate because it is running too fast. Try measuring something that takes
longer.
> In timeit (line 158)
  In fibLoop (line 12)
	average runtime: 2.8367e-06 seconds
```

7.(C)
```
>> fib
Please enter a non-negative integer or type stop: 10
	fib(10) = 55
	average runtime: 1.3497e-05 seconds
Please enter a non-negative integer or type stop: 15
	fib(15) = 610
	average runtime: 8.4297e-05 seconds
Please enter a non-negative integer or type stop: 20
	fib(20) = 6765
	average runtime: 0.00073906 seconds
Please enter a non-negative integer or type stop: 25
	fib(25) = 75025
	average runtime: 0.0081486 seconds
Please enter a non-negative integer or type stop: 30
	fib(30) = 832040
	average runtime: 0.087941 seconds
Please enter a non-negative integer or type stop: 35
	fib(35) = 9227465
	average runtime: 0.99359 seconds
Please enter a non-negative integer or type stop: stop
```

```
>> fibLoop
Please enter a non-negative integer or type stop: 10
	fib(10) = 55
	average runtime: 4.5922e-06 seconds
Please enter a non-negative integer or type stop: 15
	fib(15) = 610
	average runtime: 3.7362e-06 seconds
Please enter a non-negative integer or type stop: 20
	fib(20) = 6765
	average runtime: 1.9449e-06 seconds
Please enter a non-negative integer or type stop: 25
	fib(25) = 75025
	average runtime: 3.4151e-06 seconds
Please enter a non-negative integer or type stop: 30
	fib(30) = 832040
	average runtime: 2.0845e-06 seconds
Please enter a non-negative integer or type stop: 35
	fib(35) = 9227465
	average runtime: 3.4677e-06 seconds
Please enter a non-negative integer or type stop: stop
```

FibLoop is much faster than fib. With higher inputs, the difference between the time the iterative approach takes and the time the recursive approach takes becomes bigger and bigger.

fibLoop is more time and memory efficient than fib. This is true because every time fib is called, it calls itself twice. This results in the time it takes to increase exponentially with higher inputs. In fibLoop, the times the loop has to run is only equal to the input, so it won't increase exponentially with higher inputs.

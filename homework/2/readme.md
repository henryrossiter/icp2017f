# Question 1 Code

```>> a =1

a =

     1


>> b='x'

b =

    'x'

>> c = true

c =

  logical

   1

>> whos a b c
  Name      Size            Bytes  Class      Attributes

  a         1x1                 8  double               
  b         1x1                 2  char                 
  c         1x1                 1  logical              

>> a==c

ans =

  logical

   1

>>  a+c

ans =

     2

>> d = [1 2 3 4]

d =

     1     2     3     4

>> e = ['a' 'b' 'c' 'd']

e =

    'abcd'

>> f = ['abcd']

f =

    'abcd'

>> g = {‘a’ ‘b’ ‘c’ ‘d’}
 g = {‘a’ ‘b’ ‘c’ ‘d’}
      ↑
Error: The input character is not valid in MATLAB statements or expressions.

>> h = { a b c d}

h =

  1×4 cell array

    [1]    'x'    [1]    [1×4 double]

>> whos d e f g h
  Name      Size            Bytes  Class     Attributes

  d         1x4                32  double              
  e         1x4                 8  char                
  f         1x4                 8  char                
  h         1x4               491  cell                
```
# Question 1 Explanations

```>> a = 1```  assigns the value 1 to variable a


```>> b = 'x'``` assigns the char 'x' to variable b


```>> c = true``` assigns boolean/logical value true to variable c


```>> whos a b c``` displays information about all of the variables that have been created


```>> a == c``` displays whether the value assigned to a is equivalent to the value of c. Since logical true is assigned the value 1, a is equal to c.


```>> a + c``` displays the sum of the values of a and c. since true can be represented as 1, 1+1=2.


```>> d = [1 2 3 4]``` assigns the specified number array to variable d


```>> e = ['a' 'b' 'c' 'd']``` assigns the specified char array to variable d


```>> f = ['abcd']```assigns the specified char array to variable f


```>> g = {‘a’ ‘b’ ‘c’ ‘d’}``` results in an error because of the non-standard quotations


```>> h = { a b c d}``` assigns the specified cell array to variable h


```>> whos d e f g h``` displays information about all of the variables that have been created. Variable g was never created.


# Question 2


```>> b = int8(300)

b =

  int8

   127
```

If you typecast an integer that is too large for its type, it will automatically be reduced to the largest possible value. If you typecast an integer that is to small, it will be increased to the smallest possible value.

```>> max16 = intmax('int16')

max16 =

  int16

   32767

>> min16 = intmin('int16')

min16 =

  int16

   -32768

>> max32 = intmax('int32')

max32 =

  int32

   2147483647

>> min32 = intmin('int32')

min32 =

  int32

   -2147483648
```

# Question 3 Code

```>> 1\2

ans =

     2

>> 1/2

ans =

    0.5000

>> int8(1/2)

ans =

  int8

   1

>> int8(1/3)

ans =

  int8

   0

>> -5^2

ans =

   -25

>> (-5)^2

ans =

    25

>> 10-6/2

ans =

     7

>> 5*4/2*3

ans =

    30
```

# Question 3 Explanations

```>> 1\2``` divides 2 by 1

```>> 1/2``` divides 1 by 2, resulting in a decimal

```>> int8(1/2)``` converts the answer of 1 divided by 2 to an 8 bit integer by rounding

```>> int8(1/3)``` converts the answer of 1 divided by 3 to an 8 bit integer by rounding

```>> -5^2 ``` computes the expression using order of operations, evaluating the exponent befor the negative constant

```>> (-5) ^ 2``` evaluates the expression, results in a positive number since the negative sign is in the parenthesis

```>> 10-6/2 ``` computes the expression using order of operations

```>> 5*4/2*3``` computes the expression using order of operations

# Question 4 (a)

```>> a = [1 0;2 1]```

```>> b= [-1 2;0 1]```

```>> c = [3;2]```

```>> d = 5```
```


# Question 4 (b) Code

```>> a+b

ans =

     0     2
     2     2

>> a.*b

ans =

    -1     0
     0     1

>> a*b

ans =

    -1     2
    -2     5

>> a*c

ans =

     3
     8

>> a+c

ans =

     4     3
     4     3

>> a+d

ans =

     6     5
     7     6

>> a.*d

ans =

     5     0
    10     5

>> a*d

ans =

     5     0
    10     5
```
# Question 4 (b) Explanations

```a + b``` returns a new matrix with each element being the sum of the corresponding elements from a and b

```a .* b``` returns a new matrix with each element being the sum of the corresponding elements from a and b

```a * b``` multiplies two matrices using a certain formula.

```a * c``` multiplies two matrices using a certain formula.

```a + c``` adds the elements in c to each column in a

```a + d``` adds d to every element in a

```a .* d``` multiplies every element in a by d

```a * d ``` multiplies every element in a by d

# Question 5

## Method 1

```>> a = zeros(3,3);

>> a([1,5,9]) = 2

a =

     2     0     0
     0     2     0
     0     0     2
```

## Method 2

```>> a = eye(3);

>> a = a*2

a =

     2     0     0
     0     2     0
     0     0     2
```

## Method 3

```>> v = [2,2,2];
>> a = diag(v)

a =

     2     0     0
     0     2     0
     0     0     2
```

# Question 6

 (in annotated script_full_of_errors_fixed.m file)

#  Question 7

```>> mkdir mynewdir```

(figure is in homework 2 folder)

# Question 8

```Undefined function or variable 'myscript'.```

This error occurs because matlab cant find the .m file called myscript since I haven't told it what folder to look in.

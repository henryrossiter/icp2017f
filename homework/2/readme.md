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

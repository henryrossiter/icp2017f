1. The ```*``` operator does element by element multiplication. The ```.*``` operator does vector multiplication.


2.
```
function a = dotProduct(vector1,vector2,n)
  if n==0
    a = 0
  else
    a = vecotor1(n)*vector2(n) + dotProduct(vector1,vector2,n-1)
  end
end
answer = dotProduct([1,0,3],[2,3,7],3)


3.(A).
*see testString.m file
```


(B).
If you compare two strings in matlab using the ```==``` notation, a logical array will be returned. Furthermore, it allows the user to compare strings with numeric values, which could lead to a semantic error. On the other hand, ```strcmp(str1,str2)``` returns a single logical value. Furthermore, ```strcmp``` will return false if you compare a string to its ascii value.


4.The ```|``` operator is more efficient than the ```||``` operator because it will only evaluate the second half of the statement if the first half is false.


5.Flip the inequality symbol so that it becomes ```x = a/b<10.0```. this equates to false.


6.A structure of arrays would be more efficient because the average grade could be calculate by a single iteration through the grades field. In an array of structures, each grade would be in its own structure and would have to be accessed independently.



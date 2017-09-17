# This is hw 1

**2.**

(A) ```$ git branch test1```

```$ git branch test2```

(B) ```$ vim test.txt```

(C) ```This is some example text for branch test1```

```:wq```

(D) ```$ git add test.txt
warning: LF will be replaced by CRLF in homework/1/test.txt.
The file will have its original line endings in your working directory.```

```$ git commit
[test1 44560c6] added test.txt
 1 file changed, 1 insertion(+)
 create mode 100644 homework/1/test.txt```


(E) ```$ git checkout test2
Switched to branch 'test2'```

No, I cannot see test.txt because I haven't merged the branches.

(F) ```$ vim test.txt```

(G) ```$ git checkout test1
error: The following untracked working tree files would be overwritten by checkout:
        homework/1/test.txt
Please move or remove them before you switch branches.
Aborting```

```$ git add test.txt```

(H) ```$ git checkout master
Switched to branch 'master'```

```$ git merge test1```

(I) ```$ ls
readme.md  test.txt```

(J), (K), (L), Not applicable because I had already commited the conflicting files as described in (M)

(N) ```$ git status
On branch test2
nothing to commit, working tree clean```

(O)  ```$ git branch -d test1
error: The branch 'test1' is not fully merged.
If you are sure you want to delete it, run 'git branch -D test1'.```

(P) ```$ git branch -d test1
Deleted branch test1 (was 44560c6).```

(Q) It was different because test1 was merged with master but it wasnt merged with test2.

(R) ```$ git branch -d test2
error: Cannot delete branch 'test2' checked out at 'C:/Users/Henry/Git/icp2017f'```

(S) ```$ git branch -d test2
Deleted branch test2 (was 6fb0bf4).```

```$ git branch
* master```

(T)

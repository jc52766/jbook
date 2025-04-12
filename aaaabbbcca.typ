= The aaaabbbcca problem
\
I read a post recently by a software developer that 'most candidates cannot solve this interview problem':\
Input: "aaaabbbcca"\
Output: [("a",4),("b",3),("c",2),("a",1)]\
\
J solution:\
```j
   >({. ; #) each {{y <;.1~ 1, ~:/"1] 2 ]\ a. i. y}} 'aaaabbbcca'
┌─┬─┐
│a│4│
├─┼─┤
│b│3│
├─┼─┤
│c│2│
├─┼─┤
│a│1│
└─┴─┘

```
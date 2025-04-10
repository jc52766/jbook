= Optimisation
\
+ xo = Options\
+ xs = Random selection from options (xo)\
+ xp = Problem to solve, which is the column sum of xs\
+ Solve it. Solve knowing only xp and xo. Being blind to xs\
\
```j
   nn=:4
   ]<xo=:8* (] % +/"1) (,~nn) $ ?2#~*~nn
┌─────────────────────────┐
│2.66667 2.66667 0 2.66667│
│      4       4 0       0│
│      2       2 2       2│
│      0       0 4       4│
└─────────────────────────┘
   ]<xs=:xo {~ ?3#nn
┌───────┐
│2 2 2 2│
│2 2 2 2│
│2 2 2 2│
└───────┘
   ]xp=:+/"2 xs
6 6 6 6
   xt=:(xo,0) {~ ?20#nn NB. rando solve incl all 0 option
   eval=:3 : '+/ | xp - +/"2 y'
   bs=:3 : '(}:xt) ,~ (xo,0){~ (] i. <./) {{eval y, }: xt}}"1 xo, 0' NB. best solve
   solver=: 3 : 0
xt=:bs 1
eval xt
)
   solver"0 i.25
128 120 112 104 96 88 80 72 64 56 48 40 32 24 16 13.3333 8 4 4 0 0 0 0 0 0
   ]<xt=:xt {~ I. 0< +/"1 xt
┌───────┐
│2 2 2 2│
│0 0 4 4│
│4 4 0 0│
└───────┘

```


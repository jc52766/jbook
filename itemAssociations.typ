= Item Associations
\
+ Create some data (d): rows=baskets, columns=products, 1=product in basket\
+ Get % baskets containing each product (pb)\
+ Get expected % baskets containing each pair of products (ep)\
+ Get actual % baskets containing each pair of products (ap)\
+ Calc lift: ap/ep\
\
```j
   nn=:4
   ]< d=:(,~nn)$ ?2#~ *~nn
┌───────┐
│1 1 0 1│
│0 1 1 0│
│0 1 1 1│
│0 1 1 0│
└───────┘
   ]pb=:(+/ % #)"2 d
0.25 1 0.75 0.5
   ]<ep=:(pb * =/~ i.nn) >. pb *"0 1 pb
┌────────────────────────┐
│  0.25 0.25 0.1875 0.125│
│  0.25    1   0.75   0.5│
│0.1875 0.75   0.75 0.375│
│ 0.125  0.5  0.375   0.5│
└────────────────────────┘
   ]<ap=:>{{(+/ % #) */"1 y {"1 _1 d}} each { ;~ i.nn
┌───────────────────┐
│0.25 0.25    0 0.25│
│0.25    1 0.75  0.5│
│   0 0.75 0.75 0.25│
│0.25  0.5 0.25  0.5│
└───────────────────┘
   ]<lift=:ap%ep
┌─────────────────────┐
│1 1        0        2│
│1 1        1        1│
│0 1        1 0.666667│
│2 1 0.666667        1│
└─────────────────────┘

```


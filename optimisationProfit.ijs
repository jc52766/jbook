NB. optimisation

]<xo=:(3 3) $ 2 0 0 1 1 0 1 0 1
]xp=:4 2 2
]<xt=:(4,3) $ 0 NB. start with all zeros
]<wdf=:10 1 1 NB. demand fill weights
]<wde=:_10 _0.5 _0.5 NB. demand exceeded weights
eval=:3 : 0
csy=.+/"2 y
df=. xp <. csy
de=.0 >. csy-df
+/ (de*wde), (df*wdf)
)
NB. eval xt
bs=:3 : '(}:xt) ,~ xo{~ (] i. >./) {{eval y, }: xt}}"1 xo' NB. best solve finder
solver=: 3 : 0
xt=:bs 1
eval xt
)
NB. first try:
solver"0 i.4
<xt
xp - +/"2 xt
NB. second try:
solver"0 i.4
<xt
xp - +/"2 xt

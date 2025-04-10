NB. optimisation

nn=:4
]<xo=:8* (] % +/"1) (,~nn) $ ?2#~*~nn
]<xs=:xo {~ ?3#nn
]xp=:+/"2 xs
xt=:(xo,0) {~ ?20#nn NB. start with random guesses from options including an all zero row
eval=:3 : '+/ | xp - +/"2 y' NB. eval just take abs diff between xt colsums and xp
NB. eval xt
bs=:3 : '(}:xt) ,~ (xo,0){~ (] i. <./) {{eval y, }: xt}}"1 xo, 0' NB. best solve finder
solver=: 3 : 0
xt=:bs 1
eval xt
)
solver"0 i.25
]<xt=:xt {~ I. 0< +/"1 xt

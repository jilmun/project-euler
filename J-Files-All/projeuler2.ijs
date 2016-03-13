NB. generates prime array up to input y
PrimeArray =: 3 : 0
primes=.''
id=.0
while. (p:id)<:y do.
 primes =. primes, p:id
 id=. id+1
end.
primes
)

NB. generates 2*squares array up to input y
TwoSquaresArray =: 3 : 0
squares=.''
id=.0
while. (2*id*id)<:y do.
 squares =. squares, 2*id*id
 id=. id+1
end.
squares
)

Prob46 =: 3 : 0
toggle=.0
composite=.11
while. toggle=0 do.
 primes=.PrimeArray composite
 twoXsquares=.TwoSquaresArray composite
 if. (+/(composite-primes) e. twoXsquares)=0 do. toggle=.1 end.
 composite=. composite+2
end.
composite-2
)

Prob49 =: 3 : 0
NB. p: 168 to p: 1228 form all 4 digit primes
array=.''
for_j. 168+i.1+1228-168 do.
 next1=.(3330+ p: j)
 next2=. 3330+next1
 if. (*/(":next1)e.":p:j)*(*/(":next2)e.":p:j) do.
	if. (1 p: next1) * (1 p: next2) do.
		array=. array, j
	end.
 end.
end.
p:array
)

ConsecPrimeCount =: 3 : 0
sum=. 0
max=.0
min=.0
while. -.sum=x:y do.
 if. sum<y do.
	sum=.sum+p:x:max
	max=.max+1x
 else. 
	sum=.sum-p:x:min
	min=.min+1x
 end.
end.
max-min
)

Prob50 =: 3 : 0
 sum=.+/p:i.546
 min=.0
 max=.546
 while. (1 p: x:sum)=0 do.
 	if. sum>y do.
		sum=.sum-p:x:min
		min=.min+1
 	else. 
		sum=.sum+p:x:max
		max=.max+1
 	end.
 end.
 sum
)

Prob396orig =: 3 : 0
NB. returns G(y)
curr=. #:y
x1=.1+_2}curr
x2=._1}curr
b=.(2^x1-1)*(x2+2+1)
while. (+/}:}:curr)>0 do.
 id=._2
 curr=.(0 0) (_1 _2) } curr
 num=.0
 while. num=0 do.
	curr=.(b-1) (id+1) } curr
	num=.id}curr
	id=.id-1
 end.
 curr=.(_1+(id+1)}curr) (id+1) } curr
 b=.10000000000x|x:b*(2 ModPow b)
end.
_3+b
)

Prob396 =: 3 : 0
curr=. #:y
x1=.1+_2}curr
x2=._1}curr
b=.(2^x1-1)*(x2+2+1)
while. (+/}:}:curr)>0 do.
 id=._1
 curr=.(0 0) (_1 _2) } curr
 while. 0=id}curr do.
	curr=.(b-1) id } curr
	num=.(id-1)}curr
	id=.id-1
 end.
 curr=.(_1+id}curr) id } curr
 b=.10000000000x|x:b*(2 ModPow b)
end.
_3+b
)

ModPow=: 4 : 0
result=.1
exponent=. #:y
base=.x
id=._1
while. (-id)<:#exponent do.
 if. (2|id}exponent)=1 do.
  result=.10000000000x|result*base
 end.
 id=.id-1
 base=. 10000000000x|base*x:base
end.
result
)

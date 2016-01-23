writetable =: dyad : 0
d =. ": x
d =. d ,"1 LF
d =. toHOST , d
d 1!:2 y
)

readtable =: 3 : 0
d =. 1!:1 y
d =. toJ d
d =. cutopen d
d =. 0 ". each d
d =. > d
)

NB. Problem 1
NB. (+/5*i.200) + (+/3*i.334) - (+/15*i.67)

Prob2 =: 3 : 0
f1b=: {.@($:&0 1x) : ((<:@[ $: +/\@|.@])^:(*@[))
sum=. 0
for_i. i.20 do. 
 if. (f1b i*3) < y do. sum=.sum+f1b i*3 end.
end.
sum
)

NB. Problem 3
NB. {:q:600851475143

Prob4 =: 3 : 0
c=:0
for_i. |.i.y do.
 for_j. |.i.y do.
	a=. i*j
	b=. ":a
	x=. <. 0.5 * #b
	y1=. x {. b
	y2=. |. (-x) {. b
	if. */y1 = y2 do. c=:c , a end.
 end.
end.
{.(\:c){c NB. takes the max of c
) 

Prob5 =: 3 : 0
NB. matrix=. q: }.i.21
a =. 1
for_i. }.i.y+1 do. a=. a*.i end.
a
)

Prob6 =: 3 : 0
sumosquares=. +/*: i.y+1
squareosums=. *:+/ i.y+1
squareosums-sumosquares
)

Prob8 =: 3 : 0
a=.'7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450'
b=.5<\a
c=.*/"1 (".> (1<\"1 (>b) ) ) 
{.(\:c){c NB. takes the max of c
)

Prob9 =: 3 : 0
x:*/{.(#~ y"_=+/"1)(, +&.*:/)"1,/,"0/~1+i.y
NB.array=:''
NB.debug=:0
NB.a1=:0
NB.a2=:0
NB.a3=:0
NB.for_x1. (|.3}.i.y) do. 
 NB.for_x2. (|.2}.i.x1) do.
  NB.for_x3. (|.}.i.x2) do.
	NB.if. y=x1+x2+x3 do. 
		NB.sum=. (*:x2) + (*:x3)
		NB.array=:array,x1,x2,x3,sum
		NB.if. (sum=*:x1) do. 
		NB.debug=:x1*x2*x3
		NB.a1=: x1
		NB.a2=: x2
		NB.a3=: x3
		NB.end.
	NB.end.
  NB.end.
 NB.end.
NB.end.
NB.debug
)

Prob10 =: 3 : 0
y([:+/[:x:]#~>)p:i.y
)

NB. Prob11 was manual

Prob12 =: 3 : 0 
sum=. 3
nextnum=.3
while.  (*/ @: >: @: {: @: (__&q:) x:sum) <y do.
 sum=. sum + x:nextnum
 nextnum=. x:nextnum + 1
end.
sum
)

Prob13 =: 3 : 0
NB. copy string into notepad and save as some file
NB. F =. 'C:\Users\wangj\Desktop\text.txt'
NB. data=. 1!:1 < F

data2=.data , '  '
data3=. 100 52 $ data2
data4=. (50 {."1 data3)
+/(x:". data4)

NB. z=.data-.&.><CR,LF,TAB,' ','''','"',',','$'                                                │
NB. z=.a: (I.z=<,'-')}z                                                                     │
NB. if. *./@,z=a: do. z=.($z)$x else. z=.x".>z end. 
)

Prob14 =: 3 : 0
maxchain =: 0
array =. ''
largest =. 0
for_j. (y-100000)-}.i.y%10 do. NB. take out "-100000" to loop all
 array =. j
 temp =. j
 while. temp~:1 do. 
	if. (2|temp)=0 do. 
		temp =. -:temp
	else. 
		temp =. 1+3*temp 
	end.
	array =. array , temp
 end.
 if. (#array)>maxchain do. 
	maxchain=:#array
	largest=.j
 end.
end.
largest
)

Prob15 =: 3 : 0
NB. pascal's on its side
y!(y*2)
)

Prob16 =: 3 : 0
+/ ".>1<\(":(2^15x))
)

Prob17 =: 3 : 0
a=. 3 3 5 4 4 3 5 5 4 NB. one-nine
b=. 0 6 6 5 5 5 7 6 6 NB. 0, twenty-ninety
hundreds=.(9 9 $ b) + |: 9 9 $ a
c=. 6 6 8 8 7 7 9 8 8 NB. eleven-nineteen
hundreds=.hundreds,"1 (9 1 $ c) NB. in tens
hundreds=.hundreds, (3 6 6 5 5 5 7 6 6 0)
(100*+/a)+(7*100*9)+(3*99*9) + (10*+/+/hundreds) + 11
NB. [11]: onethousand
NB. [10*+/+/hundreds]: 1-99 x 10
NB. [3*99*9]: 99x9 number of 'and'
NB. [7*100*9]: 100x9 number of 'hundred'
NB. [100*+/a]: 1-9 x 100
)

Prob18 =: 3 : 0
F =. 'C:\Users\wangj\Desktop\text.txt'
data=. 1!:1 < F
d =. toJ data
d =. cutopen d
d =. 0 ". each d
d =. > d
a=. _1{d
for_j. }.-1+i.15 do.
 x1=. a + j{d 
 x2=. 1|.a + _1|.j{d
 c=. x1 >. x2
 a=. c
end.
>./a
)

Prob20 =: 3 : 0
+/ ".>1<\(":(!100x))
)

Prob21 =: 3 : 0 
matrix=. (__ q: }. i.y)
exponents=. {:"2 matrix
primes=. {."2 matrix
sumdiv=:+/ each }: each , each */&.>/"1 primes ^ each <@i.@>:exponents

newsum=: <"0 (>sumdiv), 0
index2=: y <. >sumdiv
lookup1=:(index2-1) { newsum

index1=: }.i.y
amicable=:((index1) = >lookup1) - index1 = >sumdiv
+/amicable*index1
)

Prob22 =: 3 : 0
NB. F =. 'C:\Users\wangj\Desktop\names.txt'
NB. tempdata=. 1!:1 < F
data=. (tempdata),','
databox=. }: each }. each (',' E. data) <;. _2 data
sortednames=.(/:databox){databox
letters=.1<\ each sortednames
val=.+/"1 (_64+64 >. +/"1((>>letters) E."1 a.)*"1 i.256)
index=.1+i.#sortednames
+/val*index
)

Prob23 =: 3 : 0
div=: /:~ @: , @: > @: (*/&.>/) @: ((^ i.@>:)&.>/) @: (__&q:)
abundant=.''
for_j. 10+i.(y-9) do.
 if. (+/(div j)-.j)>j do. abundant=.abundant, j end.
end.
sumtotal=. 0.5*y*1+x:y
sumabundants=.''
for_id1. i.(#abundant) do.
id2=.id1
 while. (([num=.(id1 { abundant)+ id2 { abundant) <(y+1)) do.
  sumabundants=.sumabundants, num
  id2=.id2+1
 end.
end.
sumtotal - (+/~. sumabundants)
)

Prob24 =: 3 : 0
(1000000-1) A. i.10
NB. make sure to delete spaces for answer
)

Prob25 =: 3 : 0
f1=. 0
f2=. 1
index=. 1
digits=. 1
while. digits < y do. 
 a=. x: f1+f2
 digits=. $(1<\":a)
 index=.index+1
 f1=. x: f2
 f2=. x: a
end.
index 
)

Prob26 =: 3 : 0
d=.0
maxlength=.0
for_j. 1+i.y do.
 rarray=.1 NB. remainder array
 r=.10 NB. remainder
 while. (+/ r E. rarray)=0 do.
	rarray =. rarray, r
	r =. 10* j | r	
 end.
 if. (r>0)*((#rarray)>maxlength) do.
  	maxlength =. # rarray
  	d=. j
 end.
end.
d
)

Prob27 =: 3 : 0
maxlength=.1
maxa=.0
maxb=.0
for_a. (}:|.-i.y),1+i.y-1 do.
for_b. (}:|.-i.y),1+i.y-1 do.
 n=.0
 while. (((b+(a*n)+n^2)>0)*((1 p: b+(a*n)+n^2)=1)) do.
	n=.n+1
 end.
 if. n>maxlength do. 
	maxlength=.n 
	maxa=.a
	maxb=.b
 end.
end.
end.
maxa*maxb
)

Prob28 =: 3 : 0
a=. 2+2*i.(y-1)%2
b=. a+1
sumNE=: +/b^2
sumSW=: +/1+a^2
sumNW=: +/1+a+a^2
sumSE=: +/1+(b-2)+(b-2)^2
sum=: 1 + sumNE + sumSW + sumNW + sumSE
sum 
)

Prob29 =: 3 : 0
array=.''
for_a. 2}.i.y+1 do.
 for_b. 2}.i.y+1 do.
	array=.array, a^b
 end.
end.
#(~. array)
)

Prob30 =: 3 : 0
NB. x:6*9^5 = 354294 
NB. all numbers that can satisfy criteria must be < 354294
array=. ''
for_j. 2}. i.354295 do. 
 jdigits=. ".>1<\":j
 if. (+/jdigits^5)=j do. array=.array, j end.
end.
+/array
)

Prob31 =: 3 : 0
NB. 200 100 50 20 10 5 2 1
NB. 25 10 5 1
ways=.0
for_a. |.i.1+<.y%200 do.
 remainder1=.y-a*200
 for_b. |.i.1+<.remainder1%100 do.
  remainder2=.remainder1-b*100
 for_c. |.i.1+<.remainder2%50 do.
  remainder3=.remainder2-c*50
 for_d. |.i.1+<.remainder3%20 do.
  remainder4=.remainder3-d*20
 for_e. |.i.1+<.remainder4%10 do.
  remainder5=.remainder4-e*10
 for_f. |.i.1+<.remainder5%5 do.
  remainder6=.remainder5-f*5
 for_g. |.i.1+<.remainder6%2 do.
   ways=.ways+1
 end.
 end.
 end.
 end.
 end.
 end.
end.
ways
)

Prob32 =: 3 : 0
array=:''
permute=. (i.!y) A. 1+i.y
for_j. i.(#permute) do.
for_a. 1+i.(y-2) do.
 b=.1
 while. b<(y-a) do.
	numarray1=. a {."1 j{permute
	numarray2=. b {."1 a }."1 j{permute
	numarray3=. b }."1 a }."1 j{permute
	num1=.". ,> ": each 1<\numarray1
	num2=.". ,> ": each 1<\numarray2
	num3=.". ,> ": each 1<\numarray3
	if. (num1*num2)=num3 do. array=:array,num3 end.
	b=. b+1
 end.
end.
end.
+/~.array
)

Prob33 =: 3 : 0
array=.''
for_a. 10+i.90 do.
b=.a+1
while. b<100 do.
 achar=.":a
 bchar=.":b
 if. (0{achar)=(0{bchar) do. 
	if. ((".1{achar)%(".1{bchar))=(a%b) do. array=. array, <a,b end.
 end.
 if. (0{achar)=(1{bchar) do. 
	if. ((".1{achar)%(".0{bchar))=(a%b) do. array=. array, <a,b end.
 end.
 if. (1{achar)=(0{bchar) do. 
	if. ((".0{achar)%(".1{bchar))=(a%b) do. array=. array, <a,b end.
 end.
 if. (1{achar)=(1{bchar) do. 
	if. ((".0{achar)%(".0{bchar))=(a%b) do. array=. array, <a,b end.
 end.
 b=. b+1
end.
end.
array
)

Prob34 =: 3 : 0
sum=.0
for_j. i.2540160 do. 
	a=. +/! x:".>1<\":j
	if. a=j do. sum=.sum+a end.
end.
sum-3
)

Prob35 =: 3 : 0
count =. 0
for_j. 2+i.(y-2) do.
	circprime=.0
	if. (#q:j) = 1 do.
		circprime=.1
		x=.":j
		for_turn. i.(#x) do. 
			if. (#q:".turn|.x)>1 do. circprime=.0 end.
		end. 
	end. 
	if. circprime=1 do. count=.count+1 end.
end.
count
)

Prob36 =: 3 : 0
palarray=: ''
for_i. 1+i.y do.
 a=. #: i
 ix=. <. 0.5 * #a
 x1=. ix {. a
 x2=. |. (-ix) {. a
 b=. ":i
 iy=. <. 0.5 * #b
 y1=. iy {. b
 y2=. |. (-iy) {. b
 if. (*/y1 = y2)*(*/x1 = x2) do. palarray=:palarray , i end.
end.
+/palarray
) 

Prob37 =: 3 : 0
id=. 4 NB. p:4 is first prime w more than 1 digit
count=.0
array=.''
while. count <y do.
x=. p: id
xchar=.":x
toggle=.1
for_a. 1+i.#xchar do.
 if. (1 p: ".a{.xchar)=0 do. toggle=.0 end.
 if. (1 p: ".(-a){.xchar)=0 do. toggle=.0 end.
end.
if. toggle=1 do. 
 array=. array, x
 count=. count+1
end.
id=. id+1
end.
+/array
)

Prob38 =: 3 : 0
NB. can't be a large three digit number or will have 3+4+4 digits
pandigital=.0
for_j. 2+i.9998 do.
 digits=. #": j
 concat=: ''
 n=.1
 while. digits < 9 do.
	concat=:concat, ":j*n
	digits =. #concat
	n=. n+1
 end.
 if. ((#concat)=9)*(*/'123456789' e. concat) do.
	if. (pandigital < ". concat) do. pandigital =. ".concat end.
 end.
end.
pandigital
)

Prob39 =: 3 : 0
maxarray=.''
maxp=.0
for_p. 3+i.y-2 do.
 array=. ''
 for_a. 1+i.p-2 do. NB. a<:b<:c
  for_b. a+i.p-a*2 do.
	c=. (p-a)-b
	if. (c>:b)*(((*:a)+*:b)=*:x:c) do. array=. array, <(a,b,c) end.
  end.
 end.
 if. (#maxarray) < #array do. 
	maxarray=. array
	maxp=.p
 end.
end.
maxp
)

Prob40 =: 3 : 0
a=.,>":each 1<\1+i.9
b=.,>":each 1<\10+i.90
c=.,>":each 1<\100+i.900
d=.,>":each 1<\1000+i.9000
e=.,>":each 1<\10000+i.90000
f=.,>":each 1<\100000+i.900000
x=: a,b,c,d,e,f NB. take 999999{x and so forth
)

Prob41 =: 3 : 0
matrix =. (i.!y) A. (1+i.y)
ordermatrix =.(\:matrix){matrix
primetoggle =. 0
index =. 0
while. primetoggle = 0 do.
 numarray=. index { ordermatrix
 numnum =. 0
 for_j. i.(#numarray) do.
 	numnum=. numnum+ (j{numarray)*10^(#numarray)-j+1
 end.
 if. (#q:numnum)=1 do. primetoggle=.1 end.
 index=.index+1
end.
(index-1){ordermatrix
)

Prob42 =: 3 : 0
NB. F =. 'C:\Users\wangj\Desktop\words.txt'
NB. tempdata=. 1!:1 < F
data=. (tempdata),','
databox=. }: each }. each (',' E. data) <;. _2 data
letters=.1<\ each databox
val=.+/"1 (_64+64 >. +/"1((>>letters) E."1 a.)*"1 i.256)

trinums=:''
for_j. 1+i.y do.
 trinums=: trinums, 0.5*j*j+1
end.
+/val e. trinums
)

Prob43 =: 3 : 0
array=.''
permute=. (i.!10) A. '0123456789'
for_j. i.(#permute) do.
 arrayj=. j{permute
 toggle=.1
 for_a. 1+i.7 do.
    tempnum=.". (a, (a+1), a+2) { arrayj
    if. ((p:a-1) | tempnum) > 0 do. toggle=.0 end.
 end.
 if. toggle=1 do. array=. array, x:". arrayj end.
end.
+/x: array
)

NB. Function for Problem 44
PentagonalArray =: 3 : 0
pentarray=.1
for_j. 2+i.y-1 do.
 pentarray=. pentarray, 0.5*j*(3*j)-1
end.
pentarray
)

NB. Function for Problem 44
isPentagonal =: 3 : 0
n=:(%6)*1+%:1+24*y NB. solved quadratic for n
toggle=.0
if. n=<.n do. toggle=.1 end.
toggle
)

Prob44 =: 3 : 0
NB. consecutive pentagonal nums are 3n+1 apart
arrayD=: ''
finalj=: ''
finalk=: ''
finaljpent=: ''
finalkpent=: ''
for_k. 2+i.y-1 do.
 j=.k-1
 toggle=.0
 while. (j>0)*(toggle=0) do.
	sum=. 0.5*(((3*k*k)-k)+3*j*j)-j
	diff=. 0.5*(((3*k*k)-k)-3*j*j)+j
	if. (isPentagonal sum) do. 
	if. (isPentagonal diff) do.
		toggle=.1
		arrayD=: arrayD, diff
		finalj=: finalj, j
		finaljpent=: finaljpent, 0.5*j*_1+3*j
		finalk=: finalk, k
		finalkpent=: finalkpent, 0.5*k*_1+3*k
	end.
	end.
	j=.j-1
 end.
end.
<./arrayD
)

Prob44try2 =: 3 : 0 NB. this works for input y = 10000
parray=.PentagonalArray (x:2*y)
valid=.''
for_a. 1+i.y-1 do.
 sum=. (y{.parray) + (a|.y{.parray)
 diff=. (a|.y{.parray) - (y{.parray)
 valid=. valid,((diff e. parray)*(sum e. parray))#(x:diff)
end.
valid
)

Prob45 =: 3 : 0
T=.((1+i.y)*(2+i.y))%2
P=.((1+i.y)*(_1+3*1+i.y))%2
H=.(1+i.y)*(_1+2*1+i.y)
array=:((T e. P)*(T e. H))#T
)

Prob47 =: 3 : 0
exitflag=.1
index=.1
while. exitflag do.
 if. ((#~.q: index)=y) *. ((#~.q: index+1)=y) *. ((#~.q: index+2)=y) *. ((#~.q: index+3)=y)
	do. 
	exitflag =. 0 
	else. 
	index =. index+1 
	end.
end.
index
)

Prob52 =: 3 : 0
x=.1
toggle=.0
while. toggle=0 do.
	charx1=. (/:1<\":x){1<\":x
	charx2=. (/:1<\":x*2){1<\":x*2
	charx3=. (/:1<\":x*3){1<\":x*3
	charx4=. (/:1<\":x*4){1<\":x*4
	charx5=. (/:1<\":x*5){1<\":x*5
	charx6=. (/:1<\":x*6){1<\":x*6
	if. (#charx1)= #charx6 do.
		same=. (*/charx1=charx2)*(*/charx1=charx3)*(*/charx1=charx4)*(*/charx1=charx5)*(*/charx1=charx6)
		if. same=1 do. toggle=.1 end.
	end.
	x=.x+1 
end.
x-1
)

Prob53 =: 3 : 0
count =. 0
for_j. 1+i.100 do.
 for_a. 1+i.j do.
	if. ((a!(x:j))>1000000x) do. count=.count+1 end.
 end.
end.
)

Prob55 =: 3 : 0
nonLychrel=.0
Lychrel=:''
for_j. 1+i.(y-1) do.
 toggle=.0
 num=.j
 count=.0
 sum=:0
 while. (toggle=0) do.
 	sum=:num + ".|.":x:num NB. num + reverse num
	if. sum=(".|.":x:sum) do. 
		toggle=.1 
		nonLychrel=.nonLychrel+1
	end.
	if. count=50 do. 
		toggle=.1
		Lychrel=: Lychrel, j
	end.
	count=. count +1
	num=. x:sum
 end.
end.
(y-1)-nonLychrel
)

Prob56 =: 3 : 0
array=.''
for_a. 1+i.y do.
for_b. 1+i.y do.
	array=. array, (+/ > ". each 1<\":a^x:b)
end.
end. 
>./array
)

Prob57 =: 3 : 0
count=.0
num=. 1
den=. 2
it=. 1
while. it < y do.
 temp=.den 
 den=. num+den*2x
 num=. temp
 if. (#":num+den)>#":den do. count=.count+1 end.
 it=.it+1
end. 
count
)

Prob63 =: 3 : 0
NB. >.10^.9^22
NB. digits in 9^22 is 21
NB. digits in 9^21 is 21
NB. count 1-9 as 9 one digit, power of 1's
count=.9
for_j. 2+i.20 do.
 for_num. 2+i.8 do.
    if. (1+<. 10^. num^j)= j do. count=.count+1 end.
 end.
end.
count
)

Prob58 =: 3 : 0
NB. even=.0 2 4 6 8
NB. odd =.1 3 5 7 9
NB. NW = 1+even*even
NB. NE = 1+even*odd
NB. SW = odd*odd
NB. SE = 1+even*(odd-2)
n=.9
diagonalcnt=:13
primes=:8
while. (primes%diagonalcnt)>y do.
 newnums=.(1+*:n-1),(*:n),(1+n*n-1),1+(n-1)*n-2x
 diagonalcnt=:diagonalcnt+4
 primes=:primes+ +/1 p: x: newnums
 n=.n+2
end.
n-2
)

Prob62 =: 3 : 0
a=.(/:"1 ": ,.(i.y)^3x){"1 ": ,.(i.y)^3x


id=: 1
cubes=.''
permute=.''
NB. (i.!3) A. i.3
whilst. y> +/cubes do.
curr=. ":id^3x
permute=.~.x:".(i.! #curr) A. curr
permute=.(permute>:10^_1+#curr)#permute
cubes=. (3%: permute)=<.3%: permute
id=:id+1x
end.
{.(/:cubes#permute){cubes#permute
)

Prob67 =: 3 : 0
F =. 'C:\Users\wangj\Desktop\triangle.txt'
data=. 1!:1 < F
d =. toJ data
d =. cutopen d
d =. 0 ". each d
d =. > d
a=. _1{d
for_j. }.-1+i.100 do.
 x1=. a + j{d 
 x2=. 1|.a + _1|.j{d
 c=. x1 >. x2
 a=. c
end.
>./a
)

Prob69 =: 3 : 0
t0=: +/@(1:=(+.i.))
ratio =. 1
max=.6
num=.*/p:i.2
id=.1
while. num<:y do.
 if. (num% t0 num)>ratio do.
  ratio=. num% t0 num
  max=.num
 end.
id=.id+1
num=.num*p:id
end.
max
)

Prob70 =: 3 : 0
NB. prime produces min ratio
NB. phi prime = prime -1, can't be permutation
NB. looking for product of two primes where
NB.   (n-1)- +/q:n is minimized
NB. square root of 10^7 = 3162
NB. p:450 = 3187
totient=: (- ~:)&.q:
n=: }.}.i.y
phi=: totient n
permute=:''
for_j. i.y-2 do.
 idn=.":j{n
 idp=.":j{phi
 if. (#idn)=#idp do. 
	permute=:permute, */((/:idn){idn)=(/:idp){idp
 else. 
	permute=:permute, 0
 end.
end.
({./:permute#n%phi){permute#n
)

Prob71 =: 3 : 0
denom=. 3+i.y-2
numer=. <.denom*3%7
diffs=. (3%7x)-numer%denom
proper=. -.0 E. diffs
mindiff=. proper#diffs
index=.((<./mindiff) E. mindiff)
(index#proper#numer),(index#proper#denom) 
)

Prob76 =: 4 : 0
NB. run with 99 Prob76 100
if. (y=1)+(x=1) do. 
1 
else. 
ans=.0
for_j. i.>.(y+1)%x do.
 ans=.ans+ (x-1) Prob76 (y-x*j)
end.
ans
end.
)

pnv=: 3 : 0
 k=. 1+i.>.%:y*2%3
 m=. <. y-(-:k)*"1 ]_1 1+/3*k
 v=. ,1x
 for_i. i.-y do. v=. v, -/+/(_1>.m-i){v,0 end.
)
NB. <:{:pnv 100


Prob92 =: 3 : 0
NB. could be faster if make array of digsums that add go 1 or 89 and make if's compare to array?
count=.0
for_j. 1+i.y-1 do.
 num=.j
 toggle=.0
 while. toggle=0 do.
  digsum=.+/*:>". each 1<\":num
  if. digsum=1 do. toggle=.1 end.
  if. digsum=89 do.
    toggle=.1
    count=.count+1
  end.
 num=.digsum
 end.
end.
count
)

Prob97 =: 3 : 0
lastdigs=. 2
count=.1
while. count<y do.
 newdigs=.":lastdigs*2x
 lastdigs=. ". ((#newdigs)<._10){.newdigs
 count=. count+1
end.
_10{.":1+lastdigs*28433x
)

Prob99 := 3 : 0
NB. F =. 'C:\Users\wangj\Desktop\base_exp.txt'
NB. data=. 1!:1 < F
d =. toJ data
d =. cutopen d
a =.". each (<;._2)"1 (>d),"1 ','
base=. >0{"1 a
exponents=. >1{"1 a
vals=.exponents*100000^.base
((>./vals) E. vals)#(1+i.1000)
)

Prob109 =: 3 : 0
a=:1+i.20
b=:25,50,a,(2*a),3*a
c=:50,2*a
temp=.(62 62 $i.62)
tempid=.(temp+|:temp)<:2*i.62
x1=:62 62$b
x2=:|:x1
first2=:x1+x2
count=: +/ (y>c)
for_j. c do.
 count=:count + (+/y>b+j)
end.
for_j. c do.
 count=:count + (+/+/tempid*y>first2+j)
end.
count
)

Prob225 =: 3 : 0
oddnum=.3
count=.0
mods=:''
while. (count < y) do.
 a=.1
 b=.1
 c=.1 
 toggle=.0
 while. toggle=0 do.
  new=. oddnum|a+b+c
  a=.b
  b=.c
  c=.new
  if. c=0 do. toggle=.1 end.
  if. (*/(a,b,c) e. 1)=1 do. 
	count=.count+1 
	toggle=.1
  end.
  end. 
 oddnum=.oddnum+2
end.
oddnum-2
)

Prob301 =: 3 : 0
count=.0
for_n. 1+i.2^30 do.
 if. (+/ 2| +/ >|. each (#:n);(#:n*2);#:n*3) = 0 do.
  count=.count+1
 end.
end.
count
)

Prob369 =: 3 : 0
f4=: 13*12*11*10x
f5=: 13*12*11*10*(3*4)+(48-3*4)%1!2
f6=: 13*12*11*10*(12*11)+((2!48)-12*11)%1!3x
f7=: 13*12*11*10*(12*11*10)+((3!48)-12*11*10)%1!4x
f8=: 13*12*11*10*(12*11*10*9)+((4!48)-12*11*10*9)%1!5x
f9=: 13*12*11*10*(12*11*10*9*8)+((5!48)-12*11*10*9*8)%1!6x
f10=: 13*12*11*10*(12*11*10*9*8*7)+((6!48)-12*11*10*9*8*7)%1!7x
f11=: 13*12*11*10*(12*11*10*9*8*7*6)+((7!48)-12*11*10*9*8*7*6)%1!8x
f12=: 13*12*11*10*(12*11*10*9*8*7*6*5)+((8!48)-12*11*10*9*8*7*6*5)%1!9x
f13=: 13*12*11*10*(12*11*10*9*8*7*6*5*4)+((9!48)-12*11*10*9*8*7*6*5*4)%1!10x
f4+f5+f6+f7+f8+f9+f10+f11+f12+f13+0x
)
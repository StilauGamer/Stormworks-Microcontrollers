-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2054 (2388) chars
bs="Start"
br="Pumps"
bq="Clutch"
bp=240
bo=true
bn=false
bm=input
bl=screen
bk=bl.drawRect
bj=bl.setColor
bi=output.setBool
bh=bl.drawRectF
bg=bm.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=bg(r+1)q.t=bg(r+2)q.u=bg(r+3)q.v=bg(r+4)q.w=q.x or bn
q.x=bm.getBool(r+1)end;
y=function(q,e,f,z,A)local B={C=q,e=e,f=f,z=z,A=A,D=function(q)return q.C.x
and not q.C.w
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;
E=function(q)return q.C.x
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;}return B
end;}F.G:H(1,"9x5",bo,bn)I=bh
J=property.getText
K="00019209B400AAAA793CA54A555690015244449415500BA0004903800009254956D4592EC54EC51C53A4F31C5354E52455545594104110490A201C7008A04504FFFE57DAD75C7246D6DCF34EF3487256B7DAE92E64D4975A924EBEDAF6DAF6DED74856B2D75A711CE924B6D4B6A4B6FAB55AB524E54ED24C911264965400000E"
L={}M=0
for N in K:gmatch("....")do L[M+1]=tonumber(N,16)M=M+1 end
function O(e,f,n,P,Q,R)P=P or 1
Q=Q or 1
if Q>2 then n=n:reverse()end
n=n:upper()for S in n:gmatch(".")do
T=S:byte()-31 if 0<T and T<=M then
for U=1,15 do
if Q>2 then V=2^U else V=2^(16-U)end
if L[T]&V==V then
W,X=((U-1)%3)*P,((U-1)//3)*P
if Q%2==1 then I(e+W,f+X,P,P)else I(e+5-X,f+W,P,P)end
end
end
if L[T]&1==1 and not R then
U=2*P
else
U=4*P
end
if Q%2==1 then e=e+U else f=f+U end
end
end
end
function onDraw()O(10,10,"Hello, World!",5)end
Y=b.o:y(1,1,29,8)Z=b.o:y(1,11,29,8)bb=b.o:y(1,21,29,8)function onTick()b.o:p()if Y:E()then
bi(1,bo)bc=bo
else
bi(1,bn)bc=bn
end
if Z:D()then
bd=not bd
end
if bd then
bi(2,bo)bd=bo
else
bi(2,bn)bd=bn
end
if bb:D()then
be=not be
end
if be then
bi(3,bo)be=bo
else
bi(3,bn)be=bn
end
end
function onDraw()bj(bp,bp,bp)O(6,3,bs)O(6,13,br)O(4,23,bq)if bc then
bh(1,1,29,8)bj(0,0,0)O(6,3,bs)bj(bp,bp,bp)else
bk(1,1,29,8)end
if bd then
bh(1,11,29,8)bj(0,0,0)O(6,13,br)bj(bp,bp,bp)else
bk(1,11,29,8)end
if be then
bh(1,21,29,8)bj(0,0,0)O(4,23,bq)bj(bp,bp,bp)else
bk(1,21,29,8)end
bf()end
function bf()bk(1,1,29,8)bk(1,11,29,8)bk(1,21,29,8)end

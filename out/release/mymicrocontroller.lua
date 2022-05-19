-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2062 (2378) chars
bt="Pumps"
bs="Clutch"
br="Start"
bq=240
bp=true
bo=false
bn=input
bm=screen
bl=bm.drawRect
bk=bm.setColor
bj=output.setBool
bi=bm.drawRectF
bh=bn.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=bh(r+1)q.t=bh(r+2)q.u=bh(r+3)q.v=bh(r+4)q.w=q.x or bo
q.x=bn.getBool(r+1)end;
y=function(q,e,f,z,A,B)local C={D=q,e=e,f=f,z=z,A=A,B=B,E=function(q)return q.D.x
and not q.D.w
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;
F=function(q)return q.D.x
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;}return C
end;}G.H:I(1,"9x5",bp,bo)J=bi
K=property.getText
L="00019209B400AAAA793CA54A555690015244449415500BA0004903800009254956D4592EC54EC51C53A4F31C5354E52455545594104110490A201C7008A04504FFFE57DAD75C7246D6DCF34EF3487256B7DAE92E64D4975A924EBEDAF6DAF6DED74856B2D75A711CE924B6D4B6A4B6FAB55AB524E54ED24C911264965400000E"
M={}N=0
for O in L:gmatch("....")do M[N+1]=tonumber(O,16)N=N+1 end
function P(e,f,n,Q,R,S)Q=Q or 1
R=R or 1
if R>2 then n=n:reverse()end
n=n:upper()for T in n:gmatch(".")do
U=T:byte()-31 if 0<U and U<=N then
for V=1,15 do
if R>2 then W=2^V else W=2^(16-V)end
if M[U]&W==W then
X,Y=((V-1)%3)*Q,((V-1)//3)*Q
if R%2==1 then J(e+X,f+Y,Q,Q)else J(e+5-Y,f+X,Q,Q)end
end
end
if M[U]&1==1 and not S then
V=2*Q
else
V=4*Q
end
if R%2==1 then e=e+V else f=f+V end
end
end
end
function onDraw()P(10,10,"Hello, World!",5)end
Z=b.o:y(1,1,29,8)bb=b.o:y(1,11,29,8)bc=b.o:y(1,21,29,8)function onTick()b.o:p()if Z:F()then
bj(1,bp)bd=bp
else
bj(1,bo)bd=bo
end
if bb:E()then
be=not be
end
if be then
bj(2,bp)be=bp
else
bj(2,bo)be=bo
end
if bc:E()then
bf=not bf
end
if bf then
bj(3,bp)bf=bp
else
bj(3,bo)bf=bo
end
end
function onDraw()bk(bq,bq,bq)P(6,3,br)P(6,13,bt)P(4,23,bs)if bd then
bi(1,1,29,8)bk(0,0,0)P(6,3,br)bk(bq,bq,bq)else
bl(1,1,29,8)end
if be then
bi(1,11,29,8)bk(0,0,0)P(6,13,bt)bk(bq,bq,bq)else
bl(1,11,29,8)end
if bf then
bi(1,21,29,8)bk(0,0,0)P(4,23,bs)bk(bq,bq,bq)else
bl(1,21,29,8)end
bg()end
function bg()bl(1,1,29,8)bl(1,11,29,8)bl(1,21,29,8)end

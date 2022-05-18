-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1998 (2314) chars
bu="0x"
bt="636363"
bs="hold"
br="000000"
bq=tonumber
bp=true
bo=false
bn=input
bm=screen
bl=output.setBool
bk=bm.drawRect
bj=bm.drawTextBox
bi=bm.setColor
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
end;}function G(H,B,I,J,K,L)if H:E()then
H.M=not H.M
end
if H.M then
bi(N(K))bm.drawRectF(H.e,H.f,H.z,H.A)bi(N(I))bj(H.e+1,H.f,H.z+1,H.A+1,B,0,0)bi(N(J))bk(H.e,H.f,H.z,H.A)bi(N(L))else
bi(N(L))bk(H.e,H.f,H.z,H.A)bj(H.e+1,H.f,H.z+1,H.A+1,B,0,0)end
end
function O(H,P,type)if type==bs then
if H:F()then
H.M=bp
bl(P,H.M)return H.M
else
H.M=bo
bl(P,H.M)return H.M
end
elseif type=="click" then
if H:E()then
bl(P,bp)return bp
else
bl(P,bo)return bo
end
else
if H:E()then
H.Q=not H.Q
bl(P,H.Q)return bp
end
end
end
function N(R)R=R:gsub("#","")return bq(bu..R:sub(1,2)),bq(bu..R:sub(3,4)),bq(bu..R:sub(5,6))end
S={b.o:y(1,1,6,6),b.o:y(1,8,6,6),b.o:y(86,54,8,8),b.o:y(77,54,8,8),b.o:y(68,54,8,8),b.o:y(77,45,8,8),b.o:y(1,15,6,6)}T=1
U=.03
V=7.5
W=0
X=0
Y=0
Z=bo
function onTick()b.o:p()bb=bh(1)bc=bh(2)Y=Y+1
if Y==5 then
W=bb
X=bc
end
if O(S[1],1,bs)then
T=T*(1-U)end
if O(S[2],2,bs)then
T=T*(1+U)end
if O(S[3],3,bs)then
W=W+V
end
if O(S[4],4,bs)then
X=X-V
end
if O(S[5],5,bs)then
W=W-V
end
if O(S[6],6,bs)then
X=X+V
end
if O(S[7],7)then
Z=not Z
end
if Z then
W=bb
X=bc
end
end
function onDraw()bd=bm.getWidth()be=bm.getHeight()bm.drawMap(W,X,T)bi(255,0,0)bf,bg=map.mapToScreen(W,X,T,96,56,bb,bc)bm.drawCircleF(bf,bg,1)G(S[1],"+",br,bt,bt,br)G(S[2],"-",br,bt,bt,br)G(S[3],">",br,bt,bt,br)G(S[4],"_",br,bt,bt,br)G(S[5],"<",br,bt,bt,br)G(S[6],"^",br,bt,bt,br)G(S[7],"!",br,bt,bt,br)end

-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2016 (2350) chars
bs="FFFFFF"
br="0x"
bq="000000"
bp="hold"
bo=tonumber
bn=true
bm=false
bl=input
bk=screen
bj=output.setBool
bi=bk.drawRect
bh=bk.drawTextBox
bg=bk.setColor
bf=bl.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=bf(r+1)q.t=bf(r+2)q.u=bf(r+3)q.v=bf(r+4)q.w=q.x or bm
q.x=bl.getBool(r+1)end;
y=function(q,e,f,z,A)local B={C=q,e=e,f=f,z=z,A=A,D=function(q)return q.C.x
and not q.C.w
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;
E=function(q)return q.C.x
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;}return B
end;}function F(G,H,I,J,K,L)if G:D()then
G.M=not G.M
end
if G.M then
bg(N(K))bk.drawRectF(G.e,G.f,G.z,G.A)bg(N(I))bh(G.e,G.f,G.z+1,G.A+1,H,0,0)bg(N(J))bi(G.e,G.f,G.z,G.A)bg(N(L))else
bg(N(L))bi(G.e,G.f,G.z,G.A)bh(G.e,G.f,G.z+1,G.A+1,H,0,0)end
end
function O(G,P,type)if type==bp then
if G:E()then
G.M=bn
bj(P,G.M)return G.M
else
G.M=bm
bj(P,G.M)return G.M
end
elseif type=="click" then
if G:D()then
bj(P,bn)return bn
else
bj(P,bm)return bm
end
else
if G:D()then
G.Q=not G.Q
bj(P,G.Q)return G.Q
end
end
end
function N(R)R=R:gsub("#","")return bo(br..R:sub(1,2)),bo(br..R:sub(3,4)),bo(br..R:sub(5,6))end
S={b.o:y(1,1,6,6),b.o:y(1,7,6,6),b.o:y(56,56,6,6),b.o:y(48,56,6,6),b.o:y(40,56,6,6),b.o:y(48,48,6,6),b.o:y(1,13,6,6)}T=1
U=0.03
V=7.5
W=0
X=0
Y=0
function onTick()b.o:p()Z=bf(1)bb=bf(2)Y=Y+1
if Y==5 then
W=Z
X=bb
end
if O(S[1],1,bp)then
T=T*(1-U)end
if O(S[2],2,bp)then
T=T*(1+U)end
if O(S[3],3,bp)then
W=W+V
end
if O(S[4],4,bp)then
X=X-V
end
if O(S[5],5,bp)then
W=W-V
end
if O(S[6],6,bp)then
X=X+V
end
if O(S[7],7)then
bc=not bc
end
if bc then
W=Z
X=bb
end
end
function onDraw()bd=bk.getWidth()be=bk.getHeight()bk.drawMap(W,X,T)bg(255,0,0)if bd/32==2 and be/32==2 then
bi(31,31,2,2)elseif bd/32==3 and be/32==3 then
bi(47,47,3,3)end
F(S[1],"+",bq,bs,bs,bs)F(S[2],"-",bq,bs,bs,bs)F(S[3],">",bq,bs,bs,bs)F(S[4],"_",bq,bs,bs,bs)F(S[5],"<",bq,bs,bs,bs)F(S[6],"^",bq,bs,bs,bs)F(S[7],"!",bq,bs,bs,bs)end

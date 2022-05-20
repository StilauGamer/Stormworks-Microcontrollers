-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1629 (1972) chars
bB="0x"
bA="FFFFFF"
bz="!"
by="000000"
bx=tonumber
bw=true
bv=false
bu=input
bt=output
bs=screen
br=bs.drawLine
bq=bt.setBool
bp=bs.drawRect
bo=bs.drawTextBox
bn=bs.drawRectF
bm=bs.setColor
bl=bu.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=bl(r+1)q.t=bl(r+2)q.u=bl(r+3)q.v=bl(r+4)q.w=q.x or bv
q.x=bu.getBool(r+1)end;
y=function(q,e,f,z,A,B)local C={D=q,e=e,f=f,z=z,A=A,B=B,E=function(q)return q.D.x
and not q.D.w
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;}return C
end;}function F(G,B,H,I,J,K)if G:E()then
G.L=not G.L
end
if G.L then
bm(M(J))bn(G.e,G.f,G.z,G.A)bm(M(H))bo(G.e+1,G.f,G.z+1,G.A+1,B,0,0)bm(M(I))bp(G.e,G.f,G.z,G.A)bm(M(K))else
bm(M(K))bp(G.e,G.f,G.z,G.A)bo(G.e+1,G.f,G.z+1,G.A+1,B,0,0)end
end
function N(G,O)if G:E()then
bq(O,bw)return bw
else
bq(O,bv)return bv
end
end
function P(G,O)if G:E()then
G.Q=not G.Q
bq(O,G.Q)return G.Q
end
end
function M(R)R=R:gsub("#","")return bx(bB..R:sub(1,2)),bx(bB..R:sub(3,4)),bx(bB..R:sub(5,6))end
S=bv
T=1
U=2
V=0
function onTick()b.o:p()W=bl(1)X=bl(2)Y=bl(3)Z=bl(4)bb=bl(5)bc=bl(6)V=V+1
if V<5 then
bd={b.o:y(W-13,2,10,10,bz),b.o:y(1,1,10,X-1,bz)}end
if P(bd[1],1)then
S=not S
end
if N(bd[2],2)then
if be(Y,Z,1,1,9,X-3)then
U=Z
T=Z/X*100
bt.setNumber(5,T)end
end
if S then
bf=bb
bg=bc
end
end
function be(bh,bi,g,h,bj,bk)return(bh>g)and(bi>h)and(bh<g+bj)and(bi<h+bk)end
function onDraw()X=bs.getHeight()W=bs.getWidth()bs.drawMap(bf,bg,T)bm(255,255,0)bp(0,0,W-1,X-1)br(10,0,10,X-1)bm(63,63,63)bn(1,1,9,X-2)bm(0,0,0)br(2,U,9,U)F(bd[1],bd[1].B,by,bA,bA,by)end

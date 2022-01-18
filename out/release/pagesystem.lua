-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1265 (1608) chars
bi="0x"
bh="FFFFFF"
bg="0000FF"
bf=tonumber
be=false
bd=input
bc=screen
bb=output.setBool
Z=bc.drawRect
Y=bc.drawTextBox
X=bc.setColor
W=bd.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=W(r+1)q.t=W(r+2)q.u=W(r+3)q.v=W(r+4)q.w=q.x or be
q.x=bd.getBool(r+1)end;
y=function(q,e,f,z,A)local B={C=q,e=e,f=f,z=z,A=A,D=function(q)return q.C.x
and not q.C.w
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;
E=function(q)return q.C.x
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;}return B
end;}function F(G,H,I,J,K,L)if G:D()then
G.M=not G.M
end
if G.M then
X(N(K))bc.drawRectF(G.e,G.f,G.z,G.A)X(N(I))Y(G.e,G.f,G.z+1,G.A+1,H,0,0)X(N(J))Z(G.e,G.f,G.z,G.A)X(N(L))else
X(N(L))Z(G.e,G.f,G.z,G.A)Y(G.e,G.f,G.z+1,G.A+1,H,0,0)end
end
function O(G,P,type,Q)if type=="hold" then
if G:E()then
G.M=true
bb(P,G.M)else
G.M=be
bb(P,G.M)end
else
if G:D()then
G.R=not G.R
bb(P,G.R)end
end
end
function N(S)S=S:gsub("#","")return bf(bi..S:sub(1,2)),bf(bi..S:sub(3,4)),bf(bi..S:sub(5,6))end
T={b.o:y(0,0,40,20),b.o:y(42,0,40,20)}function onTick()b.o:p()O(T[1],1)O(T[2],2)end
function onDraw()F(T[1],"Page 1",bg,bh,bh,bh)F(T[2],"Page 2",bg,bh,bh,bh)U=bc.getHeight()V=bc.getWidth()end

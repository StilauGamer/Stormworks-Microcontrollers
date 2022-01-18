-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1395 (1729) chars
bl="0x"
bk="0000FF"
bj="FFFFFF"
bi=tonumber
bh=true
bg=false
bf=input
be=screen
bd=output.setBool
bc=be.drawRect
bb=be.drawTextBox
Z=be.setColor
Y=bf.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=Y(r+1)q.t=Y(r+2)q.u=Y(r+3)q.v=Y(r+4)q.w=q.x or bg
q.x=bf.getBool(r+1)end;
y=function(q,e,f,z,A)local B={C=q,e=e,f=f,z=z,A=A,D=function(q)return q.C.x
and not q.C.w
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;
E=function(q)return q.C.x
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;}return B
end;}function F(G,H,I,J,K,L)if G:D()then
G.M=not G.M
end
if G.M then
Z(N(K))be.drawRectF(G.e,G.f,G.z,G.A)Z(N(I))bb(G.e,G.f,G.z+1,G.A+1,H,0,0)Z(N(J))bc(G.e,G.f,G.z,G.A)Z(N(L))else
Z(N(L))bc(G.e,G.f,G.z,G.A)bb(G.e,G.f,G.z+1,G.A+1,H,0,0)end
end
function O(G,P,type,Q)if type=="hold" then
if G:E()then
G.M=bh
bd(P,G.M)return G.M
else
G.M=bg
bd(P,G.M)return G.M
end
else
if G:D()then
G.R=not G.R
bd(P,G.R)return G.R
end
end
end
function N(S)S=S:gsub("#","")return bi(bl..S:sub(1,2)),bi(bl..S:sub(3,4)),bi(bl..S:sub(5,6))end
T={b.o:y(0,0,40,20),b.o:y(42,0,40,20)}function onTick()b.o:p()if O(T[1],1)then
U=bh
V=bg
else
U=bg
V=bh
end
if V then
bd(1)end
end
function onDraw()F(T[1],"Page 1",bk,bj,bj,bj)F(T[2],"Page 2",bk,bj,bj,bj)W=be.getHeight()X=be.getWidth()if U then
bb(0,0,X,W,"Test 1",0,0)end
end

-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1590 (1924) chars
bi="0x"
bh=tonumber
bg=false
bf=input
be=screen
bd=property.getText
bc=output.setBool
bb=be.drawRect
Z=be.drawTextBox
Y=be.setColor
X=bf.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=X(r+1)q.t=X(r+2)q.u=X(r+3)q.v=X(r+4)q.w=q.x or bg
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
Y(N(K))be.drawRectF(G.e,G.f,G.z,G.A)Y(N(I))Z(G.e,G.f,G.z+1,G.A+1,H,0,0)Y(N(J))bb(G.e,G.f,G.z,G.A)Y(N(L))else
Y(N(L))bb(G.e,G.f,G.z,G.A)Z(G.e,G.f,G.z+1,G.A+1,H,0,0)end
end
function O(G,P,type,Q)if type=="hold" then
if G:E()then
G.M=true
bc(P,G.M)return G.M
else
G.M=bg
bc(P,G.M)return G.M
end
else
if G:D()then
G.R=not G.R
bc(P,G.R)return G.R
end
end
end
function N(S)S=S:gsub("#","")return bh(bi..S:sub(1,2)),bh(bi..S:sub(3,4)),bh(bi..S:sub(5,6))end
T={b.o:y(1,1,45,14),b.o:y(48,1,46,14),b.o:y(1,17,45,14),b.o:y(48,17,46,14),b.o:y(1,33,45,14),b.o:y(48,33,46,14),b.o:y(1,49,45,14),b.o:y(48,49,46,14),b.o:y(1,65,45,14),b.o:y(48,65,46,14),b.o:y(1,81,45,14),b.o:y(48,81,46,14)}function onTick()b.o:p()U={}for V=1,12 do
table.insert(U,bd("Box "..V))O(T[V],V)end
I=bd("Text Color (Hex)")J=bd("Outline Color (Hex)")W=bd("Background Color (Hex)")L=bd("Default Button Color (Hex)")end
function onDraw()for V=1,12 do
F(T[V],U[V],I,J,W,L)end
end

-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1675 (2009) chars
bi="0x"
bh=tonumber
bg=true
bf=false
be=input
bd=screen
bc=property.getText
bb=output.setBool
Z=bd.drawRect
Y=bd.drawTextBox
X=bd.setColor
W=be.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=W(r+1)q.t=W(r+2)q.u=W(r+3)q.v=W(r+4)q.w=q.x or bf
q.x=be.getBool(r+1)end;
y=function(q,e,f,z,A)local B={C=q,e=e,f=f,z=z,A=A,D=function(q)return q.C.x
and not q.C.w
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;
E=function(q)return q.C.x
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;}return B
end;}function F(G,H,I,J,K,L)if G:D()then
G.M=not G.M
end
if G.M then
X(N(K))bd.drawRectF(G.e,G.f,G.z,G.A)X(N(I))Y(G.e,G.f,G.z+1,G.A+1,H,0,0)X(N(J))Z(G.e,G.f,G.z,G.A)X(N(L))else
X(N(L))Z(G.e,G.f,G.z,G.A)Y(G.e,G.f,G.z+1,G.A+1,H,0,0)end
end
function O(G,P,type)if type=="hold" then
if G:E()then
G.M=bg
bb(P,G.M)return G.M
else
G.M=bf
bb(P,G.M)return G.M
end
elseif type=="click" then
if G:D()then
bb(P,bg)return bg
else
bb(P,bf)return bf
end
else
if G:D()then
G.Q=not G.Q
bb(P,G.Q)return G.Q
end
end
end
function N(R)R=R:gsub("#","")return bh(bi..R:sub(1,2)),bh(bi..R:sub(3,4)),bh(bi..R:sub(5,6))end
S={b.o:y(1,1,45,14),b.o:y(48,1,46,14),b.o:y(1,17,45,14),b.o:y(48,17,46,14),b.o:y(1,33,45,14),b.o:y(48,33,46,14),b.o:y(1,49,45,14),b.o:y(48,49,46,14),b.o:y(1,65,45,14),b.o:y(48,65,46,14),b.o:y(1,81,45,14),b.o:y(48,81,46,14)}function onTick()b.o:p()T={}for U=1,12 do
table.insert(T,bc("Box "..U))O(S[U],U)end
I=bc("Text Color (Hex)")J=bc("Outline Color (Hex)")V=bc("Background Color (Hex)")L=bc("Default Button Color (Hex)")end
function onDraw()for U=1,12 do
F(S[U],T[U],I,J,V,L)end
end

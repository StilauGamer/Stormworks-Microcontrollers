-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1511 (1827) chars
bh="0x"
bg=tonumber
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
y=function(q,e,f,z,A,B)local C={D=q,e=e,f=f,z=z,A=A,B=B,E=function(q)return q.D.x
and not q.D.w
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;
F=function(q)return q.D.x
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;}return C
end;}function G(H,B,I,J,K,L)if H:E()then
H.M=not H.M
end
if H.M then
X(N(K))bd.drawRectF(H.e,H.f,H.z,H.A)X(N(I))Y(H.e+1,H.f,H.z+1,H.A+1,B,0,0)X(N(J))Z(H.e,H.f,H.z,H.A)X(N(L))else
X(N(L))Z(H.e,H.f,H.z,H.A)Y(H.e+1,H.f,H.z+1,H.A+1,B,0,0)end
end
function O(H,P)if H:F()then
H.M=true
bb(P,H.M)return H.M
else
H.M=bf
bb(P,H.M)return H.M
end
end
function N(Q)Q=Q:gsub("#","")return bg(bh..Q:sub(1,2)),bg(bh..Q:sub(3,4)),bg(bh..Q:sub(5,6))end
R={b.o:y(1,1,45,14),b.o:y(48,1,46,14),b.o:y(1,17,45,14),b.o:y(48,17,46,14),b.o:y(1,33,45,14),b.o:y(48,33,46,14),b.o:y(1,49,45,14),b.o:y(48,49,46,14),b.o:y(1,65,45,14),b.o:y(48,65,46,14),b.o:y(1,81,45,14),b.o:y(48,81,46,14)}function onTick()b.o:p()S={}for T=1,12 do
table.insert(S,bc("Box "..T))U(R[T],T)end
I=bc("Text Color (Hex)")J=bc("Outline Color (Hex)")V=bc("Background Color (Hex)")L=bc("Default Button Color (Hex)")end
function onDraw()for T=1,12 do
G(R[T],S[T],I,J,V,L)end
end

-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1315 (1631) chars
bk="0x"
bj="FFFFFF"
bi="0000FF"
bh=tonumber
bg=true
bf=false
be=input
bd=screen
bc=output.setBool
bb=bd.drawRect
Z=bd.drawTextBox
Y=bd.setColor
X=be.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=X(r+1)q.t=X(r+2)q.u=X(r+3)q.v=X(r+4)q.w=q.x or bf
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
Y(N(K))bd.drawRectF(H.e,H.f,H.z,H.A)Y(N(I))Z(H.e+1,H.f,H.z+1,H.A+1,B,0,0)Y(N(J))bb(H.e,H.f,H.z,H.A)Y(N(L))else
Y(N(L))bb(H.e,H.f,H.z,H.A)Z(H.e+1,H.f,H.z+1,H.A+1,B,0,0)end
end
function O(H,P)if H:F()then
H.M=bg
bc(P,H.M)return H.M
else
H.M=bf
bc(P,H.M)return H.M
end
end
function N(Q)Q=Q:gsub("#","")return bh(bk..Q:sub(1,2)),bh(bk..Q:sub(3,4)),bh(bk..Q:sub(5,6))end
R={b.o:y(0,0,40,20),b.o:y(42,0,40,20)}function onTick()b.o:p()if S(R[1],1)then
T=bg
U=bf
else
T=bf
U=bg
end
if U then
bc(1)end
end
function onDraw()G(R[1],"Page 1",bi,bj,bj,bj)G(R[2],"Page 2",bi,bj,bj,bj)V=bd.getHeight()W=bd.getWidth()if T then
Z(0,0,W,V,"Test 1",0,0)end
end

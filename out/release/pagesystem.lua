-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1473 (1807) chars
bk="FFFFFF"
bj="0x"
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
y=function(q,e,f,z,A)local B={C=q,e=e,f=f,z=z,A=A,D=function(q)return q.C.x
and not q.C.w
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;
E=function(q)return q.C.x
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;}return B
end;}function F(G,H,I,J,K,L)if G:D()then
G.M=not G.M
end
if G.M then
Y(N(K))bd.drawRectF(G.e,G.f,G.z,G.A)Y(N(I))Z(G.e,G.f,G.z+1,G.A+1,H,0,0)Y(N(J))bb(G.e,G.f,G.z,G.A)Y(N(L))else
Y(N(L))bb(G.e,G.f,G.z,G.A)Z(G.e,G.f,G.z+1,G.A+1,H,0,0)end
end
function O(G,P,type)if type=="hold" then
if G:E()then
G.M=bg
bc(P,G.M)return G.M
else
G.M=bf
bc(P,G.M)return G.M
end
elseif type=="click" then
if G:D()then
bc(P,bg)return bg
else
bc(P,bf)return bf
end
else
if G:D()then
G.Q=not G.Q
bc(P,G.Q)return G.Q
end
end
end
function N(R)R=R:gsub("#","")return bh(bj..R:sub(1,2)),bh(bj..R:sub(3,4)),bh(bj..R:sub(5,6))end
S={b.o:y(0,0,40,20),b.o:y(42,0,40,20)}function onTick()b.o:p()if O(S[1],1)then
T=bg
U=bf
else
T=bf
U=bg
end
if U then
bc(1)end
end
function onDraw()F(S[1],"Page 1",bi,bk,bk,bk)F(S[2],"Page 2",bi,bk,bk,bk)V=bd.getHeight()W=bd.getWidth()if T then
Z(0,0,W,V,"Test 1",0,0)end
end

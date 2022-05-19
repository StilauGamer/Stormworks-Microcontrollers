-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1222 (1538) chars
bj="000000"
bi="0"
bh="FFFFFF"
bg="0x"
bf=tonumber
be=false
bd=input
bc=screen
bb=bc.drawRect
Z=bc.drawTextBox
Y=bc.drawRectF
X=bc.setColor
W=bd.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=W(r+1)q.t=W(r+2)q.u=W(r+3)q.v=W(r+4)q.w=q.x or be
q.x=bd.getBool(r+1)end;
y=function(q,e,f,z,A,B)local C={D=q,e=e,f=f,z=z,A=A,B=B,E=function(q)return q.D.x
and not q.D.w
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;}return C
end;}function F(G,B,H,I,J,K)if G:E()then
G.L=not G.L
end
if G.L then
X(M(J))Y(G.e,G.f,G.z,G.A)X(M(H))Z(G.e+1,G.f,G.z+1,G.A+1,B,0,0)X(M(I))bb(G.e,G.f,G.z,G.A)X(M(K))else
X(M(K))bb(G.e,G.f,G.z,G.A)Z(G.e+1,G.f,G.z+1,G.A+1,B,0,0)end
end
function N(G,O)if G:E()then
G.P=not G.P
output.setBool(O,G.P)return G.P
end
end
function M(Q)Q=Q:gsub("#","")return bf(bg..Q:sub(1,2)),bf(bg..Q:sub(3,4)),bf(bg..Q:sub(5,6))end
R=be
S=0
function onTick()b.o:p()T=W(1)U=W(2)S=S+1
V={b.o:y(T-13,2,10,10,"!")}if N(V[1],1)then
R=not R
end
end
function onDraw()U=bc.getHeight()T=bc.getWidth()bc.drawMap(bi,bi,1)X(255,255,0)bb(0,0,T-1,U-1)bc.drawLine(10,0,10,U-1)X(63,63,63)Y(1,1,9,U-2)F(V[1],V[1].B,bj,bh,bh,bj)end

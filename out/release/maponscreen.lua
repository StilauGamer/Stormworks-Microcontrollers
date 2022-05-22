-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1827 (2143) chars
by="hold"
bx="000000"
bw="636363"
bv="0x"
bu=105
bt=255
bs=tonumber
br=false
bq=input
bp=screen
bo=output.setBool
bn=bp.drawRect
bm=bp.drawTextBox
bl=bp.drawRectF
bk=bp.setColor
bj=bq.getBool
bi=bq.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=bi(r+1)q.t=bi(r+2)q.u=bi(r+3)q.v=bi(r+4)q.w=q.x or br
q.x=bj(r+1)end;
y=function(q,e,f,z,A,B)local C={D=q,e=e,f=f,z=z,A=A,B=B,E=function(q)return q.D.x
and not q.D.w
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;
F=function(q)return q.D.x
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;}return C
end;}function G(H,B,I,J,K,L)if H:E()then
H.M=not H.M
end
if H.M then
bk(N(K))bl(H.e,H.f,H.z,H.A)bk(N(I))bm(H.e+1,H.f,H.z+1,H.A+1,B,0,0)bk(N(J))bn(H.e,H.f,H.z,H.A)bk(N(L))else
bk(N(L))bn(H.e,H.f,H.z,H.A)bm(H.e+1,H.f,H.z+1,H.A+1,B,0,0)end
end
function O(H,P)if H:F()then
H.M=true
bo(P,H.M)return H.M
else
H.M=br
bo(P,H.M)return H.M
end
end
function N(Q)Q=Q:gsub("#","")return bs(bv..Q:sub(1,2)),bs(bv..Q:sub(3,4)),bs(bv..Q:sub(5,6))end
R=1
S=.03
T=7.5
U=0
V=0
W=0
X=br
function onTick()b.o:p()Y=bi(1)Z=bi(2)bb={b.o:y(12,2,6,6),b.o:y(Y-10,Z-10,8,8),b.o:y(Y-19,Z-10,8,8),b.o:y(Y-28,Z-10,8,8),b.o:y(Y-19,Z-19,8,8)}bc=bi(1)bd=bi(2)be=bj(1)W=W+1
if W==5 then
U=bc
V=bd
end
if bf(bb[1],1)then
X=not X
end
if bf(bb[2],2,by)then
U=U+T
end
if bf(bb[3],3,by)then
V=V-T
end
if bf(bb[4],4,by)then
U=U-T
end
if bf(bb[5],5,by)then
V=V+T
end
if X then
U=bc
V=bd
end
end
function onDraw()Y=bp.getWidth()Z=bp.getHeight()bp.drawMap(U,V,R)bk(bt,0,0)bg,bh=map.mapToScreen(U,V,R,Y,Z,bc,bd)bp.drawCircleF(bg,bh,1)bk(bt,bt,0)bn(0,0,Y-1,Z-1)bn(0,0,10,Z-1)bk(bu,bu,bu)bl(1,1,9,Z-2)G(bb[1],"!",bx,bw,bw,bx)G(bb[2],">",bx,bw,bw,bx)G(bb[3],"_",bx,bw,bw,bx)G(bb[4],"<",bx,bw,bw,bx)G(bb[5],"^",bx,bw,bw,bx)end

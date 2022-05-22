-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2262 (2578) chars
cg="000000"
cf="0x"
ce="!"
cd="FFFFFF"
cc=255
cb=tonumber
ca=true
bZ=false
bY=input
bX=math
bW=screen
bV=bW.drawTriangleF
bU=bW.drawLine
bT=bX.min
bS=bX.pi
bR=bX.cos
bQ=bX.sin
bP=output.setBool
bO=bW.drawRect
bN=bW.drawTextBox
bM=bW.drawRectF
bL=bW.setColor
bK=bY.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=bK(r+1)q.t=bK(r+2)q.u=bK(r+3)q.v=bK(r+4)q.w=q.x or bZ
q.x=bY.getBool(r+1)end;
y=function(q,e,f,z,A,B)local C={D=q,e=e,f=f,z=z,A=A,B=B,E=function(q)return q.D.x
and not q.D.w
and b.c.d(q.D.u,q.D.v,q.e,q.f,q.z,q.A)end;}return C
end;}function F(G,B,H,I,J,K)if G:E()then
G.L=not G.L
end
if G.L then
bL(M(J))bM(G.e,G.f,G.z,G.A)bL(M(H))bN(G.e+1,G.f,G.z+1,G.A+1,B,0,0)bL(M(I))bO(G.e,G.f,G.z,G.A)bL(M(K))else
bL(M(K))bO(G.e,G.f,G.z,G.A)bN(G.e+1,G.f,G.z+1,G.A+1,B,0,0)end
end
function N(G,O)if G:E()then
bP(O,ca)return ca
else
bP(O,bZ)return bZ
end
end
function P(G,O)if G:E()then
G.Q=not G.Q
bP(O,G.Q)return ca
end
end
function M(R)R=R:gsub("#","")return cb(cf..R:sub(1,2)),cb(cf..R:sub(3,4)),cb(cf..R:sub(5,6))end
S=bZ
T=.2
U=.2
V=0
W=0
X=1
Y=30
Z=0
bb=bQ
bc=bR
pi=bS
bd={b.o:y(0,2,10,10,ce),b.o:y(0,0,10,0,ce)}be=0
bf=0
function onTick()b.o:p()bg=bK(1)bh=bK(2)bi=bK(3)bj=bK(4)bk=bK(5)bl=bK(6)bm=bK(7)be=be+1
if be==5 then
bn=bk
bo=bl
end
bd[1].e=bg-13
bd[2].A=bh-1
if P(bd[1],1)then
Z=be
S=not S
end
if N(bd[2],2)then
if bp(bi,bj,0,0,9,bh-1)then
X=bj
U=T
W=bj/bh*20
V=be
end
end
if S then
bn=bq(bk,bn,bT(1,(be-Z)/Y))bo=bq(bl,bo,bT(1,(be-Z)/Y))end
T=bq(W,U,bT(1,(be-V)/Y))end
function bp(br,bs,g,h,bt,bu)return(br>g)and(bs>h)and(br<g+bt)and(bs<h+bu)end
function onDraw()bh=bW.getHeight()bg=bW.getWidth()bW.drawMap(bn,bo,T)bL(63,63,63,165)bM(0,0,9,bh)bL(63,63,63,200)bU(9,0,9,bh)bL(cc,0,0)bv,bw=map.mapToScreen(bn,bo,T,bg,bh,bk,bl)bw=bh-bw
bx(bv,bw,bm,11,6,bh)bL(0,0,0)bU(1,X,8,X)F(bd[1],bd[1].B,cg,cd,cd,cg)end
function bq(by,bz,n)return bz+(by-bz)*n
end
function bx(e,f,by,bA,bB,bh)bC=by*2*bS
bD=bC+bS/2
bE=bC-bS/6
bF=bC-bS*5/6
bG={e,f}bH={e+bR(bD)*bA,f+bQ(bD)*bA}bI={e+bR(bE)*bB,f+bQ(bE)*bB}bJ={e+bR(bF)*bB,f+bQ(bF)*bB}bL(cc,0,0)bV(bG[1],bh-bG[2],bH[1],bh-bH[2],bJ[1],bh-bJ[2])bL(cc,0,0)bV(bG[1],bh-bG[2],bH[1],bh-bH[2],bI[1],bh-bI[2])end

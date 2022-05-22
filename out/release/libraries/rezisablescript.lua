-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 837 (1151) chars

b.c:d(1,"9x5",true,false)e=screen.drawRectF
f=property.getText
g="00019209B400AAAA793CA54A555690015244449415500BA0004903800009254956D4592EC54EC51C53A4F31C5354E52455545594104110490A201C7008A04504FFFE57DAD75C7246D6DCF34EF3487256B7DAE92E64D4975A924EBEDAF6DAF6DED74856B2D75A711CE924B6D4B6A4B6FAB55AB524E54ED24C911264965400000E"
h={}i=0
for j in g:gmatch("....")do h[i+1]=tonumber(j,16)i=i+1 end
function k(l,m,n,o,p,q)o=o or 1
p=p or 1
if p>2 then n=n:reverse()end
n=n:upper()for r in n:gmatch(".")do
s=r:byte()-31 if 0<s and s<=i then
for t=1,15 do
if p>2 then u=2^t else u=2^(16-t)end
if h[s]&u==u then
v,w=((t-1)%3)*o,((t-1)//3)*o
if p%2==1 then e(l+v,m+w,o,o)else e(l+5-w,m+v,o,o)end
end
end
if h[s]&1==1 and not q then
t=2*o
else
t=4*o
end
if p%2==1 then l=l+t else m=m+t end
end
end
end
function onDraw()k(10,10,"Hello, World!",5)end

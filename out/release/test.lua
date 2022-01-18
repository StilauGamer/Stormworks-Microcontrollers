-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 613 (945) chars
C="0x"
B=tonumber
A=screen
z=output.setBool
y=A.drawRect
x=A.drawTextBox
w=A.setColor
b("LifeBoatAPI")function c(d,e,f,g,h,i)if d:j()then
d.k=not d.k
end
if d.k then
w(l(h))A.drawRectF(d.m,d.n,d.o,d.p)w(l(f))x(d.m,d.n,d.o+1,d.p+1,e,0,0)w(l(g))y(d.m,d.n,d.o,d.p)w(l(i))else
w(l(i))y(d.m,d.n,d.o,d.p)x(d.m,d.n,d.o+1,d.p+1,e,0,0)end
end
function q(d,r,type,s)if type=="hold" then
if d:t()then
d.k=true
z(r,d.k)return d.k
else
d.k=false
z(r,d.k)return d.k
end
else
if d:j()then
d.u=not d.u
z(r,d.u)return d.u
end
end
end
function l(v)v=v:gsub("#","")return B(C..v:sub(1,2)),B(C..v:sub(3,4)),B(C..v:sub(5,6))end
q()c()
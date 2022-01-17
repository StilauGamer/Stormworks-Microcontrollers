-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 578 (910) chars
B="0x"
A=tonumber
z=screen
y=output.setBool
x=z.drawRect
w=z.drawTextBox
v=z.setColor
b("LifeBoatAPI")function c(d,e,f,g,h,i)if d:j()then
d.k=not d.k
end
if d.k then
v(l(h))z.drawRectF(d.m,d.n,d.o,d.p)v(l(f))w(d.m,d.n,d.o+1,d.p+1,e,0,0)v(l(g))x(d.m,d.n,d.o,d.p)v(l(i))else
v(l(i))x(d.m,d.n,d.o,d.p)w(d.m,d.n,d.o+1,d.p+1,e,0,0)end
end
function q(d,r,type)if type=="hold" then
if d:s()then
d.k=true
y(r,d.k)else
d.k=false
y(r,d.k)end
else
if d:j()then
d.t=not d.t
y(r,d.t)end
end
end
function l(u)u=u:gsub("#","")return A(B..u:sub(1,2)),A(B..u:sub(3,4)),A(B..u:sub(5,6))end
q()c()
-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 697 (1029) chars
D="0x"
C=tonumber
B=false
A=true
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
d.k=A
y(r,d.k)return d.k
else
d.k=B
y(r,d.k)return d.k
end
elseif type=="click" then
if d:j()then
y(r,A)return A
else
y(r,B)return B
end
else
if d:j()then
d.t=not d.t
y(r,d.t)return d.t
end
end
end
function l(u)u=u:gsub("#","")return C(D..u:sub(1,2)),C(D..u:sub(3,4)),C(D..u:sub(5,6))end
q()c()
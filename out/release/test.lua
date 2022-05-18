-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 683 (997) chars
C="0x"
B=tonumber
A=false
z=true
y=screen
x=output.setBool
w=y.drawRect
v=y.drawTextBox
u=y.setColor
function b(c,d,e,f,g,h)if c:i()then
c.j=not c.j
end
if c.j then
u(k(g))y.drawRectF(c.l,c.m,c.n,c.o)u(k(e))v(c.l+1,c.m,c.n+1,c.o+1,d,0,0)u(k(f))w(c.l,c.m,c.n,c.o)u(k(h))else
u(k(h))w(c.l,c.m,c.n,c.o)v(c.l+1,c.m,c.n+1,c.o+1,d,0,0)end
end
function p(c,q,type)if type=="hold" then
if c:r()then
c.j=z
x(q,c.j)return c.j
else
c.j=A
x(q,c.j)return c.j
end
elseif type=="click" then
if c:i()then
x(q,z)return z
else
x(q,A)return A
end
else
if c:i()then
c.s=not c.s
x(q,c.s)return z
end
end
end
function k(t)t=t:gsub("#","")return B(C..t:sub(1,2)),B(C..t:sub(3,4)),B(C..t:sub(5,6))end
p()b()
-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 481 (795) chars
y="0x"
x=tonumber
w=screen
v=w.drawRect
u=w.drawTextBox
t=w.setColor
function b(c,d,e,f,g,h)if c:i()then
c.j=not c.j
end
if c.j then
t(k(g))w.drawRectF(c.l,c.m,c.n,c.o)t(k(e))u(c.l+1,c.m,c.n+1,c.o+1,d,0,0)t(k(f))v(c.l,c.m,c.n,c.o)t(k(h))else
t(k(h))v(c.l,c.m,c.n,c.o)u(c.l+1,c.m,c.n+1,c.o+1,d,0,0)end
end
function p(c,q)if c:i()then
c.r=not c.r
output.setBool(q,c.r)return c.r
end
end
function k(s)s=s:gsub("#","")return x(y..s:sub(1,2)),x(y..s:sub(3,4)),x(y..s:sub(5,6))end
p()b()
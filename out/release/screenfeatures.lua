-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 433 (774) chars
p="%.0f"
o=240
n=100
m=screen
l=m.drawRectF
k=string.format
j=m.drawRect
i=m.drawTextBox
h=m.setColor
function onTick()b=input.getNumber(5)c=(b/n)end
function onDraw()d=m.getWidth()e=m.getHeight()f=d/32
g=e/32
h(o,o,o)i(0,0,d,e,"SG Systems",0,0)if f==2 and g==2 then
j(0+10,38,d-20,5)i(0,44,d,7,k(p,b),0,0)h(n,0,0)l(0+11,39,(c*43),4)elseif f==3 and g==3 then
j(0+10,53,d-20,5)i(0,59,d,7,k(p,b),0,0)h(n,0,0)l(0+11,54,(c*75),4)end
end

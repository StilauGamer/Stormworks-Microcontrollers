---@section config
require("_build._simulator_config")
require("LifeBoatAPI")



function onTick()
  loadTime = input.getNumber(1)
  loadBar = (loadTime/100)
end

function onDraw()
  w = screen.getWidth()   -- Get the screen's width
  h = screen.getHeight()  -- Get the screen's height
  w2 = w / 32             -- Deviding the width by 32 to get the size
  h2 = h / 32             -- Deviding the height by 32 to get the size
  screen.setColor(240, 240, 240)

  screen.drawTextBox(0, 0, w, h, "SG Systems", 0, 0) -- Typing Stilau Systems in the middle.

  if w2 == 1 and h2 == 1 then
    screen.drawRect(0+5, 22, w-10, 3)                                             -- Drawing the bar rectangle
    screen.drawTextBox(0, 26, w, 7, string.format("%.0f", loadTime).."%", 0, 0)    -- Typing how far it has came
    screen.setColor(100, 0, 0)                                                     -- Changing the color to red
    screen.drawRectF(0+6, 23, (loadBar*23), 2)                                    -- Drawing  in the bar
  elseif w2 == 2 and h2 == 1 then                                                  -- Checking if it is a 2x1
    screen.drawRect(0+10, 19, w-20, 5)                                             -- Drawing the bar rectangle
    screen.drawTextBox(0, 25, w, 7, string.format("%.0f", loadTime).."%", 0, 0)    -- Typing how far it has came
    screen.setColor(100, 0, 0)                                                     -- Changing the color to red
    screen.drawRectF(0+11, 20, (loadBar*43), 4)                                    -- Drawing  in the bar
  elseif w2 == 2 and h2 == 2 then                                                  -- Checking if it is a 2x2
    screen.drawRect(0+10, 38, w-20, 5)                                             -- Drawing the bar rectangle
    screen.drawTextBox(0, 44, w, 7, string.format("%.0f", loadTime).."%", 0, 0)    -- Typing how far it has came
    screen.setColor(100, 0, 0)                                                     -- Changing the color to red
    screen.drawRectF(0+11, 39, (loadBar*43), 4)                                    -- Drawing  in the bar
  elseif w2 == 3 and h2 == 2 then                                                  -- Checking if it is a 3x2
    screen.drawRect(0+10, 38, w-20, 5)                                             -- Drawing the bar rectangle
    screen.drawTextBox(0, 45, w, 7, string.format("%.0f", loadTime).."%", 0, 0)    -- Typing how far it has came
    screen.setColor(100, 0, 0)                                                     -- Changing the color to red
    screen.drawRectF(0+11, 39, (loadBar*75), 4)                                    -- Drawing in the bar
  elseif w2 == 3 and h2 == 3 then                                                  -- Checking if it is a 3x3
    screen.drawRect(0+10, 53, w-20, 5)                                             -- Drawing the bar rectangle
    screen.drawTextBox(0, 59, w, 7, string.format("%.0f", loadTime).."%", 0, 0)    -- Typing how far it has came
    screen.setColor(100, 0, 0)                                                     -- Changing the color to red
    screen.drawRectF(0+11, 54, (loadBar*75), 4)                                    -- Drawing in the bar
  end
end
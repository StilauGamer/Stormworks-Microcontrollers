---@section config
require("_build._simulator_config")
require("LifeBoatAPI")

-- Screen Size
__simulator.config:configureScreen(1, "3x3", true, false)

function onTick()

end

function onDraw()
  w = screen.getWidth()
  h = screen.getHeight()
  w2 = w / 32
  h2 = h / 32

  screen.drawTextBox(0, 0, w, h, "Stilau Systems", 0, 0)
  if w2 == 2 and h2 == 2 then
    screen.drawRect(0+10, 38, w-20, 5)
  elseif w2 == 3 and h2 == 3 then
    screen.drawRect(0+10, 38+15, w-20, 5)
  elseif w2 == 5 and h2 == 3 then
    screen.drawRect(0+10, 38+15, w-20, 5)
  end
end
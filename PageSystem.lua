---@section config
require("_build._simulator_config")
require("LifeBoatAPI")
require("ButtonFeatures")

buttons = {
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(0, 0, 40, 20),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(42, 0, 40, 20)
}

function onTick()
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_onTick()

  if toggleButtonClick(buttons[1], 1) then
    page1 = true
    page2 = false
  else
    page1 = false
    page2 = true
  end

  if page2 then
    output.setBool(1)
  end
end

function onDraw()
  toggleButtonUI(buttons[1], "Page 1", "0000FF", "FFFFFF", "FFFFFF", "FFFFFF")
  toggleButtonUI(buttons[2], "Page 2", "0000FF", "FFFFFF", "FFFFFF", "FFFFFF")

  h = screen.getHeight()
  w = screen.getWidth()

  if page1 then
    screen.drawTextBox(0, 0, w, h, "Test 1", 0, 0)
  end
end
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

  toggleButtonClick(buttons[1], 1)
  toggleButtonClick(buttons[2], 2)
end

function onDraw()
  toggleButtonUI(buttons[1], "Page 1", "0000FF", "FFFFFF", "FFFFFF", "FFFFFF")
  toggleButtonUI(buttons[2], "Page 2", "0000FF", "FFFFFF", "FFFFFF", "FFFFFF")

  h = screen.getHeight()
  w = screen.getWidth()
end
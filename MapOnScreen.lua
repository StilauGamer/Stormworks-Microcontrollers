---@section config
require("_build._simulator_config")
require("LifeBoatAPI")
require("ButtonFeatures")

buttons = {
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 1, 6, 6),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 7, 6, 6),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(56, 56, 6, 6),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(48, 56, 6, 6),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(40, 56, 6, 6),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(48, 48, 6, 6),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 13, 6, 6)
}

-- Variables
zoom = 1
zoomRate = 0.03
panRate = 7.5
mapX = 0
mapY = 0
ticks = 0

function onTick()
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_onTick()

  -- Variables
  gpsX = input.getNumber(1)
  gpsY = input.getNumber(2)
  ticks = ticks+1

  -- Assigning GPS values to the Map values
  if ticks == 5 then
      mapX = gpsX
      mapY = gpsY
  end


  -- Button Clicking
  if toggleButtonClick(buttons[1], 1, "hold") then
    zoom = zoom*(1-zoomRate)
  end
  if toggleButtonClick(buttons[2], 2, "hold") then
    zoom = zoom*(1+zoomRate)
  end
  if toggleButtonClick(buttons[3], 3, "hold") then -- Right Button
    mapX = mapX+panRate
  end
  if toggleButtonClick(buttons[4], 4, "hold") then -- Down Button
    mapY = mapY-panRate
  end
  if toggleButtonClick(buttons[5], 5, "hold") then -- Left Button
    mapX = mapX-panRate
  end
  if toggleButtonClick(buttons[6], 6, "hold") then -- Up Button
    mapY = mapY+panRate
  end
  if toggleButtonClick(buttons[7], 7) then -- Hold Button
    mapUseGps = not mapUseGps
  end

  -- Map follows the gps location
  if mapUseGps then
      mapX = gpsX
      mapY = gpsY
  end

end

function onDraw()

  -- Variables
  w = screen.getWidth()
  h = screen.getHeight()
  
  screen.drawMap(mapX, mapY, zoom)
  screen.setColor(255, 0, 0)

  if w/32 == 2 and h/32 == 2 then
    screen.drawRect(31, 31, 2, 2)
  elseif w/32 == 3 and h/32 == 3 then
    screen.drawRect(47, 47, 3, 3)
  end

  -- Buttons
  toggleButtonUI(buttons[1], "+", "000000", "FFFFFF",  "FFFFFF", "FFFFFF")
  toggleButtonUI(buttons[2], "-", "000000", "FFFFFF",  "FFFFFF", "FFFFFF")
  toggleButtonUI(buttons[3], ">", "000000", "FFFFFF",  "FFFFFF", "FFFFFF")
  toggleButtonUI(buttons[4], "_", "000000", "FFFFFF",  "FFFFFF", "FFFFFF")
  toggleButtonUI(buttons[5], "<", "000000", "FFFFFF",  "FFFFFF", "FFFFFF")
  toggleButtonUI(buttons[6], "^", "000000", "FFFFFF",  "FFFFFF", "FFFFFF")
  toggleButtonUI(buttons[7], "!", "000000", "FFFFFF",  "FFFFFF", "FFFFFF")

end
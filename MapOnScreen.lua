---@section config
require("_build._simulator_config")
require("LifeBoatAPI")
require("ButtonFeatures")

-- Buttons
buttons = {}
if _w2 == 2 and _h2 == 2 then
  buttons = {
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(54, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(45, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(36, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(45, 45, 8, 8)
  }
elseif _w2 == 3 and _h2 == 2 then
  buttons = {
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(86, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(77, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(68, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(77, 45, 8, 8)
  }
else
  buttons = {
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(86, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(77, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(68, 54, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(77, 45, 8, 8)
  }
end
-- Standard Buttons
buttons[5] = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 1, 6, 6)
buttons[6] = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 8, 6, 6)
buttons[7] = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 15, 6, 6)

-- Variables
zoom = 1
zoomRate = 0.03
panRate = 7.5
mapX = 0
mapY = 0
ticks = 0
mapUseGps = false

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
  _w2 = w / 32
  _h2 = h / 32
  
  screen.drawMap(mapX, mapY, zoom)
  screen.setColor(255, 0, 0)
  boatX, boatY = map.mapToScreen(mapX, mapY, zoom, w, h, gpsX, gpsY)
  screen.drawCircleF(boatX, boatY, 1)

  -- Buttons
  toggleButtonUI(buttons[1], "+", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[2], "-", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[3], ">", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[4], "_", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[5], "<", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[6], "^", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[7], "!", "000000", "636363",  "636363", "000000")

end
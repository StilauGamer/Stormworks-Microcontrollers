---@section config
require("_build._simulator_config")
require("LifeBoatAPI")
require("ButtonFeatures")

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

  -- Buttons
  w = input.getNumber(1)
  h = input.getNumber(2)
  buttons = {
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(12, 2, 6, 6),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(w-10, h-10, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(w-19, h-10, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(w-28, h-10, 8, 8),
    LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(w-19, h-19, 8, 8)
  }

  -- Variables
  gpsX = input.getNumber(1)
  gpsY = input.getNumber(2)
  nightMode = input.getBool(1)
  ticks = ticks+1

  -- Assigning GPS values to the Map values
  if ticks == 5 then
      mapX = gpsX
      mapY = gpsY
  end


  -- Button Clicking
  if toggleButtonClick(buttons[1], 1) then -- Hold Button
    mapUseGps = not mapUseGps
  end
  if toggleButtonClick(buttons[2], 2, "hold") then -- Right Button
    mapX = mapX+panRate
  end
  if toggleButtonClick(buttons[3], 3, "hold") then -- Down Button
    mapY = mapY-panRate
  end
  if toggleButtonClick(buttons[4], 4, "hold") then -- Left Button
    mapX = mapX-panRate
  end
  if toggleButtonClick(buttons[5], 5, "hold") then -- Up Button
    mapY = mapY+panRate
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

  
--  if nightMode then
--    screen.setMapColorOcean(57, 68, 109)
--    screen.setMapColorShallows(66, 69, 73)
--    screen.setMapColorSand(66, 69, 73)
--    screen.setMapColorLand(40, 43, 48)
--    screen.setMapColorGrass(30, 33, 36)
--  else
--    screen.setMapColorOcean(167, 205, 242)
--    screen.setMapColorShallows(155, 191, 244)
--    screen.setMapColorSand(241, 141, 0)
--    screen.setMapColorLand(187, 218, 164)
--    screen.setMapColorGrass(187, 218, 164)
--  end
  
  screen.drawMap(mapX, mapY, zoom)
  screen.setColor(255, 0, 0)
  boatX, boatY = map.mapToScreen(mapX, mapY, zoom, w, h, gpsX, gpsY)
  screen.drawCircleF(boatX, boatY, 1)
  screen.setColor(255, 255, 0)
  screen.drawRect(0, 0, w-1, h-1)
  screen.drawRect(0, 0, 10, h-1)
  screen.setColor(105, 105, 105)
  screen.drawRectF(1, 1, 9, h-2)

  -- Buttons
  toggleButtonUI(buttons[1], "!", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[2], ">", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[3], "_", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[4], "<", "000000", "636363",  "636363", "000000")
  toggleButtonUI(buttons[5], "^", "000000", "636363",  "636363", "000000")
end
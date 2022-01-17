-- Author: StilauGamer
-- GitHub: https://github.com/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

require("_build._simulator_config") -- LifeBoatAPI allows you to use lua's "require" keyword. see the /build/_simulator_config.lua file for how to configure the simulator
require("LifeBoatAPI") -- Type 'LifeBoatAPI.' and use intellisense to checkout the new LifeBoatAPI library functions; such as the LBVec vector maths library
require("ResizableText") -- For the resizable API

startButton = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 1, 29, 8)
lightButton = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 11, 29, 8)
clutchButton = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 21, 29, 8)

function onTick()
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_onTick()

  -- Starter
  if startButton:lbbutton_isHeld() then
    output.setBool(1, true)
    startOn = true
  else
    output.setBool(1, false)
    startOn = false
  end

  -- Pumos
  if lightButton:lbbutton_isClicked() then
    pumpsOn = not pumpsOn
  end
  if pumpsOn then
    output.setBool(2, true)
    pumpsOn = true
  else
    output.setBool(2, false)
    pumpsOn = false
  end

  -- Clutch
  if clutchButton:lbbutton_isClicked() then
      clutchOn = not clutchOn
  end
  if clutchOn then
      output.setBool(3, true)
      clutchOn = true
  else
    output.setBool(3, false)
    clutchOn = false
  end

end

function onDraw()
  screen.setColor(240, 240, 240) -- Setting the default color

  -- Text
  dst(6, 3, "Start")    -- Start Text
  dst(6, 13, "Pumps")   -- Fluid Pump Text
  dst(4, 23, "Clutch")  -- Clutch Text

  -- Starter
  if startOn then
    screen.drawRectF(1, 1, 29, 8)   -- Draw Rectangle Filled
    screen.setColor(0, 0, 0)        -- Setting the color of the text
    dst(6, 3, "Start")              -- Changing the text
    screen.setColor(240, 240, 240)  -- Setting the color of the text
  else
    screen.drawRect(1, 1, 29, 8)    -- Draw rectangle Not Filled
  end

  -- Fluid Pumps
  if pumpsOn then
    screen.drawRectF(1, 11, 29, 8)  -- Draw Rectangle Filled
    screen.setColor(0, 0, 0)        -- Setting the color of the text
    dst(6, 13, "Pumps")             -- Changing the text
    screen.setColor(240, 240, 240)  -- Setting the color of the text
  else
    screen.drawRect(1, 11, 29, 8)   -- Draw rectangle Not Filled
  end

  -- Clutch
  if clutchOn then
    screen.drawRectF(1, 21, 29, 8)  -- Draw Rectangle Filled
    screen.setColor(0, 0, 0)        -- Setting the color of the text
    dst(4, 23, "Clutch")            -- Changing the text
    screen.setColor(240, 240, 240)  -- Setting the color of the text
  else
    screen.drawRect(1, 21, 29, 8)   -- Draw Rectangle Not Filled
  end

  boxes()

end

function boxes()
    screen.drawRect(1, 1, 29, 8)     -- Top box

    screen.drawRect(1, 11, 29, 8)    -- Middle box

    screen.drawRect(1, 21, 29, 8)    -- Bottom left
end
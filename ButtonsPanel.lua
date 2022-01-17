---@section config
require("_build._simulator_config")
require("LifeBoatAPI")
require("ButtonFeatures")

-- Buttons
buttons = {
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 1, 45, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(48, 1, 46, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 17, 45, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(48, 17, 46, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 33, 45, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(48, 33, 46, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 49, 45, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(48, 49, 46, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 65, 45, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(48, 65, 46, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(1, 81, 45, 14),
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(48, 81, 46, 14)
}

function onTick()
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_onTick()
  
  -- Text Properties
  textProperty = {}
  for i = 1, 12 do
    table.insert(textProperty, property.getText("Box "..i))      -- Adding the Text Properties to the table
    toggleButtonClick(buttons[i], i)                             -- Button Clicks
  end

  textColor = property.getText("Text Color (Hex)")               -- Getting the text color from a property
  outlineColor = property.getText("Outline Color (Hex)")         -- Getting the outline color from a property
  backgroundColor = property.getText("Background Color (Hex)")   -- Getting the background color from a property
  defaultColor = property.getText("Default Button Color (Hex)")  -- Getting the default color from a property
end

function onDraw()
  for i = 1, 12 do
    toggleButtonUI(buttons[i], textProperty[i], textColor, outlineColor, backgroundColor, defaultColor) -- Adding all the buttons to the display
  end
end
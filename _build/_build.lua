require([[_build._pre_buildactions]])

--- @diagnostic disable: undefined-global

require("LifeBoatAPI.Tools.Build.Builder")

local luaDocsAddonPath  = LifeBoatAPI.Tools.Filepath:new(arg[1]);
local luaDocsMCPath     = LifeBoatAPI.Tools.Filepath:new(arg[2]);
local outputDir         = LifeBoatAPI.Tools.Filepath:new(arg[3]);
local params            = {
    boilerPlate             = arg[4],
    reduceAllWhitespace     = arg[5] == "true",
    reduceNewlines          = arg[6] == "true",
    removeRedundancies      = arg[7] == "true",
    shortenVariables        = arg[8] == "true",
    shortenGlobals          = arg[9] == "true",
    shortenNumbers          = arg[10]== "true",
    forceNCBoilerplate      = arg[11]== "true",
    forceBoilerplate        = arg[12]== "true",
    shortenStringDuplicates = arg[13]== "true",
    removeComments          = arg[14]== "true"      
};
local rootDirs          = {};

for i=15, #arg do
    table.insert(rootDirs, LifeBoatAPI.Tools.Filepath:new(arg[i]));
end

local _builder = LifeBoatAPI.Tools.Builder:new(rootDirs, outputDir, luaDocsMCPath, luaDocsAddonPath)
_builder:buildMicrocontroller([[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\Lua Sheit\Stormworks-Microcontrollers\MyMicrocontroller.lua]]), params)
_builder:buildMicrocontroller([[test.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\Lua Sheit\Stormworks-Microcontrollers\test.lua]]), params)
_builder:buildMicrocontroller([[ScreenFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\Lua Sheit\Stormworks-Microcontrollers\ScreenFeatures.lua]]), params)
_builder:buildMicrocontroller([[PageSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\Lua Sheit\Stormworks-Microcontrollers\PageSystem.lua]]), params)
_builder:buildMicrocontroller([[MapOnScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\Lua Sheit\Stormworks-Microcontrollers\MapOnScreen.lua]]), params)
_builder:buildMicrocontroller([[ButtonsPanel.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\Lua Sheit\Stormworks-Microcontrollers\ButtonsPanel.lua]]), params)
_builder:buildMicrocontroller([[libraries\ButtonFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\Lua Sheit\Stormworks-Microcontrollers\libraries\ButtonFeatures.lua]]), params)
_builder:buildMicrocontroller([[libraries\RezisableScript.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\Lua Sheit\Stormworks-Microcontrollers\libraries\RezisableScript.lua]]), params)
require([[_build._post_buildactions]])
--- @diagnostic enable: undefined-global

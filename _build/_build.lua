
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
    removeComments          = arg[14]== "true",
    skipCombinedFileOutput  = arg[15]== "true"
};
local rootDirs          = {};

for i=15, #arg do
    table.insert(rootDirs, LifeBoatAPI.Tools.Filepath:new(arg[i]));
end

local _builder = LifeBoatAPI.Tools.Builder:new(rootDirs, outputDir, luaDocsMCPath, luaDocsAddonPath)

if onLBBuildStarted then onLBBuildStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]])) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[advancedmapsystem.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\advancedmapsystem.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[advancedmapsystem.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\advancedmapsystem.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[advancedmapsystem.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\advancedmapsystem.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[test.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\test.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[test.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\test.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[test.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\test.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[ScreenFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\ScreenFeatures.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[ScreenFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\ScreenFeatures.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[ScreenFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\ScreenFeatures.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[PageSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\PageSystem.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[PageSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\PageSystem.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[PageSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\PageSystem.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[MapOnScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\MapOnScreen.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[MapOnScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\MapOnScreen.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[MapOnScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\MapOnScreen.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[ButtonsPanel.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\ButtonsPanel.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[ButtonsPanel.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\ButtonsPanel.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[ButtonsPanel.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\ButtonsPanel.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\MyMicrocontroller.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\MyMicrocontroller.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\MyMicrocontroller.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[libraries\RezisableScript.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\RezisableScript.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[libraries\RezisableScript.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\RezisableScript.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[libraries\RezisableScript.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\RezisableScript.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[libraries\LBTouchScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\LBTouchScreen.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[libraries\LBTouchScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\LBTouchScreen.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[libraries\LBTouchScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\LBTouchScreen.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[libraries\ButtonFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\ButtonFeatures.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[libraries\ButtonFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\ButtonFeatures.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]]), [[libraries\ButtonFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers\libraries\ButtonFeatures.lua]]), outFile, combinedText, outText) end

if onLBBuildComplete then onLBBuildComplete(_builder, params, LifeBoatAPI.Tools.Filepath:new([[e:\Coding Sheit\SW controllers\Stormworks-Microcontrollers]])) end
--- @diagnostic enable: undefined-global

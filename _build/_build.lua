
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

if onLBBuildStarted then onLBBuildStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]])) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[test.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\test.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[test.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\test.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[test.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\test.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[ScreenFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\ScreenFeatures.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[ScreenFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\ScreenFeatures.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[ScreenFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\ScreenFeatures.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[PageSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\PageSystem.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[PageSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\PageSystem.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[PageSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\PageSystem.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\MyMicrocontroller.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\MyMicrocontroller.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\MyMicrocontroller.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[MapOnScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\MapOnScreen.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[MapOnScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\MapOnScreen.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[MapOnScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\MapOnScreen.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[ButtonsPanel.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\ButtonsPanel.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[ButtonsPanel.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\ButtonsPanel.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[ButtonsPanel.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\ButtonsPanel.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[advancedmapsystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\advancedmapsystem.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[advancedmapsystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\advancedmapsystem.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[advancedmapsystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\advancedmapsystem.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[libraries\RezisableScript.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\RezisableScript.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[libraries\RezisableScript.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\RezisableScript.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[libraries\RezisableScript.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\RezisableScript.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[libraries\LBTouchScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\LBTouchScreen.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[libraries\LBTouchScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\LBTouchScreen.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[libraries\LBTouchScreen.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\LBTouchScreen.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[libraries\ButtonFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\ButtonFeatures.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[libraries\ButtonFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\ButtonFeatures.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]]), [[libraries\ButtonFeatures.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1\libraries\ButtonFeatures.lua]]), outFile, combinedText, outText) end

if onLBBuildComplete then onLBBuildComplete(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\StianAlmelienLauvdal\Documents\Coding sheit\Stormworks-Microcontrollers-1]])) end
--- @diagnostic enable: undefined-global

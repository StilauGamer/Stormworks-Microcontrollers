-- Author: StilauGamer
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

--- @diagnostic disable: undefined-global

require("LifeBoatAPI.Tools.Simulator.Simulator");
__simulator = LifeBoatAPI.Tools.Simulator:new() 
__simulator:_beginSimulation(false, arg[1], arg[2])

simulator = __simulator -- 0.0.11 easier to read by far but could be overwritten by somebody's global

-- compatibility with 0.0.7 projects
LBSimulatorInputHelpers = LifeBoatAPI.Tools.SimulatorInputHelpers

require("advancedmapsystem");

-- compatibility with 0.0.4 projects
if onLBSimulatorInit then
    onLBSimulatorInit(__simulator, __simulator.config, LBSimulatorInputHelpers)
end

__simulator:_giveControlToMainLoop()

--- @diagnostic enable: undefined-global

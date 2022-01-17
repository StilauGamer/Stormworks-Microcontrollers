-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

--- @diagnostic disable: undefined-global

require("LifeBoatAPI.Tools.Simulator.Simulator");
__simulator = LifeBoatAPI.Tools.Simulator:new() 
__simulator:beginSimulation(false, arg[1], arg[2])

-- compatibility with 0.0.7 projects
LBSimulatorInputHelpers = LifeBoatAPI.Tools.SimulatorInputHelpers

require("loadingScreen");

-- compatibility with 0.0.4 projects
if onLBSimulatorInit then
    onLBSimulatorInit(__simulator, __simulator.config, LBSimulatorInputHelpers)
end

__simulator:giveControlToMainLoop()

--- @diagnostic enable: undefined-global

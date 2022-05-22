-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

--- Note: code wrapped in ---@section <Identifier> <number> <Name> ... ---@endsection <Name>
---  Is only included in the final output if <Identifier> is seen <number> of times or more
---  This means the code below will not be included in the final, minimized version
---  And you can do the same to wrap library code; so that it's there if you use it, and deleted if you don't!
---  No more manual cutting/pasting code out!

---@section __SIMULATORONLY__ 1 _MAIN_SIMSECTION_INIT


-- When running the simulator, the global variable __simulator is created
-- Make sure to do any configuration before the the start of your main file
---@param simulator Simulator
---@param config SimulatorConfig
---@param helpers SimulatorInputHelpers
__simulator.config:configureScreen(1, "3x3", true, false)

-- Properties
__simulator.config:setProperty("Text Color (Hex)", "0000FF")
__simulator.config:setProperty("Outline Color (Hex)", "FFFFFF")
__simulator.config:setProperty("Background Color (Hex)", "FFFFFF")
__simulator.config:setProperty("Default Button Color (Hex)", "FFFFFF")


-- Increasing Number
_ticks = 0

---@param simulator Simulator
function onLBSimulatorTick(simulator, ticks)
   simulator:setInputBool(20, ticks % 60 < 30)             -- example, bool that flips on/off every 30 ticks (0.5 seconds)
   simulator:setInputNumber(20, ticks)                     -- example, set input 20 to the number of ticks
   simulator:setInputNumber(21, math.sin(ticks%60 / 60))   -- example, sin wave that oscillates every 60 ticks (1 second)
   

   -- default touchscreen connection
   screenConnection = simulator:getTouchScreen(1)
   if ticks < 30 then
       simulator:setInputBool(1,   0)
       simulator:setInputBool(2,   0)
       simulator:setInputNumber(1, 0)
       simulator:setInputNumber(2, 0)
       simulator:setInputNumber(3, 0)
       simulator:setInputNumber(4, 0)
       simulator:setInputNumber(5, 0)
       simulator:setInputNumber(6, 0)
   else
       simulator:setInputBool(1, screenConnection.isTouched)
       simulator:setInputBool(2, screenConnection.isTouchedAlt)
       simulator:setInputNumber(1, screenConnection.width)
       simulator:setInputNumber(2, screenConnection.height)
       simulator:setInputNumber(3, screenConnection.touchX)
       simulator:setInputNumber(4, screenConnection.touchY)
       simulator:setInputNumber(5, screenConnection.touchAltX)
       simulator:setInputNumber(6, screenConnection.touchAltY)
   end
end;



--- runs every tick, prior to onTick and onDraw
--- Usually not needed, can allow you to do some custom manipulation
--- Or set breakpoints based on simulator state

--- For easier debugging, called when an output value is changed
function onLBSimulatorOutputBoolChanged(index, oldValue, newValue)end
function onLBSimulatorOutputNumberChanged(index, oldValue, newValue)end

---@endsection _MAIN_SIMSECTION_INIT



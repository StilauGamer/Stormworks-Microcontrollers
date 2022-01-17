-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

-- This file is called after the build process finished
-- Can be used to copy data into the game, trigger deployments, etc.
-- Regular lua - you have access to the filesystem etc. via LifeBoatAPI.Tools.LBFilesystem
-- Recommend using LBFilepath for paths, to keep things easy

-- default is no actions
print("Build Success - No additional actions in _build/_post_buildactions.lua file")
print("See the /out/release/ folder for your minimized code")


-- Example: Copy the addon script into the game folder every time you hit F7
--
--local username = "YourWindowsUsername"
--local missionName = "YourAddonName"
--
--local outDir = LifeBoatAPI.Tools.Filepath:new(arg[3]):add("/release/")
--local missionsFolder = LifeBoatAPI.Tools.Filepath:new("C:/Users/" .. username.. "/AppData/Roaming/Stormworks/data/missions/")
--
--LifeBoatAPI.Tools.FileSystemUtils.copyFile(outDir:add("/script.lua"), missionsFolder:add(missionName .. "/script.lua"))

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_hud.lua" )

include( "shared.lua" )
include( "player.lua" )

INITIAL_MONEY = 1500
INITIAL_EXP = 0
INITIAL_JOBEXP = 0
INITIAL_LEVEL = 1

function GM:PlayerConnect( name, ip )
    print("Player " .. name .. " has joined the game.")

end

function GM:PlayerInitialSpawn( ply )
    print("Player " .. ply:Nick() .. " has spawned")
    player_manager.SetPlayerClass(ply, "Human")
end

function GM:PlayerAuthed( ply, steamID, uniqueID )
    print("Player " .. ply:Nick() .. " has gotten authed.")
end


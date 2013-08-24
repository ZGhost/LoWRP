AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_hud.lua" )
AddCSLuaFile( "player.lua" )


include( "shared.lua" )
include( "player.lua" )
include( 'sh_player.lua' )

INITIAL_MONEY = 1500
INITIAL_EXP = 0
INITIAL_JOBEXP = 0
INITIAL_LEVEL = 1



function GM:PlayerConnect( name, ip )
    print("Player " .. name .. " has joined the game.")

end

function FirstSpawn( ply )
	print("Player " .. ply:Nick() .. " has spawned")
    player_manager.SetPlayerClass(ply, "Human")

	local cash = ply:GetPData("money") --Get the saved money amount
 
	if cash == nil then --If it doesn't exist supply the player with the starting money amount
		ply:SetPData("money", INITIAL_MONEY) --Save it
		ply:SetMoney( INITIAL_MONEY ) --Set it to the networked ints that can be called from the client too
	else
	ply:SetMoney( cash ) --If not, set the networked ints to what we last saved
	end
 
end
hook.Add( "PlayerInitialSpawn", "playerInitialSpawn", FirstSpawn )

function GM:PlayerAuthed( ply, steamID, uniqueID )
    print("Player " .. ply:Nick() .. " has gotten authed.")
end

function PrintCash( pl )
	pl:ChatPrint("Your cash is: " .. pl:GetMoney())
end
 
function fPlayerDisconnect( ply )
	print("Player Disconnect: Money saved to SQLLite and TXT")
	ply:SaveMoney()
	ply:SaveMoneyTXT()
end
 
concommand.Add("cash_get",PrintCash)

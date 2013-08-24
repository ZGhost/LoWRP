AddCSLuaFile()
DEFINE_BASECLASS( "player_default" )

local PLAYER = {}
 
PLAYER.DisplayName			= "Revolver Dude"
PLAYER.WalkSpeed 			= 400
PLAYER.CrouchedWalkSpeed 	= 0.2
PLAYER.RunSpeed				= 600
PLAYER.DuckSpeed				= 0.2
PLAYER.JumpPower				= 200
PLAYER.PlayerModel			= "models/player/breen.mdl"
PLAYER.DrawTeamRing			= true
PLAYER.DrawViewModel			= true
PLAYER.CanUseFlashlight      = true
PLAYER.MaxHealth				= 100
PLAYER.StartHealth			= 100
PLAYER.StartArmor			= 0
PLAYER.RespawnTime           = 0 // 0 means use the default spawn time chosen by gamemode
PLAYER.DropWeaponOnDie		= false
PLAYER.TeammateNoCollide 	= false
PLAYER.AvoidPlayers			= false // Automatically avoid players that we're no colliding
PLAYER.Selectable			= true // When false, this disables all the team checking
PLAYER.FullRotation			= false // Allow the player's model to rotate upwards, etc etc
 
function PLAYER:Loadout()
 
	self.Player:RemoveAllAmmo()
	
	self.Player:GiveAmmo( 256,	"Pistol", 		true )
	self.Player:Give( "weapon_pistol" )
 
end
 

 
player_manager.RegisterClass( "Human", PLAYER, "player_default" )
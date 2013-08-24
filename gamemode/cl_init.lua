include( "shared.lua" )
include( "cl_hud.lua" )



function GM:PostDrawViewModel( vm, ply, weapon )

  if ( weapon.UseHands || !weapon:IsScripted() ) then

    local hands = LocalPlayer():GetHands()
    if ( IsValid( hands ) ) then hands:DrawModel() end

  end

end

function getMoney(ply)

    return 1500
    
end
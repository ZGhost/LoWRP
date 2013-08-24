local ply = FindMetaTable("Player")

function GM:PlayerInitialSpawn( ply )

    ply.money = INITIAL_MONEY
    ply.experience = INITIAL_EXP
    ply.level = INITIAL_LEVEL
    ply.jobexp = INITIAL_JOBEXP

end


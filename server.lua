RegisterNetEvent("sc-antiGiveWeapon:banPlayer", function(reason)
    local src = source
    DropPlayer(src, reason) -- Change tis to your ban system :)
end)

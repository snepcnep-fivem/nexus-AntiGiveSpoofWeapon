local _PlayerPedId = PlayerPedId
local _IsPedArmed = IsPedArmed
local _GetCurrentPedWeapon = GetCurrentPedWeapon

CreateThread(function()
    local spawnWarns = 0 

    while true do
        Wait(1000)
        local PlayerPed = _PlayerPedId()

        local isArmed1 = _IsPedArmed(PlayerPed, 1)
        local isArmed2 = _IsPedArmed(PlayerPed, 2)
        local isArmed3 = _IsPedArmed(PlayerPed, 4)

        if not isArmed1 and not isArmed2 and not isArmed3 then
            spawnWarns = 0
            goto skipCheck
        end

        local weaponHoldStatus  = _GetCurrentPedWeapon(PlayerPed)
        if weaponHoldStatus then
            spawnWarns = 0
            goto skipCheck
        end

        -- || NOT REQUIRED - This is a extra check for servers using ox_inventory to ensure full protection || --
        local weaponInv = exports.ox_inventory:getCurrentWeapon()
        if weaponInv then
            goto skipCheck
        end

        SetCurrentPedWeapon(PlayerPed, `WEAPON_UNARMED`, true)

        if spawnWarns > 2 then
            TriggerServerEvent("sc-antiGiveWeapon:banPlayer", "Try to spawn a weapon (PHAZE) [SnepCnep-AntiGiveWeapon]")
        end
        
        spawnWarns = spawnWarns + 1

        ::skipCheck::
    end
end)

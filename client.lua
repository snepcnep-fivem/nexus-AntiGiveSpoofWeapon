local _PlayerPedId = PlayerPedId
local _IsPedArmed = IsPedArmed
local _GetCurrentPedWeapon = GetCurrentPedWeapon

CreateThread(function()
    while true do
        Wait(1000)
        local PlayerPed = _PlayerPedId()

        local isArmed1 = _IsPedArmed(PlayerPed, 1)
        local isArmed2 = _IsPedArmed(PlayerPed, 2)
        local isArmed3 = _IsPedArmed(PlayerPed, 4)

        if not isArmed1 and not isArmed2 and not isArmed3 then
            goto skipCheck
        end

        local weaponHoldStatus  = _GetCurrentPedWeapon(PlayerPed)
        if weaponHoldStatus then
            goto skipCheck
        end

        -- IDK if required but yhe......
        local weaponInv = exports.ox_inventory:getCurrentWeapon() -- IDK if required but yhe......
        if weaponInv then -- IDK if required but yhe......
            goto skipCheck -- IDK if required but yhe......
        end -- IDK if required but yhe......

        SetCurrentPedWeapon(PlayerPed, `WEAPON_UNARMED`, true)
        TriggerServerEvent("sc-antiGiveWeapon:banPlayer", "Try to spawn a weapon (PHAZE) [SnepCnep-AntiGiveWeapon]")

        ::skipCheck::
    end
end)

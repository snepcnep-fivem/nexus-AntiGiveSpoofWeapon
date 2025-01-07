local _PlayerPedId = PlayerPedId
local _IsPedShooting = IsPedShooting
local _IsPedArmed = IsPedArmed
local _GetCurrentPedWeapon = GetCurrentPedWeapon

CreateThread(function()
    while true do
        Wait(1000)
        local PlayerPed = _PlayerPedId()

        local isArmed2 = _IsPedArmed(PlayerPed, 4)
        local isArmed2 = _IsPedArmed(PlayerPed, 4)
        local isArmed3 = _IsPedArmed(PlayerPed, 4)

        if not isArmed2 or not isArmed2 or not isArmed3 then
            break
        end

------------------------------------------------------------------------------------------
        -- IF YOU USE OX INVENTORY!!!! ELSE JUST REMOVE IT SHOULD STILL WORK.
        local weaponInv = exports.ox_inventory:getCurrentWeapon()
        if weaponInv then
            break
        end
------------------------------------------------------------------------------------------

        local weaponHoldStatus  = _GetCurrentPedWeapon(PlayerPed)
        if weaponHoldStatus then
            break
        end

        SetCurrentPedWeapon(PlayerPed, `WEAPON_UNARMED`, true)
        TriggerServerEvent("sc-antiGiveWeapon:banPlayer", "Try to spawn a weapon (PHAZE) [SnepCnep-AntiGiveWeapon]")
    end
end)

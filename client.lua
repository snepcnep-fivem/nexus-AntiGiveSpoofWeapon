local _PlayerPedId = PlayerPedId
local _IsPedShooting = IsPedShooting
local _IsPedArmed = IsPedArmed
local _GetCurrentPedWeapon = GetCurrentPedWeapon

CreateThread(function()
    while true do
        Wait(1)
        local PlayerPed = _PlayerPedId()

        local isShooting = _IsPedShooting(PlayerPed)
        if not isShooting then
            break
        end

        local isArmed = _IsPedArmed(PlayerPed, 4)
        if not isArmed then
            break
        end

------------------------------------------------------------------------------------------
        -- IF you use OX inventory Please add this if not delete this
        local weaponInv = exports.ox_inventory:getCurrentWeapon()
        if weaponInv then
            break
        end
------------------------------------------------------------------------------------------

        local weaponHoldStatus  = _GetCurrentPedWeapon(PlayerPed)
        if weaponHoldStatus then
            break
        end

        TriggerServerEvent("sc-AntiGiveWeapon:banPlayer", "Try to spawn a weapon (NEXUS) [SnepCnep-AntiGiveWeapon]")
    end
end)

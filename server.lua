---@param playerId integer Player ID
---@param reason string Reason for ban
local function banPlayer(playerId, reason)
    ---@diagnostic disable-next-line: param-type-mismatch
    DropPlayer(playerId, reason)
end

---@param reason string Reason for ban
RegisterNetEvent("sc-antiGiveWeapon:banPlayer", function(reason)
    banPlayer(source, reason)
end)
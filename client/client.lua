---@diagnostic disable: undefined-global, lowercase-global, param-type-mismatch
ESX = exports.es_extended:getSharedObject()

local actived = false
local function staffMode()
    if not actived then
        if Config.Settings.Notification then
            Notification(Config.Lang['enStaffMode'])
        end
        actived = true
        local playerPed = cache.ped
        Citizen.CreateThread(function()
            local crdn = GetEntityCoords(playerPed)
            propStaffMode = CreateObject(GetHashKey(Config.Settings.Prop), crdn.x, crdn.y, crdn.z + 2.0,  true, true, true)
            AttachEntityToEntity(propStaffMode, playerPed, GetPedBoneIndex(playerPed, 31086), 0.35, 0.0, 0.0, 180.0, 90.0, 0.0, 1, 1, 0, 0, 2, 1)
        end)
    else
        if Config.Settings.Notification then
            Notification(Config.Lang['disStaffMode'])
        end
        actived = false
        DeleteObject(propStaffMode)
    end
end

local function checkStaffMode()
    return actived
end

RegisterNetEvent('dmal_staffText:StaffMode')
AddEventHandler('dmal_staffText:StaffMode', function()
    staffMode()
end)

exports('staffMode', staffMode)
exports('checkStaffMode', checkStaffMode)
---@diagnostic disable: undefined-global
ESX = exports.es_extended:getSharedObject()

lib.addCommand(Config.Settings.Command, {
    help = Config.Lang['staffMode'],
    restricted = Config.Settings.Group,
}, function(source, args, raw)
    TriggerClientEvent('dmal_staffText:StaffMode', source)
end)

AddEventHandler('onResourceStart', function()
    if (GetCurrentResourceName() ~= "dmal_staffText") then
        while true do
            Citizen.Wait(5000)
            print('(ERROR) dmal_staffText : don\'t rename the resource')
        end
    end
end)
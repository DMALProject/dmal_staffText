---@diagnostic disable: undefined-global
ESX = exports.es_extended:getSharedObject()

lib.addCommand(Config.Settings.Command, {
    help = Config.Lang['staffMode'],
    restricted = Config.Settings.Group,
}, function(source, args, raw)
    TriggerClientEvent('dmal_staffText:StaffMode', source)
end)

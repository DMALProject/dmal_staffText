---@diagnostic disable: undefined-global
Config = {}

Config.Settings = {
    Command = 'staffMode',
    Prop = 'stafftext',

    -- Always enter "group." before the group name
    Group = {'group.dev', 'group.admin', 'group.mod', 'group.helper'},

    -- Do you want notification? false or (ox_lib, custom)
    Notification = 'ox_lib',
}

Config.Lang = {
    ['staffMode'] = 'Enable/Disable staff mode',
    ['enStaffMode'] = 'Disabled staff mode',
    ['disStaffMode'] = 'Enabled staff mode',
}

function Notification(message, title)
    local notif = Config.Settings.Notification

    if notif == 'ox_lib' then

        lib.notify({
            title = title,
            description = message,
            type = 'inform'
        })

    elseif notif == 'custom' then
        -- Put your client side export 

    end

end
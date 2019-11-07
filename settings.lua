-- manages settings and stores values of settings
local Settings = {}

local hatId
local height
local transparency
local enabled

-- checks if any settings aren't nil, if all are nil (user has never used the plugin) it enables the plugin and sets default settings
function Settings.CheckForFirstTimeUse()
    if not (plugin:GetSetting("Height") or plugin:GetSetting("Transparency") or plugin:GetSetting("HatID")) then
        plugin:SetSetting("HatID", 1028826)
        plugin:SetSetting("Height", 5)
        plugin:SetSetting("Transparency", 0)
        plugin:SetSetting("Enabled", true)
    end
end

function Settings.GetHatId()
    return hatId
end

function Settings.GetHeight()
    return height
end

function Settings.GetTransparency()
    return transparency
end

function Settings.GetEnabled()
    return enabled
end

function Settings.SetHatId()

end

function Settings.SetHeight()

end

function Settings.SetTransparency()

end

function Settings.SetEnabled()

end



return 0
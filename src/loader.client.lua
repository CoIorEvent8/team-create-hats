-- team create with hats: version 4
-- presssssure
-- 2021-02-24


local root = script.Parent
local shouldRun = require(root.prechecks)

if not shouldRun then
    return
end


----------


-- cleanup from last time

local CollectionService = game:GetService("CollectionService")
local yourHatTag = game:GetService("Players").LocalPlayer.Name .. "'s hats"

for _, f in pairs(CollectionService:GetTagged(yourHatTag)) do
    f:Destroy()
end


----------


local RunService = game:GetService("RunService")


local HatImporter = require(root.world.hat.importer)
local Hat = require(root.world.hat)
local Storage = require(root.world.storage)
local PersistentInstance = require(root.world.persistentInstance)

local StudioDocket = require(root.gui.studioDocket)
local mountPreviewWindow = require(root.gui.mountPreviewWindow)


----------

local folder = Storage("SunRaysEffect", game:GetService("Players").LocalPlayer.Name)
CollectionService:AddTag(folder, yourHatTag)
local persistentFolder = PersistentInstance.new(folder, workspace)

local myId = 553870650
local statusCode, accessory = HatImporter:LoadHat(myId)
local persistentAccessory = PersistentInstance.new(accessory, persistentFolder)

local myHats = {Hat.new(persistentAccessory, {
    offset = Vector3.new(0,5,0),
    scale = accessory.Handle.Mesh.Scale,
    transformPriority = "translate",
    visibleLocally = false,
})}

local previewer = mountPreviewWindow(StudioDocket.Windows["Preview Hats"].Docket, myHats)
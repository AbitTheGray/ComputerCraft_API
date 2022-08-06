--- https://docs.srendi.de/1.16/peripherals/rs_bridge/
--- `rsBridge`
---@class RSBridge
local rsBridge = {}

--- Crafts an item.
---@param item table
---@return RsItemCraft
function rsBridge.craftItem(item) end

--- Exports an item to a chest in the direction of the block.
---@param item RsItemCraft
---@param side string @"top", "bottom", "left", "right", "back", "front"
---@return number
function rsBridge.exportItem(item, side) end
--- Exports an item to a chest (every inventory tile entity should work) which is connected to the peripheral network.
---@param item RsItemCraft
---@param chest string
---@return number
function rsBridge.exportItemToPeripheral(item, chest) end

--- Returns the stored energy of the whole RS System.
---@return number
function rsBridge.getEnergyStorage() end
--- Returns the energy usage of the whole RS System.
---@return number
function rsBridge.getEnergyUsage() end

--- Returns a table with information of the item.
---@param item RsItemCraft
---@return RsItemListed
function rsBridge.getItem(item) end
--- Returns the crafting pattern of this item.
---@param item RsItemCraft
---@return RsItemPattern
function rsBridge.getPattern(item) end

--- Returns the maximum energy storage of the whole RS System.
---@return number
function rsBridge.getMaxEnergyStorage() end

--- Imports an item to the me system from the chest in the direction of the block.
---@param item RsItemCraft
---@param side string @"top", "bottom", "left", "right", "back", "front"
---@return number
function rsBridge.importItem(item, side) end
--- Imports an item to a chest(every inventory tile entity should work) which is connected to the peripheral network.
---@param item RsItemCraft
---@param chest string
---@return number
function rsBridge.importItemFromPeripheral(item, chest) end

--- Returns true if a job for the item already exists.
---@param itemName string
---@return boolean
function rsBridge.isItemCrafting(itemName) end
--- Returns true if this item is craftable.
---@param item string
---@return boolean
function rsBridge.isItemCraftable(item) end

--- Returns all stored fluids.
---@return RsFluidListed[]
function rsBridge.listFluids() end
---@return RsItemListed[]
function rsBridge.listItems() end

--- Returns the total amount of available item disk storage.
---@return number
function rsBridge.getMaxItemDiskStorage() end
--- Returns the total amount of available fluid disk storage.
---@return number
function rsBridge.getMaxFluidDiskStorage() end
--- Returns the total amount of available extern item storage.
---@return number
function rsBridge.getMaxItemExternalStorage() end
--- Returns the total amount of available extern fluid storage.
---@return number
function rsBridge.getMaxFluidExternalStorage() end




---@class RsItemCraft
local rsItemCraft = {}

--- "minecraft:stone"
---@type string
rsItemCraft.name = ""
---@type number
rsItemCraft.count = 1
--- You can use the command `/advancedperipherals getHashItem` with an item in your hand to get the MD5 hash of the NBT tags of the item.
--- A MD5 Hash can look like this `ae70053c97f877de546b0248b9ddf525`.
---@type string|nil
rsItemCraft.nbt = ""




---@class RsItemPattern
local rsItemPattern = {}

--- true = processing, false = crafting
---@type boolean
rsItemPattern.processing = false
---@type RsItemPatternInputVariant[]
rsItemPattern.inputs = {}
---@type RsItemListed[]
rsItemPattern.outputs = {}
---@type RsItemListed[]
rsItemPattern.byproducts = {}



--- Array of `RsItemListed`.
--- Each value in this array represents single instance of possible inputs.
---@class RsItemPatternInputVariant
---@type RsItemListed[]
local rsItemPatternInputVariant = {}

---@type RsItemListed
rsItemPatternInputVariant[1] = {}




---@class RsItemListed
local rsItemListed = {}

---@type number
rsItemListed.amount = 1
--- "Chest"
---@type string
rsItemListed.displayName = ""
--- "minecraft:chest:
---@type string
rsItemListed.name = ""
--- JSON NBT data
---@type string
rsItemListed.nbt = ""
--- UUID/GUID without dashes, lower-case
---@type string
rsItemListed.fingerprint = ""
---@type boolean
rsItemListed.isCraftable = false
---@type string[]
rsItemListed.tags = {}
--- Can contain "StoredEnchantments" key which is array of `RsStoredEnchantment` with starting index `0`!!!
--- Can contain "TitaniumAugment" key which is a table with "Range" key for numeric value, used by Immersive Engineering
--- And probably many more.
---@type table
rsItemListed.nbt = {}


---@class RsStoredEnchantment
local rsStoredEnchantment = {}

---@type string
rsStoredEnchantment.id = ""
---@type number
rsStoredEnchantment.lvl = 1




---@class RsFluidListed
local rsFluidListed = {}

---@type number
rsFluidListed.amount = 1
--- "Chest"
---@type string
rsFluidListed.displayName = ""
--- "minecraft:chest:
---@type string
rsFluidListed.name = ""
---@type string[]
rsFluidListed.tags = {}
---@type boolean
rsFluidListed.isCraftable = false

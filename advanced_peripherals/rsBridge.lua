---@class RSBridge
local rsBridge = {}

---@param item table
---@return table
function rsBridge.craftItem(item) end

---@param item table
---@param side string
---@return number
function rsBridge.exportItem(item, side) end
---@param item table
---@param chest string
---@return number
function rsBridge.exportItemToPeripheral(item, chest) end

---@return number
function rsBridge.getEnergyStorage() end
---@return number
function rsBridge.getEnergyUsage() end

---@param item table
---@return table
function rsBridge.getItem(item) end
---@param item table
---@return table
function rsBridge.getPattern(item) end

---@return number
function rsBridge.getMaxEnergyStorage() end

---@param item table
---@param side string
---@return number
function rsBridge.importItem(item, side) end
---@param item table
---@param chest string
---@return number
function rsBridge.importItemFromPeripheral(item, chest) end

---@param item string
---@return boolean
function rsBridge.isItemCrafting(item) end
---@param item string
---@return boolean
function rsBridge.isItemCraftable(item) end

---@return table @array of fluids
function rsBridge.listFluids() end
---@return table @array of items
function rsBridge.listItems() end

---@return number
function rsBridge.getMaxItemDiskStorage() end
---@return number
function rsBridge.getMaxFluidDiskStorage() end
---@return number
function rsBridge.getMaxItemExternalStorage() end
---@return number
function rsBridge.getMaxFluidExternalStorage() end

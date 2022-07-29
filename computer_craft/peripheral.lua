--- https://computercraft.info/wiki/Peripheral_(API)
---@class Peripheral
peripheral = {}

---@param side string @"left", "right", "top", "bottom", "front", "back"
---@return boolean
peripheral.isPresent = function(side) end

---@param side string @"left", "right", "top", "bottom", "front", "back"
---@return string|nil
peripheral.getType = function(side) end

---@param side string @"left", "right", "top", "bottom", "front", "back"
---@return table|nil
peripheral.getMethods = function(side) end

---@param side string @"left", "right", "top", "bottom", "front", "back"
---@param func string @Name of function to call
peripheral.call = function(side, func, ...) end

---@param side string @"left", "right", "top", "bottom", "front", "back"
---@return table|nil
peripheral.wrap = function(side) end

---@param type string
---@param fnFilter function @(name, object)
---@return table|nil
peripheral.find = function(type, fnFilter) end

---@return table
peripheral.getNames = function() end
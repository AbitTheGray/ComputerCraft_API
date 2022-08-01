--- https://computercraft.info/wiki/Peripheral_(API)
--- https://tweaked.cc/module/peripheral.html
---@class Peripheral
peripheral = {}

--- Provides a list of all peripherals available.
--- If a device is located directly next to the system, then its name will be listed as the side it is attached to. If a device is attached via a Wired Modem, then it'll be reported according to its name on the wired network.
---@return table @A list of the names of all attached peripherals.
function peripheral.getNames() end
--- Determines if a peripheral is present with the given name.
---@param side string @"left", "right", "top", "bottom", "front", "back" or network name
---@return boolean @If a peripheral is present with the given name.
function peripheral.isPresent(side) end
--- Get the types of a named or wrapped peripheral.
---@param side string @"left", "right", "top", "bottom", "front", "back" or network name
---@param side table @Wrapped peripheral
---@return string...|nil
function peripheral.getType(side) end
--- Check if a peripheral is of a particular type.
---@param side string @"left", "right", "top", "bottom", "front", "back" or network name
---@param side table @Wrapped peripheral
---@return boolean|nil @If a peripheral has a particular type, or nil if it is not present.
function peripheral.hasType(side, type) end
--- Get all available methods for the peripheral with the given name.
---@param side string @"left", "right", "top", "bottom", "front", "back" or network name
---@return table|nil @A list of methods provided by this peripheral, or nil if it is not present.
function peripheral.getMethods(side) end
--- Get the name of a peripheral wrapped with peripheral.wrap.
---@param peripheral table @Wrapped peripheral
---@return string @The name (=side) of the given peripheral.
function peripheral.getName(peripheral) end
--- Call a method on the peripheral with the given name.
---@param side string @"left", "right", "top", "bottom", "front", "back" or network name
---@param func string @Name of function to call
---@param ... any @Additional arguments to pass to the method
---@return any @The return values of the peripheral method.
function peripheral.call(side, func, ...) end
--- Get a table containing all functions available on a peripheral. These can then be called instead of using peripheral.call every time.
---@param side string @"left", "right", "top", "bottom", "front", "back" or network name
---@return table|nil @The table containing the peripheral's methods, or nil if there is no peripheral present with the given name.
function peripheral.wrap(side) end
--- Find all peripherals of a specific type, and return the wrapped peripherals.
---@param type string
---@param fnFilter function @(OPTIONAL) function(name: string, wrapped: table):boolean ; A filter function, which takes the peripheral's name and wrapped table and returns if it should be included in the result.
---@return table...|nil @0 or more wrapped peripherals matching the given filters.
function peripheral.find(type, fnFilter) end

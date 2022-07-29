--- https://computercraft.info/wiki/Redstone_(API)
---@class Redstone
redstone = {}
---@class RS : Redstone
rs = {}

---@return table @possible sides
redstone.getSides = function() end
---@param side string
---@return boolean @current redstone input signal state on side.
redstone.getInput = function(side) end
--- Sets or resets a redstone signal on side.
---@param side string
---@param value boolean
redstone.setOutput = function(side, value) end
---@param side string
---@return boolean @current redstone output signal on side.
redstone.getOutput = function(side) end
--- Returns the current redstone input signal strength on side. If no input is present, returns 0.
---If a redstone source (such as a redstone torch or block) is directly adjacent to the computer, returns 15.
---@param side string
---@return number @strength
redstone.getAnalogInput = function(side) end
--- Sets or resets a redstone signal on side to strength (where strength is a positive integer).
---@param side string
---@param strength number
redstone.setAnalogOutput = function(side, strength) end
--- Current redstone output signal strength on side.
---@param side string
---@return number @strength
redstone.getAnalogOutput = function(side) end
--- Returns the state (as a number) of a bundled cable connected to side.
---@return number @color
redstone.getBundledInput = function(side) end
--- Returns the set of wires in a bundled cable which are being activated by the terminal on side.
---@return number @color
redstone.getBundledOutput = function(side) end
--- Sets one or multiple colored signals in a bundled cable attached to side.
--- Colors will determine which signals are activated.
--- In order to set multiple signals, add the color values of the colors you want to activate.
--- To turn off all of the colors, use 0.
---@param side string
---@param colors number
redstone.setBundledOutput = function(side, colors) end
--- Returns true if color is active in a bundled cable attached to side.
--- Else, returns false.
---@param side string
---@param color number
redstone.testBundledInput = function(side, color) end
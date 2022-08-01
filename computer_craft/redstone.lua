--- Get and set redstone signals adjacent to this computer.
--- Whenever a redstone input changes, a redstone event will be fired. This may be used instead of repeativly polling.
--- https://computercraft.info/wiki/Redstone_(API)
--- https://tweaked.cc/module/redstone.html
---@class Redstone
redstone = {}
---@class RS : Redstone
rs = {}

--- Returns a table containing the six sides of the computer. Namely, "top", "bottom", "left", "right", "front" and "back".
---@return table
function redstone.getSides() end
--- Sets or resets a redstone signal on side.
---@param side string
---@param value boolean
function redstone.setOutput(side, value) end
---@param side string
---@return boolean @current redstone output signal on side.
function redstone.getOutput(side) end
---@param side string
---@return boolean @current redstone input signal state on side.
function redstone.getInput(side) end
--- Sets or resets a redstone signal on side to strength (where strength is a positive integer).
---@param side string
---@param strength number
function redstone.setAnalogOutput(side, strength) end
redstone.setAnalogueOutput = redstone.setAnalogOutput
--- Current redstone output signal strength on side.
---@param side string
---@return number @strength
function redstone.getAnalogOutput(side) end
redstone.getAnalogueOutput = redstone.getAnalogOutput
--- Returns the current redstone input signal strength on side. If no input is present, returns 0.
---If a redstone source (such as a redstone torch or block) is directly adjacent to the computer, returns 15.
---@param side string
---@return number @strength
function redstone.getAnalogInput(side) end
redstone.getAnalogueInput = redstone.getAnalogInput
--- Sets one or multiple colored signals in a bundled cable attached to side.
--- Colors will determine which signals are activated.
--- In order to set multiple signals, add the color values of the colors you want to activate.
--- To turn off all of the colors, use 0.
---@param side string
---@param colors number
function redstone.setBundledOutput(side, colors) end
--- Returns the set of wires in a bundled cable which are being activated by the terminal on side.
---@return number @color
function redstone.getBundledOutput(side) end
--- Returns the state (as a number) of a bundled cable connected to side.
---@return number @color
function redstone.getBundledInput(side) end
--- Returns true if color is active in a bundled cable attached to side.
--- Else, returns false.
---@param side string
---@param color number
function redstone.testBundledInput(side, color) end

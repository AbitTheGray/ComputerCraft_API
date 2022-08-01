---@class Monitor : Term
local monitor = {}

--- Set the scale of this monitor. A larger scale will result in the monitor having a lower resolution, but display text much larger.
---@see monitor.getTextScale
---@param scale number @The monitor's scale. This must be a multiple of 0.5 between 0.5 and 5.
---@throw If the scale is out of range.
function monitor.setTextScale(scale) end
--- Get the monitor's current text scale.
---@see monitor.setTextScale
---@throw If the monitor cannot be found.
---@return number @The monitor's current scale.
function monitor.getTextScale() end

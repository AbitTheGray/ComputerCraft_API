---@class NumberUtil
numberUtil = {}

--- Clamps `value` between `min` and `max`.
---@param value number
---@param min number
---@param max number
---@return number
function numberUtil.clamp(value, min, max)
  if value < min then
    return min
  end
  if value > max then
    return max
  end
  return value
end
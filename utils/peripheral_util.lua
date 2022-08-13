---@class PeripheralUtil
local peripheralUtil = {}

---@type string[]
peripheralUtil.sides = { "top", "bottom", "back", "front", "left", "right" }

--- Lists functions by provided peripheral.
---@param p table @Wrapped peripheral
---@return string[]
function peripheralUtil.getFunctions(p)
  local rtn = {}
  for k,v in pairs(p) do
    if type(k) == "string" and type(v) == "function" then
      table.insert(rtn, k)
    end
  end
  return rtn
end

--- Paged print of functions by provided peripheral.
---@param p table @Wrapped peripheral
function peripheralUtil.printFunctions(p)
  local functions = peripheralUtil.getFunctions(p)
  textutils.pagedTabulate(table.unpack(functions))
end

return peripheralUtil

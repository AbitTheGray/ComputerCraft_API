---@class FissionReactor
fissionReactor = {}

---@return table @Coolant type and amount
function fissionReactor.getCoolant() end
---@return number
function fissionReactor.getCoolantCapacity() end
---@return number
function fissionReactor.getCoolantNeeded() end
---@return number
function fissionReactor.getCoolantFilledPercentage() end

---@return table @Heated coolant type and amount
function fissionReactor.getHeatedCoolant() end
---@return number
function fissionReactor.getHeatedCoolantCapacity() end
---@return number
function fissionReactor.getHeatedCoolantNeeded() end
---@return number
function fissionReactor.getHeatedCoolantFilledPercentage() end

---@return table @Fuel type and amount
function fissionReactor.getFuel() end
---@return number
function fissionReactor.getFuelCapacity() end
---@return number
function fissionReactor.getFuelNeeded() end
---@return number
function fissionReactor.getFuelFilledPercentage() end

---@return table @Fuel type and amount
function fissionReactor.getWaste() end
---@return number
function fissionReactor.getWasteCapacity() end
---@return number
function fissionReactor.getWasteNeeded() end
---@return number
function fissionReactor.getWasteFilledPercentage() end

---@return boolean @is reactor running?
function fissionReactor.getStatus() end
--- Deactivate reactor
function fissionReactor.scram() end
--- Activate reactor
function fissionReactor.activate() end

---@return number @rate
function fissionReactor.getBurnRate() end
---@param rate number
function fissionReactor.setBurnRate(rate) end
--- May be lower than `getBurnRate()` in case of not enough fuel.
---@return number @rate
function fissionReactor.getActualBurnRate() end
---@return number @rate
function fissionReactor.getMaxBurnRate() end

---@return number
function fissionReactor.getDamagePercent() end

---@return number
function fissionReactor.getHeatingRate() end

---@return number
function fissionReactor.getEnvironmentalLoss() end

---@return number
function fissionReactor.getTemperature() end

---@return number
function fissionReactor.getHeatCapacity() end

---@return number
function fissionReactor.getFuelAssemblies() end

---@return number
function fissionReactor.getFuelSurfaceArea() end

---@return number
function fissionReactor.getBoilEfficiency() end

--TODO More?

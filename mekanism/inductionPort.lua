---@class InductionPort
local inductionPort = {}

---@return number @0 - 15
function inductionPort.getComparatorLevel() end

---@return number @FE
function inductionPort.getEnergy() end

---@return number @0.0 - 1.0
function inductionPort.getEnergyFilledPercentage() end

--- ???
---@return number
function inductionPort.getEnergyNeeded() end

---@return number
function inductionPort.getHeight() end

---@return table @`count`, `name`
function inductionPort.getInputItem() end

---@return number
function inductionPort.getInstalledCells() end

---@return number
function inductionPort.getInstalledProviders() end

---@return number @FE/t
function inductionPort.getLastInput() end

---@return number @FE/t
function inductionPort.getLastOutput() end

---@return number
function inductionPort.getLength() end

---@return number @FE
function inductionPort.getMaxEnergy() end

---@return table @`x`,`y`,`z`
function inductionPort.getMaxPos() end

---@return table @`x`,`y`,`z`
function inductionPort.getMinPos() end

---@return boolean
function inductionPort.getMode() end

---@return table @`count`, `name`
function inductionPort.getOutputItem() end

---@return number @FE/t
function inductionPort.getTransferCap() end

---@return number
function inductionPort.getWidth() end

---@return boolean
function inductionPort.isFormed() end

---@param mode boolean
function inductionPort.setMode(mode) end



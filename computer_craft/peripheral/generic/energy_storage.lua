--- Methods for interacting with blocks using Forge's energy storage system.
--- This works with energy storage blocks, as well as generators and machines which consume energy.
--- https://tweaked.cc/generic_peripheral/energy_storage.html
--- Requires CC:Tweaked
---@class EnergyStorage
local energy_storage = {}

--- Get the energy of this block.
---@return number @The energy stored in this block, in FE.
function energy_storage.getEnergy() end
--- Get the maximum amount of energy this block can store.
---@return number @The energy capacity of this block.
function energy_storage.getEnergyCapacity() end

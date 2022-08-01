--- https://tweaked.cc/peripheral/computer.html
---@class Computer
local computer = {}

--- Turn the other computer on.
function computer.turnOn() end
--- Shutdown the other computer.
function computer.shutdown() end
--- Reboot or turn on the other computer.
function computer.reboot() end
--- Get the other computer's ID.
---@see os.getComputerID
---@return number @The computer's ID.
function computer.getID() end
--- Determine if the other computer is on.
---@return boolean @If the computer is on.
function computer.isOn() end
--- Get the other computer's label.
---@see os.getComputerLabel
---@return string|nil @The computer's label.
function computer.getLabel() end

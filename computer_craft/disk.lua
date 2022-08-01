--- https://computercraft.info/wiki/Disk_(API)
--- https://tweaked.cc/module/disk.html
---@class Disk
disk = {}

--- Checks whether any item is in a disk drive.
---@param side string
---@return boolean @If something is in the disk drive.
function disk.isPresent(side) end
--- Checks whether a Floppy Disk is in a disk drive.
---@param side string
---@return boolean @hasData
function disk.hasData(side) end
--- Gets the directory name where the contents of the floppy disk can be accessed.
---@param side string
---@return string|nil @path
function disk.getMountPath(side) end
--- Sets the floppy disk's label.
---@param side string
---@param label string
function disk.setLabel(side, label) end
--- Gets the floppy disk's label.
---@param side string
---@return string|nil @label
function disk.getLabel(side) end
--- Gets the floppy disk's unique ID number.
---@param side string
---@return number|nil @id
function disk.getID(side) end
--- Checks whether a music disk is in the drive.
---@param side string
---@return boolean @hasAudio
function disk.hasAudio(side) end
--- Gets the title of the music disc in the drive.
---@param side string
---@return string|nil @title
function disk.getAudioTitle(side) end
--- Starts playing the music disc in the drive.
---@param side string
function disk.playAudio(side) end
--- Stops playing the music disc in the drive.
---@param side string
function disk.stopAudio(side) end
--- Ejects any item currently in the drive, spilling it into the world as a loose item.
---@param side string
function disk.eject(side) end

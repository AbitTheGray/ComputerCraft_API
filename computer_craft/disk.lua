--- https://computercraft.info/wiki/Disk_(API)
---@class Disk
disk = {}

--- Checks whether any item is in a disk drive.
---@param side string
---@return boolean @present
disk.isPresent = function(side) end
--- Checks whether a Floppy Disk is in a disk drive.
---@param side string
---@return boolean @hasData
disk.hasData = function(side) end
--- Gets the directory name where the contents of the floppy disk can be accessed.
---@param side string
---@return string|nil @path
disk.getMountPath = function(side) end
--- Sets the floppy disk's label.
---@param side string
---@param label string
disk.setLabel = function(side, label) end
--- Gets the floppy disk's label.
---@param side string
---@return string|nil @label
disk.getLabel = function(side) end
--- Gets the floppy disk's unique ID number.
---@param side string
---@return number|nil @id
disk.getID = function(side) end
--- Checks whether a music disk is in the drive.
---@param side string
---@return boolean @hasAudio
disk.hasAudio = function(side) end
--- Gets the title of the music disc in the drive.
---@param side string
---@return string|nil @title
disk.getAudioTitle = function(side) end
--- Starts playing the music disc in the drive.
---@param side string
disk.playAudio = function(side) end
--- Stops playing the music disc in the drive.
---@param side string
disk.stopAudio = function(side) end
--- Ejects any item currently in the drive, spilling it into the world as a loose item.
---@param side string
disk.eject = function(side) end

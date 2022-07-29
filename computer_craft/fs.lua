--- https://computercraft.info/wiki/Fs_(API)
---@class Fs
fs = {}

--- Returns a list of all the files (including subdirectories but not their contents) contained in a directory, as a numerically indexed table.
---@param path string
---@return table @files
fs.list = function(path) end
--- Checks if a path refers to an existing file or directory.
---@param path string
---@return boolean @exists
fs.exists = function(path) end
--- Checks if a path refers to an existing directory.
---@param path string
---@return boolean @isDirectory
fs.isDir = function(path) end
--- Checks if a path is read-only (i.e. cannot be modified).
---@param path string
---@return boolean @readonly
fs.isReadOnly = function(path) end
--- Gets the final component of a pathname.
---@param path string
---@return string @name
fs.getName = function(path) end
--- Gets the storage medium holding a path, or nil if the path does not exist.
---@param path string
---@return string|nil @drive
fs.getDrive = function(path) end
--- Gets the size of a file in bytes.
---@param path string
---@return number @size
fs.getSize = function(path) end
--- Gets the remaining space on the drive containing the given directory.
---@param path string
---@return number @size
fs.getFreeSpace = function(path) end
--- Makes a directory.
---@param path string
fs.makeDir = function(path) end
--- Moves a file or directory to a new location.
---@param fromPath string
---@param toPath string
fs.move = function(fromPath, toPath) end
--- Copies a file or directory to a new location.
---@param fromPath string
---@param toPath string
fs.copy = function(fromPath, toPath) end
--- Deletes a file or directory.
---@param path string
fs.delete = function(path) end
--- Combines two path components, returning a path consisting of the local path nested inside the base path.
---@param basePath string
---@param localPath string
---@return string @path
fs.combine = function(basePath, localPath) end
--- Opens a file so it can be read or written.
---@param path string
---@param mode string @ "w", "r", "a" which may be followed by "b" for binary mode
---@return table @handle
fs.open = function(path, mode) end
--- Searches the computer's files using wildcards.
---Requires version 1.6 or later.
---@param wildcard string
---@return table @files
fs.find = function(wildcard) end
--- Returns the parent directory of path.
---Requires version 1.63 or later.
---@param path string
---@return string @parentDirectory
fs.getDir = function(path) end
--- Returns a list of strings that could be combined with the provided name to produce valid entries in the specified folder.
---Requires version 1.74 or later.
---@param partialName string
---@param path string
---@param includeFiles string|nil
---@param includeSlashes string|nil
---@return table @matches
fs.complete = function(partialName, path, includeFiles, includeSlashes) end

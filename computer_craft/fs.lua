--- https://computercraft.info/wiki/Fs_(API)
--- https://tweaked.cc/module/fs.html
---@class Fs
fs = {}

--- Returns true if a path is mounted to the parent filesystem.
--- The root filesystem "/" is considered a mount, along with disk folders and the rom folder. Other programs (such as network shares) can exstend this to make other mount types by correctly assigning their return value for getDrive.
---@param path string
---@throw If the path does not exist.
---@return boolean @If the path is mounted, rather than a normal file/folder.
function fs.isDriveRoot(path) end
--- Provides completion for a file or directory name, suitable for use with _G.read.
--- When a directory is a possible candidate for completion, two entries are included - one with a trailing slash (indicating that entries within this directory exist) and one without it (meaning this entry is an immediate completion candidate). include_dirs can be set to false to only include those with a trailing slash.
---@param path string @The path to complete.
---@param location string @The location where paths are resolved from.
---@param includeFiles string @(OPTIONAL) When false, only directories will be included in the returned list.
---@param includeSlashes string @(OPTIONAL) When false, "raw" directories will not be included in the returned list.
---@return string[] @A list of possible completion candidates.
function fs.complete(path, location, includeFiles, includeSlashes) end
--- Returns a list of all the files (including subdirectories but not their contents) contained in a directory, as a numerically indexed table.
---@param path string
---@throw If the path doesn't exist.
---@return string[] @A table with a list of files in the directory.
function fs.list(path) end
--- Combines several parts of a path into one full path, adding separators as needed.
---@param basePath string
---@param ... string @Additional parts of the path to combine.
---@throw On argument errors.
---@return string @The new path, with separators added between parts as needed.
function fs.combine(basePath, ...) end
--- Gets the final component of a pathname.
---@param path string
---@return string @The final part of the path (the file name).
function fs.getName(path) end
--- Returns the parent directory of path.
---@param path string
---@return string @The path with the final part removed (the parent directory).
function fs.getDir(path) end
--- Gets the size of a file in bytes.
---@param path string
---@throw If the path doesn't exist.
---@return number @size
function fs.getSize(path) end
--- Checks if a path refers to an existing file or directory.
---@param path string
---@return boolean @exists
function fs.exists(path) end
--- Checks if a path refers to an existing directory.
---@param path string
---@return boolean @isDirectory
function fs.isDir(path) end
--- Checks if a path is read-only (i.e. cannot be modified).
---@param path string
---@return boolean @Whether the path cannot be written to.
function fs.isReadOnly(path) end
--- Creates a directory, and any missing parents, at the specified path.
---@param path string @The path to the directory to create.
---@throw If the directory couldn't be created.
function fs.makeDir(path) end
--- Moves a file or directory to a new location.
--- Any parent directories are created as needed.
---@param fromPath string
---@param toPath string
---@throw If the file or directory couldn't be moved.
function fs.move(fromPath, toPath) end
--- Copies a file or directory to a new location.
--- Any parent directories are created as needed.
---@param fromPath string
---@param toPath string
---@throw If the file or directory couldn't be copied.
function fs.copy(fromPath, toPath) end
--- Deletes a file or directory.
--- If the path points to a directory, all of the enclosed files and subdirectories are also deleted.
---@param path string
---@throw If the file or directory couldn't be deleted.
function fs.delete(path) end
--- Opens a file so it can be read or written.
---@param path string
---@param mode string @"w", "r", "a" which may be followed by "b" for binary mode
---@throw If an invalid mode was specified.
---@return FsReadHandle|FsBinaryReadHandle|FsWriteHandle|FsBinaryWriteHandle
function fs.open(path, mode) end
--- Returns the name of the mount that the specified path is located on.
---@param path string
---@throw If the path doesn't exist.
---@return string|nil @The name of the drive that the file is on; e.g. hdd for local files, or rom for ROM files.
function fs.getDrive(path) end
--- Gets the remaining space on the drive containing the given directory.
---@param path string
---@throw If the path doesn't exist.
---@return number|string @The amount of free space available, in bytes, or "unlimited".
function fs.getFreeSpace(path) end
--- Searches for files matching a string with wildcards.
--- This string is formatted like a normal path string, but can include any number of wildcards (*) to look for files matching anything. For example, rom/*/command* will look for any path starting with command inside any subdirectory of /rom.
---@param wildcard string @The wildcard-qualified path to search for.
---@return string[] @A list of paths that match the search string.
function fs.find(wildcard) end
--- Returns the capacity of the drive the path is located on.
---@param path string
---@throw If the capacity cannot be determined.
---@return number|nil @This drive's capacity. This will be nil for "read-only" drives, such as the ROM or treasure disks.
function fs.getCapacity(path) end
--- Get attributes about a specific file or folder.
--- The returned attributes table contains information about the size of the file, whether it is a directory, when it was created and last modified, and whether it is read only.
--- The creation and modification times are given as the number of milliseconds since the UNIX epoch. This may be given to os.date in order to convert it to more usable form.
---@param path string
---@throw If the path does not exist.
---@return table
function fs.attributes(path) end



---@class FsAttribute
local fsAttribute = {}

---@type number
fsAttribute.size = 0
---@type boolean
fsAttribute.isDir = false
---@type boolean
fsAttribute.isReadOnly = false
--- Number of milliseconds since the UNIX epoch.
--- This may be given to os.date in order to convert it to more usable form.
---@type number
fsAttribute.created = 0
--- Number of milliseconds since the UNIX epoch.
--- This may be given to os.date in order to convert it to more usable form.
---@type number
fsAttribute.modified = 0

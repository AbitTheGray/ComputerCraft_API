--- A file handle opened with fs.open with the "r" mode.
--- https://tweaked.cc/module/fs.html
---@class FsReadHandle : FsHandle
local fs_read_handle = {}

--- Read a line from the file.
---@param withTrailing boolean @(OPTIONAL) Whether to include the newline characters with the returned string. Defaults to false.
---@throw If the file has been closed.
---@return string|nil @The read line or nil if at the end of the file.
function fs_read_handle.readLine(withTrailing) end
--- Read the remainder of the file.
---@throw If the file has been closed.
---@return nil|string @The remaining contents of the file, or nil if we are at the end.
function fs_read_handle.readAll() end
--- Read a number of characters from this file.
---@param count number @(OPTIONAL) The number of characters to read, defaulting to 1.
---@throw When trying to read a negative number of characters.
---@throw If the file has been closed.
---@return string|nil @The read characters, or nil if at the of the file.
function fs_read_handle.read(count) end

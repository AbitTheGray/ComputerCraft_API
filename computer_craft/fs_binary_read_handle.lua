--- A file handle opened with fs.open with the "rb" mode.
--- https://tweaked.cc/module/fs.html
---@class FsBinaryReadHandle : FsReadHandle
local fs_binary_read_handle = {}

--- Read a number of bytes from this file.
---@param count number @(OPTIONAL) The number of bytes to read. When absent, a single byte will be read as a number. This may be 0 to determine we are at the end of the file.
---@throw When trying to read a negative number of bytes.
---@throw If the file has been closed.
---@return number|string|nil @The read characters (string when `count` exists, single number when `count` does not exist), or nil if at the of the file.
function fs_read_handle.read(count) end
--- Seek to a new position within the file, changing where bytes are written to. The new position is an offset given by offset, relative to a start position determined by whence.
--- In case of success, seek returns the new file position from the beginning of the file.
---@param whence string @(OPTIONAL) Where the offset is relative to. "set"=beginning of the file, "cur"=current position (default), "end"=end of the file
---@param offset number @(OPTIONAL) The offset to seek to.
---@throw If the file has been closed.
---@return number|nil,string @New position relative to the beginning (or nil on fail), reason of fail
function fs_read_handle.seek(whence, offset) end

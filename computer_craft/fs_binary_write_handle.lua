--- A file handle opened by fs.open using the "wb" or "ab" modes.
--- https://tweaked.cc/module/fs.html
---@class FsBinaryWriteHandle : FsHandle
local fs_write_handle = {}

--- Write a string or byte to the file.
---@param value number|string
---@throw If the file has been closed.
function fs_write_handle.write(value) end
--- Save the current file without closing it.
---@throw If the file has been closed.
function fs_write_handle.flush() end
--- Seek to a new position within the file, changing where bytes are written to. The new position is an offset given by offset, relative to a start position determined by whence.
--- In case of success, seek returns the new file position from the beginning of the file.
---@param whence string @(OPTIONAL) Where the offset is relative to. "set"=beginning of the file, "cur"=current position (default), "end"=end of the file
---@param offset number @(OPTIONAL) The offset to seek to.
---@throw If the file has been closed.
---@return number|nil,string @New position relative to the beginning (or nil on fail), reason of fail
function fs_read_handle.seek(whence, offset) end

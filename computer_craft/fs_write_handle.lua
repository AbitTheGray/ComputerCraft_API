--- A file handle opened by fs.open using the "w" or "a" modes.
--- https://tweaked.cc/module/fs.html
---@class FsWriteHandle : FsHandle
local fs_write_handle = {}

--- Write a string of characters to the file.
---@param value string @The value to write to the file.
---@throw If the file has been closed.
function fs_write_handle.write(value) end
--- Write a string of characters to the file, following them with a new line character.
---@param value string @The value to write to the file.
---@throw If the file has been closed.
function fs_write_handle.writeLine(value) end
--- Save the current file without closing it.
---@throw If the file has been closed.
function fs_write_handle.flush() end

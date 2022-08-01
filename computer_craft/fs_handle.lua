--- A file handle opened with fs.open (shared parent class).
--- https://tweaked.cc/module/fs.html
---@class FsHandle
local fs_handle = {}

--- Close this file, freeing any resources it uses.
--- Once a file is closed it may no longer be read or written to.
---@throw If the file has been closed.
function fs_handle.close() end

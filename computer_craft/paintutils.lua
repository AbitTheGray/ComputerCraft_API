--- https://computercraft.info/wiki/Paintutils_(API)
---@class PaintUtils
paintutils = {}

--- Parses an image from a multi-line string.
---@param image string @The string containing the raw-image data.
---@return table @image
function paintutils.parseImage(image) end
--- Loads an image from a file.
--- You can create a file suitable for being loaded using the paint program.
---@param path string
---@return table|nil @image or nil if the file does not exist.
function paintutils.loadImage(path) end
--- Draws an image at (x, y) where image is an image object.
---@param image table
---@param x number
---@param y number
function paintutils.drawImage(image, x, y) end
--- Draws a pixel at (x, y) in the specified color.
---@param x number
---@param y number
---@param color number @(OPTIONAL)
function paintutils.drawPixel(x, y, color) end
--- Draws a line from (startX, startY) to (endX, endY) in the specified color.
---@param startX number
---@param startY number
---@param endX number
---@param endY number
---@param color number @(OPTIONAL)
function paintutils.drawLine(startX, startY, endX, endY, color) end
--- Draws a box from (startX, startY) to (endX, endY) in the specified color. Requires version 1.64 or newer.
---@param startX number
---@param startY number
---@param endX number
---@param endY number
---@param color number @(OPTIONAL)
function paintutils.drawBox(startX, startY, endX, endY, color) end
--- Draws a filled box from (startX, startY) to (endX, endY) in the specified color. Requires version 1.64 or newer.
---@param startX number
---@param startY number
---@param endX number
---@param endY number
---@param color number @(OPTIONAL)
function paintutils.drawFilledBox(startX, startY, endX, endY, color) end

--- https://computercraft.info/wiki/Paintutils_(API)
---@class PaintUtils
paintutils = {}

--- Loads and returns an image object from path.
---@param path string
---@return table @image
paintutils.loadImage = function(path) end
--- Draws an image at (x, y) where image is an image object.
---@param image table
---@param x number
---@param y number
paintutils.drawImage = function(image, x, y) end
--- Draws a pixel at (x, y) in the specified color.
---@param x number
---@param y number
---@param color number|nil
paintutils.drawPixel = function(x, y, color) end
--- Draws a line from (startX, startY) to (endX, endY) in the specified color.
---@param startX number
---@param startY number
---@param endX number
---@param endY number
---@param color number|nil
paintutils.drawLine = function(startX, startY, endX, endY, color) end
--- Draws a box from (startX, startY) to (endX, endY) in the specified color. Requires version 1.64 or newer.
---@param startX number
---@param startY number
---@param endX number
---@param endY number
---@param color number|nil
paintutils.drawBox = function(startX, startY, endX, endY, color) end
--- Draws a filled box from (startX, startY) to (endX, endY) in the specified color. Requires version 1.64 or newer.
---@param startX number
---@param startY number
---@param endX number
---@param endY number
---@param color number|nil
paintutils.drawFilledBox = function(startX, startY, endX, endY, color) end
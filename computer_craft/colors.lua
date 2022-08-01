--- https://computercraft.info/wiki/Colors_(API)
--- https://tweaked.cc/module/colors.html
---@class Colors
colors = {}
---@class Colours : Colors
colours = colors

--- Combines a set of colors (or sets of colors) into a larger set. Useful for Bundled Cables.
---@param ... number @The colors to combine.
---@return number @The union of the color sets given in ...
function colors.combine(...) end
--- Removes one or more colors (or sets of colors) from an initial set. Useful for Bundled Cables.
--- Each parameter beyond the first may be a single color or may be a set of colors (in the latter case, all colors in the set are removed from the original set).
---@param color number @The color from which to subtract.
---@param ... number @The colors to subtract.
---@return number @The resulting color.
function colors.subtract(color, ...) end
--- Tests whether color is contained within colors. Useful for Bundled Cables.
---@param colors number @A color, or color set
---@param color number @A color or set of colors that colors should contain.
---@return boolean @If colors contains all colors within color.
function colors.test(colors, color) end
--- Combine a three-colour RGB value into one hexadecimal representation.
--- Requires CC:Tweaked
---@param r number @The red channel, should be between 0 and 1.
---@param g number @The green channel, should be between 0 and 1.
---@param b number @The blue channel, should be between 0 and 1.
---@return number @The combined hexadecimal color.
function colors.packRGB(r, g, b) end
--- Separate a hexadecimal RGB colour into its three constituent channels.
--- Requires CC:Tweaked
---@param rgb number @The combined hexadecimal colour.
---@return number,number,number @red,green,blue channgel, will be between 0 and 1.
function colors.unpackRGB(rgb) end
--- Converts the given color to a paint/blit hex character (0-9a-f).
--- This is equivalent to converting floor(log_2(color)) to hexadecimal.
--- Requires CC:Tweaked
---@param color number @The color to convert.
---@return string @The blit hex code of the color.
function colors.toBlit(color) end

colors.white     = 1
colors.orange    = 2
colors.magenta   = 4
colors.lightBlue = 8
colors.yellow    = 16
colors.lime      = 32
colors.pink      = 64
colors.gray      = 128
colors.lightGray = 256
colors.cyan      = 512
colors.purple    = 1024
colors.blue      = 2048
colors.brown     = 4096
colors.green     = 8192
colors.red       = 16384
colors.black     = 32768

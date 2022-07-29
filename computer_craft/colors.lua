--- https://computercraft.info/wiki/Colors_(API)
---@class Colors
colors = {}

---@return number
colors.combine = function(...) end

---@param color number
---@return number
colors.subtract = function(color, ...) end

---@param colors number
---@param color number
---@return number
colors.test = function(colors, color) end

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
--- https://computercraft.info/wiki/Term_(API)
---@class Term
term = {}

---@param text string
term.write = function(text) end

term.clear     = function() end
term.clearLine = function() end

---@return number,number @x,y coordinates
term.getCursorPos = function() end
---@param x number
---@param y number
term.setCursorPos = function(x, y) end

---@param value boolean
term.setCursorBlink = function(value) end

---@return boolean
term.isColor = function() end

---@return number,number @x,y size
term.getSize = function() end

---@param lines number
term.scroll = function(lines) end

---@param target Term
term.redirect = function(target) end

---@return Term
term.current = function() end
---@return Term
term.native = function() end

---@param color number
term.setTextColor = function(color) end
---@return number
term.getTextColor = function() end

---@param color number
term.setBackgroundColor = function(color) end
---@return number
term.getBackgroundColor = function() end

--- Only available to monitors
---@param scale number
term.setTextScale = function(scale) end



---@return boolean
term.getCursorBlink = function() end

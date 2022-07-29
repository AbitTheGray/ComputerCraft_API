--- https://computercraft.info/wiki/Turtle_(API)
---@class Turtle
turtle = {}

---@return boolean @success
function turtle.forward() end
---@return boolean @success
function turtle.back() end
---@return boolean @success
function turtle.up() end
---@return boolean @success
function turtle.down() end
---@return boolean @success
function turtle.turnRight() end
---@return boolean @success
function turtle.turnLeft() end

---@param slot number @slot number 1-16, starting top left, row first (second row starts with 4)
---@return boolean @success
function turtle.select(slot) end
---@return number @slot
function turtle.getSelectedSlot() end
---@param slot number|nil @slot number 1-16
---@return number @current number of items in slot's itemstack
function turtle.getItemCount(slot) end
---@param slot number|nil @slot number 1-16
---@return number @remaining space in slot's itemstack
function turtle.getItemSpace(slot) end
---@param slot number|nil @slot number 1-16
---@return table|nil @`name`, `damage`, `count`
function turtle.getItemDetail(slot) end

---@return boolean @success
turtle.equipLeft  = function() end
---@return boolean @success
turtle.equipRight = function() end

---@param toolSide string @"left" or "right", `nil` to attempt both
---@return boolean @success
turtle.attack     = function(toolSide) end
---@param toolSide string @"left" or "right", `nil` to attempt both
---@return boolean @success
turtle.attackUp   = function(toolSide) end
---@param toolSide string @"left" or "right", `nil` to attempt both
---@return boolean @success
turtle.attackDown = function(toolSide) end

---@param toolSide string @"left" or "right", `nil` to attempt both
---@return boolean @success
turtle.dig     = function(toolSide) end
---@param toolSide string @"left" or "right", `nil` to attempt both
---@return boolean @success
turtle.digUp   = function(toolSide) end
---@param toolSide string @"left" or "right", `nil` to attempt both
---@return boolean @success
turtle.digDown = function(toolSide) end

--- May collect water/lava with empty bucket
---@param signText string
---@return boolean @success
turtle.place     = function(signText) end
---@return boolean @success
turtle.placeUp   = function() end
---@return boolean @success
turtle.placeDown = function() end

--- Does not detect mobs
---@return boolean
turtle.detect     = function() end
---@return boolean
turtle.detectUp   = function() end
---@return boolean
turtle.detectDown = function() end

--- Does not detect mobs
---@return boolean,table|string
turtle.inspect     = function() end
---@return boolean,table|string
turtle.inspectUp   = function() end
---@return boolean,table|string
turtle.inspectDown = function() end

---@return boolean
turtle.compare     = function() end
---@return boolean
turtle.compareUp   = function() end
---@return boolean
turtle.compareDown = function() end

---@param slot number @1-16
---@return boolean
turtle.compareTo = function(slot) end

---@param count number|nil
---@return boolean @success
turtle.drop     = function(count) end
---@param count number|nil
---@return boolean @success
turtle.dropUp   = function(count) end
---@param count number|nil
---@return boolean @success
turtle.dropDown = function(count) end

---@param count number|nil
---@return boolean @success
turtle.suck     = function(count) end
---@param count number|nil
---@return boolean @success
turtle.suckUp   = function(count) end
---@param count number|nil
---@return boolean @success
turtle.suckDown = function(count) end

---@param amount number|nil @Number of items (from current slot) to use as fuel, uses all if not provided with a number
turtle.refuel       = function(amount) end
---@return number|string
turtle.getFuelLevel = function() end
---@return number|string
turtle.getFuelLimit = function() end

---@param slot number
---@param quantity number|nil
---@return boolean @success
turtle.transferTo = function(slot, quantity) end

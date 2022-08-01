--- https://computercraft.info/wiki/Turtle_(API)
---@class Turtle
turtle = {}

--- Move the turtle forward one block.
---@return boolean,string|nil @success, reason of fail
function turtle.forward() end
--- Move the turtle backward one block.
---@return boolean,string|nil @success, reason of fail
function turtle.back() end
--- Move the turtle up one block.
---@return boolean,string|nil @success, reason of fail
function turtle.up() end
--- Move the turtle down one block.
---@return boolean,string|nil @success, reason of fail
function turtle.down() end
--- Rotate the turtle 90 degrees to the left.
---@return boolean,string|nil @success, reason of fail
function turtle.turnRight() end
--- Rotate the turtle 90 degrees to the right.
---@return boolean,string|nil @success, reason of fail
function turtle.turnLeft() end

--- Attempt to break the block in front of the turtle.
--- This requires a turtle tool capable of breaking the block. Diamond pickaxes (mining turtles) can break any vanilla block, but other tools (such as axes) are more limited.
---@param toolSide string @(OPTIONAL) "left" or "right", `nil` (or omitted) to attempt both
---@return boolean,string|nil @success, reason of fail
function turtle.dig(toolSide) end
--- Attempt to break the block above the turtle. See dig for full details.
---@see turtle.dig
---@param toolSide string @(OPTIONAL) "left" or "right", `nil` (or omitted) to attempt both
---@return boolean,string|nil @success, reason of fail
function turtle.digUp(toolSide) end
--- Attempt to break the block below the turtle. See dig for full details.
---@see turtle.dig
---@param toolSide string @(OPTIONAL) "left" or "right", `nil` (or omitted) to attempt both
---@return boolean,string|nil @success, reason of fail
function turtle.digDown(toolSide) end


--- Place a block or item into the world in front of the turtle.
--- "Placing" an item allows it to interact with blocks and entities in front of the turtle. For instance, buckets can pick up and place down fluids, and wheat can be used to breed cows. However, you cannot use place to perform arbitrary block interactions, such as clicking buttons or flipping levers.
---@param signText string @(OPTIONAL) When placing a sign, set its contents to this text.
---@return boolean,string|nil @success, reason of fail
function turtle.place(signText) end
--- Place a block or item into the world above the turtle.
---@see turtle.place
---@param signText string @(OPTIONAL) When placing a sign, set its contents to this text.
---@return boolean,string|nil @success, reason of fail
function turtle.placeUp(signText) end
--- Place a block or item into the world below the turtle.
---@see turtle.place
---@param signText string @(OPTIONAL) When placing a sign, set its contents to this text.
---@return boolean,string|nil @success, reason of fail
function turtle.placeDown(signText) end

--- Drop the currently selected stack into the inventory in front of the turtle, or as an item into the world if there is no inventory.
---@param count number @(OPTIONAL) The number of items to drop. If not given, the entire stack will be dropped.
---@throw If dropping an invalid number of items.
---@return boolean,string|nil @success, reason of fail
function turtle.drop(count) end
--- Drop the currently selected stack into the inventory above the turtle, or as an item into the world if there is no inventory.
---@see turtle.drop
---@param count number @(OPTIONAL) The number of items to drop. If not given, the entire stack will be dropped.
---@throw If dropping an invalid number of items.
---@return boolean,string|nil @success, reason of fail
function turtle.dropUp(count) end
--- Drop the currently selected stack into the inventory in front of the turtle, or as an item into the world if there is no inventory.
---@see turtle.drop
---@param count number @(OPTIONAL) The number of items to drop. If not given, the entire stack will be dropped.
---@throw If dropping an invalid number of items.
---@return boolean,string|nil @success, reason of fail
function turtle.dropDown(count) end

--- Change the currently selected slot.
--- The selected slot is determines what slot actions like drop or getItemCount act on.
---@param slot number @slot number 1-16, starting top left, row first (second row starts with 4)
---@throw If the slot is out of range.
---@return boolean @success
function turtle.select(slot) end
--- Get the currently selected slot.
---@see turtle.select
---@return number @slot
function turtle.getSelectedSlot() end

--- Get the number of items in the given slot.
---@param slot number @(OPTIONAL) Slot number 1-16, defaults to selected slot
---@throw If the slot is out of range.
---@return number @The number of items in this slot.
function turtle.getItemCount(slot) end
--- Get the remaining number of items which may be stored in this stack.
--- For instance, if a slot contains 13 blocks of dirt, it has room for another 51.
---@param slot number @(OPTIONAL) Slot number 1-16, defaults to selected slot
---@throw If the slot is out of range.
---@return number @The space left in in this slot.
function turtle.getItemSpace(slot) end
--- Get detailed information about the items in the given slot.
---@see inventory.getItemDetail
---@param slot number @(OPTIONAL) slot number 1-16
---@param detailed boolean @(OPTIONAL) Whether to include "detailed" information. When true the method will contain much more information about the item at the cost of taking longer to run.
---@throw If the slot is out of range.
---@return table|nil @`name`, `damage`, `count`, Information about the given slot, or nil if it is empty.
function turtle.getItemDetail(slot, detailed) end

--- Check if there is a solid block in front of the turtle. In this case, solid refers to any non-air or liquid block.
--- Does not detect mobs
---@return boolean @If there is a solid block in front.
function turtle.detect() end
--- Check if there is a solid block above the turtle. In this case, solid refers to any non-air or liquid block.
---@see turtle.detect
---@return boolean @If there is a solid block in front.
function turtle.detectUp() end
--- Check if there is a solid block below the turtle. In this case, solid refers to any non-air or liquid block.
---@see turtle.detect
---@return boolean @If there is a solid block in front.
function turtle.detectDown() end

--- Check if the block in front of the turtle is equal to the item in the currently selected slot.
---@return boolean @If the block and item are equal.
function turtle.compare() end
--- Check if the block above the turtle is equal to the item in the currently selected slot.
---@see turtle.compare
---@return boolean @If the block and item are equal.
function turtle.compareUp() end
--- Check if the block below the turtle is equal to the item in the currently selected slot.
---@see turtle.compare
---@return boolean @If the block and item are equal.
function turtle.compareDown() end

--- Attack the entity in front of the turtle.
---@param toolSide string @(OPTIONAL) "left" or "right", `nil` (or omitted) to attempt both
---@return boolean,string|nil @success, reason of fail
function turtle.attack(toolSide) end
--- Attack the entity above the turtle.
---@see turtle.attack
---@param toolSide string @(OPTIONAL) "left" or "right", `nil` (or omitted) to attempt both
---@return boolean,string|nil @success, reason of fail
function turtle.attackUp(toolSide) end
--- Attack the entity below the turtle.
---@see turtle.attack
---@param toolSide string @(OPTIONAL) "left" or "right", `nil` (or omitted) to attempt both
---@return boolean,string|nil @success, reason of fail
function turtle.attackDown(toolSide) end

--- Suck an item from the inventory in front of the turtle, or from an item floating in the world.
--- This will pull items into the first acceptable slot, starting at the currently selected one.
---@param count number @(OPTIONAL) The number of items to suck. If not given, up to a stack of items will be picked up.
---@throw If given an invalid number of items.
---@return boolean,string|nil @success, reason of fail
function turtle.suck(count) end
--- Suck an item from the inventory above the turtle, or from an item floating in the world.
---@see turtle.suck
---@param count number @(OPTIONAL) The number of items to suck. If not given, up to a stack of items will be picked up.
---@throw If given an invalid number of items.
---@return boolean,string|nil @success, reason of fail
function turtle.suckUp(count) end
--- Suck an item from the inventory below the turtle, or from an item floating in the world.
---@see turtle.suck
---@param count number @(OPTIONAL) The number of items to suck. If not given, up to a stack of items will be picked up.
---@throw If given an invalid number of items.
---@return boolean,string|nil @success, reason of fail
function turtle.suckDown(count) end

--- Get the maximum amount of fuel this turtle currently holds.
---@return number|string @The current amount of fuel this turtle has or "unlimited" when turtles do not consume fuel when moving.
function turtle.getFuelLevel() end
--- Get the maximum amount of fuel this turtle can hold.
--- By default, normal turtles have a limit of 20,000 and advanced turtles of 100,000.
---@see turtle.getFuelLevel
---@see turtle.refuel
---@return number|string @The maximum amount of fuel this turtle has or "unlimited" when turtles do not consume fuel when moving.
function turtle.getFuelLimit() end
--- Refuel this turtle.
--- While most actions a turtle can perform (such as digging or placing blocks) are free, moving consumes fuel from the turtle's internal buffer. If a turtle has no fuel, it will not move.
--- refuel refuels the turtle, consuming fuel items (such as coal or lava buckets) from the currently selected slot and converting them into energy. This finishes once the turtle is fully refuelled or all items have been consumed.
---@param amount number @(OPTIONAL) The maximum number of items to consume. One can pass 0 to check if an item is combustable or not.
---@throw If the refuel count is out of range
---@return boolean,string|nil @success, reason of fail
function turtle.refuel(amount) end

--- Compare the item in the currently selected slot to the item in another slot.
---@param slot number @The slot to compare to, 1-16
---@throw If the slot is out of range.
---@return boolean If the two items are equal.
function turtle.compareTo(slot) end

--- Move an item from the selected slot to another one.
---@param slot number @The slot to move this item to, 1-16
---@param quantity number @(OPTIONAL) The maximum number of items to move.
---@throw If the slot is out of range.
---If the number of items is out of range.
---@return boolean @success
function turtle.transferTo(slot, quantity) end

--- Equip (or unequip) an item on the left side of this turtle.
--- This finds the item in the currently selected slot and attempts to equip it to the left side of the turtle. The previous upgrade is removed and placed into the turtle's inventory. If there is no item in the slot, the previous upgrade is removed, but no new one is equipped.
---@return boolean,string|nil @success, reason of fail
function turtle.equipLeft() end
--- Equip (or unequip) an item on the right side of this turtle.
--- This finds the item in the currently selected slot and attempts to equip it to the right side of the turtle. The previous upgrade is removed and placed into the turtle's inventory. If there is no item in the slot, the previous upgrade is removed, but no new one is equipped.
---@return boolean,string|nil @success, reason of fail
function turtle.equipRight() end

--- Get information about the block in front of the turtle.
--- Does not detect mobs
---@return boolean,table|string @success, block information or error message
function turtle.inspect() end
--- Get information about the block above the turtle.
---@return boolean,table|string @success, block information or error message
function turtle.inspectUp() end
--- Get information about the block below the turtle.
---@return boolean,table|string @success, block information or error message
function turtle.inspectDown() end

--- Craft a recipe based on the turtle's inventory.
--- The turtle's inventory should set up like a crafting grid. For instance, to craft sticks, slots 1 and 5 should contain planks. All other slots should be empty, including those outside the crafting "grid".
---@param limit @(OPTIONAL)=64; The maximum number of crafting steps to run.
---@throw When limit is less than 1 or greater than 64.
---@return boolean,string|nil @success, reason of fail
function turtle.craft(limit) end

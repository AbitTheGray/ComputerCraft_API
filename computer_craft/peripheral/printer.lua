--- https://tweaked.cc/peripheral/printer.html
---@class Printer
local printer = {}

--- Writes text to the current page.
---@param ... string|number @The values to write to the page.
---@throw If any values couldn't be converted to a string, or if no page is started.
function printer.write(...) end
--- Returns the current position of the cursor on the page.
---@throw If a page isn't being printed.
---@return number,number @The X,Y position of the cursor.
function printer.getCursorPos() end
--- Sets the position of the cursor on the page.
---@param x number @The X coordinate to set the cursor at.
---@param y number @The Y coordinate to set the cursor at.
---@throw If a page isn't being printed.
function printer.setCursorPos(x, y) end
--- Returns the size of the current page.
---@throw If a page isn't being printed.
---@return number,number @The width,height of the page.
function printer.getPageSize() end
--- Starts printing a new page.
---@return boolean @Whether a new page could be started.
function printer.newPage() end
--- Finalizes printing of the current page and outputs it to the tray.
---@throw If a page isn't being printed.
---@return boolean @Whether the page could be successfully finished.
function printer.endPage() end
--- Sets the title of the current page.
---@param title string|nil @The title to set for the page.
---@throw If a page isn't being printed.
function printer.setPageTitle(title) end
--- Returns the amount of ink left in the printer.
---@return number @The amount of ink available to print with.
function printer.getInkLevel() end
--- Returns the amount of paper left in the printer.
---@return number @The amount of paper available to print with.
function printer.getPaperLevel() end

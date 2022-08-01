--- https://computercraft.info/wiki/Term_(API)
--- https://tweaked.cc/module/term.html
---@class Term
term = {}

--- Get the default palette value for a colour.
---@see term.setPaletteColour
---@param colour number @The colour whose palette should be fetched.
---@throw When given an invalid color.
---@return number,number,number @The red,green,blue channel. Will be between 0 and 1.
function term.nativePaletteColor() end
term.nativePaletteColor = term.nativePaletteColour
--- Write text at the current cursor position, moving the cursor to the end of the text.
--- Unlike functions like write and print, this does not wrap the text - it simply copies the text to the current terminal line.
---@param text string @The text to write.
function term.write(text) end
--- Move all positions up (or down) by y pixels.
--- Every pixel in the terminal will be replaced by the line y pixels below it. If y is negative, it will copy pixels from above instead.
---@param y number @The number of lines to move up by. This may be a negative number.
function term.scroll(y) end
--- Get the position of the cursor.
---@return number,number @x,y coordinates
function term.getCursorPos() end
--- Set the position of the cursor. terminal writes will begin from this position.
---@param x number
---@param y number
function term.setCursorPos(x, y) end
--- Checks if the cursor is currently blinking.
---@return boolean @If the cursor is blinking.
function term.getCursorBlink() end
--- Sets whether the cursor should be visible (and blinking) at the current cursor position.
---@param value boolean @Whether the cursor should blink.
function term.setCursorBlink(value) end
--- Get the size of the terminal.
---@return number,number @x,y size
function term.getSize() end
--- Clears the terminal, filling it with the current background color.
---@see term.clearLine
function term.clear() end
--- Clears the line the cursor is currently on, filling it with the current background color.
---@see term.clear
function term.clearLine() end
--- Return the colour that new text will be written as.
---@see colors
---@return number @The current text color.
function term.getTextColor() end
term.getTextColour = term.getTextColor
--- Set the colour that new text will be written as.
---@see colors
---@param color number @The new text color.
function term.setTextColor(color) end
term.setTextColour = term.setTextColor
--- Return the current background colour. This is used when writing text and clearing the terminal.
---@see colors
---@return number @The current background colour.
function term.getBackgroundColor() end
term.getBackgroundColour = term.getBackgroundColor
--- Set the current background colour. This is used when writing text and clearing the terminal.
---@see colors
---@param color number @The new background colour.
function term.setBackgroundColor(color) end
term.setBackgroundColour = term.setBackgroundColor
--- Determine if this terminal supports color.
--- Terminals which do not support color will still allow writing colored text/backgrounds, but it will be displayed in greyscale.
---@return boolean
function term.isColor() end
term.isColour = term.isColor
--- Writes text to the terminal with the specific foreground and background characters.
--- As with write, the text will be written at the current cursor location, with the cursor moving to the end of the text.
--- `textColour` and `backgroundColour` must both be strings the same length as text. All characters represent a single hexadecimal digit, which is converted to one of CC's colors. For instance, "a" corresponds to purple.
---@see colors.toBlit
---@param text string @The text to write.
---@param textColor string @The corresponding text colours.
---@param backgroundColor string @The corresponding background colours.
---@throw If the three inputs are not the same length.
function term.blit(text, textColor, backgroundColor) end
--- Set the palette for a specific colour.
--- ComputerCraft's palette system allows you to change how a specific colour should be displayed. For instance, you can make colors.red more red by setting its palette to #FF0000. This does now allow you to draw more colours - you are still limited to 16 on the screen at one time - but you can change which colours are used.
---@param index number @The colour whose palette should be changed.
---@param ... number @either single 24-bit integer or 3 components (red,green,blue) between 0 and 1
function term.setPaletteColor(index, ...) end
term.setPaletteColour = term.setPaletteColor
--- Get the current palette for a specific colour.
---@param color number @The colour whose palette should be fetched.
---@return number,number,number @The red,green,blue channel. Will be between 0 and 1.
function term.getPaletteColor(color) end
term.getPaletteColour = term.getPaletteColor
--- Redirects terminal output to a monitor, a window, or any other custom terminal object. Once the redirect is performed, any calls to a "term" function - or to a function that makes use of a term function, as print - will instead operate with the new terminal object.
--- A "terminal object" is simply a table that contains functions with the same names - and general features - as those found in the term table. For example, a wrapped monitor is suitable.
--- The redirect can be undone by pointing back to the previous terminal object (which this function returns whenever you switch).
---@param target Term @The terminal redirect the term API will draw to.
---@return Term @The previous redirect object, as returned by `term.current`.
function term.redirect(target) end
--- Returns the current terminal object of the computer.
---@return Term @The current terminal redirect
function term.current() end
--- Get the native terminal object of the current computer.
--- It is recommended you do not use this function unless you absolutely have to. In a multitasked environment, term.native will not be the current terminal object, and so drawing may interfere with other programs.
---@return Term @The native terminal redirect.
function term.native() end

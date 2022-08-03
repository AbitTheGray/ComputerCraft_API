---@class _G
_G = {}

--- Pauses execution for the specified number of seconds.
--- As it waits for a fixed amount of world ticks, time will automatically be rounded up to the nearest multiple of 0.05 seconds. If you are using coroutines or the parallel API, it will only pause execution of the current thread, not the whole program.
---
--- Because sleep internally uses timers, it is a function that yields. This means that you can use it to prevent "Too long without yielding" errors, however, as the minimum sleep time is 0.05 seconds, it will slow your program down.
---@param time number @The number of seconds to sleep for, rounded up to the nearest multiple of 0.05.
function _G.sleep(time) end

--- Writes a line of text to the screen without a newline at the end, wrapping text if necessary.
---@see _G.print
---@param text string @The text to write to the string
---@return number @The number of lines written
function _G.write(text) end

--- Prints the specified values to the screen separated by spaces, wrapping if necessary. After printing, the cursor is moved to the next line.
---@see _G.write
---@param ... string @The values to print on the screen
---@return number @The number of lines written
function _G.print(...) end

--- Prints the specified values to the screen in red, separated by spaces, wrapping if necessary. After printing, the cursor is moved to the next line.
---@param ... string @The values to print on the screen
function _G.printError(...) end

--- Reads user input from the terminal. This automatically handles arrow keys, pasting, character replacement, history scrollback, auto-completion, and default values.
---@param replaceChar string @(OPTIONAL) A character to replace each typed character with. This can be used for hiding passwords, for example.
---@param history table A table holding history items that can be scrolled back to with the up/down arrow keys. The oldest item is at index 1, while the newest item is at the highest index.
---@param completeFn function|nil @(OPTIONAL) function(partial: string):{ string... } A function to be used for completion. This function should take the partial text typed so far, and returns a list of possible completion options.
---@param default string @(OPTIONAL) Default text which should already be entered into the prompt.
---@return string @The text typed in.
function _G.read(replaceChar, history, completeFn, default) end

--- Stores the current ComputerCraft and Minecraft versions.
--- Outside of Minecraft (for instance, in an emulator) _HOST will contain the emulator's version instead.
_G._HOST = 'ComputerCraft 1.93.0 (Minecraft 1.15.2)'

--- The default computer settings as defined in the ComputerCraft configuration.
--- This is a comma-separated list of settings pairs defined by the mod configuration or server owner. By default, it is empty.
--- An example value to disable autocompletion:
_G._CC_DEFAULT_SETTINGS = 'shell.autocomplete=false,lua.autocomplete=false,edit.autocomplete=false'

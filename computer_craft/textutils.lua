--- https://computercraft.info/wiki/Textutils_(API)
--- https://tweaked.cc/module/textutils.html
---@class Textutils
textutils = {}

--- Slowly writes string text at current cursor position, character-by-character.
--- Like _G.write, this does not insert a newline at the end.
---@param text string @The the text to write to the screen.
---@param rate number @(OPTIONAL) The number of characters to write each second, Defaults to 20.
function textutils.slowWrite(text, rate) end
--- Slowly prints string text at current cursor position, character-by-character.
--- Like print, this inserts a newline after printing.
---@param text string @The the text to write to the screen
---@param rate number @(OPTIONAL) The number of characters to write each second, Defaults to 20.
function textutils.slowPrint(text, rate) end
--- Takes input time and formats it in a more readable format such as `6:30 PM`.
---@param time number @The time to format, as provided by os.time.
---@param twentyFourHour boolean @(OPTIONAL)=false; Whether to format this as a 24-hour clock (18:30) rather than a 12-hour one (6:30 AM)
---@return string @The formatted time
function textutils.formatTime(time, twentyFourHour) end
--- Prints a given string to the display.
--- If the action can be completed without scrolling, it acts much the same as print; otherwise, it will throw up a "Press any key to continue" prompt at the bottom of the display. Each press will cause it to scroll down and write a single line more before prompting again, if need be.
---@param text string @The text to print to the screen.
---@param freeLines number @(OPTIONAL)=0; The number of lines which will be automatically scrolled before the first prompt appears (meaning free_lines + 1 lines will be printed). This can be set to the cursor's y position - 2 to always try to fill the screen. Defaults to 0, meaning only one line is displayed before prompting.
---@return number @Number of lines printed.
function textutils.pagedPrint(text, freeLines) end
--- Prints tables in a structured form.
--- This accepts multiple arguments, either a table or a number. When encountering a table, this will be treated as a table row, with each column width being auto-adjusted.
--- When encountering a number, this sets the text color of the subsequent rows to it.
---@param ... table|number @row or color
function textutils.tabulate(...) end
--- Prints tables in a structured form, stopping and prompting for input should the result not fit on the terminal.
--- This functions identically to textutils.tabulate, but will prompt for user input should the whole output not fit on the display.
---@see textutils.tabulate
---@see textutils.pagedPrint
---@param ... table|number @row or color
function textutils.pagedTabulate(...) end
--- A table representing an empty JSON array, in order to distinguish it from an empty JSON object.
--- The contents of this table should not be modified.
textutils.empty_json_array = {}
--- A table representing the JSON null value.
--- The contents of this table should not be modified.
textutils.json_null = {}
--- Returns a string representation of the data data for storage or transmission.
---@param data any
---@param options table @{ compact? = boolean, allow_repetitions? = boolean }
---@throw If the object contains a value which cannot be serialised. This includes functions and tables which appear multiple times.
---@return string @The serialised representation
function textutils.serialize(data, options) end
textutils.serialise = textutils.serialize
--- Converts a serialised string back into a reassembled Lua object.
--- Used mainly together with textutils.serialize().
---@param serializedData string @The serialised string to deserialize.
---@return any|nil @The serialized string to deserialize or nil when the object could not be deserialized.
function textutils.unserialize(serializedData) end
textutils.unserialise = textutils.unserialize
--- Returns a JSON representation of the given data.
--- This function attempts to guess whether a table is a JSON array or object. However, empty tables are assumed to be empty objects - use textutils.empty_json_array to mark an empty array.
--- This is largely intended for interacting with various functions from the commands API, though may also be used in making http requests.
---@param data any @The value to serialise. Like textutils.serialise, this should not contain recursive tables or functions.
---@param unquoteKeys boolean @(OPTIONAL) Whether to produce NBT-style JSON (non-quoted keys) instead of standard JSON.
---@throw If the object contains a value which cannot be serialised. This includes functions and tables which appear multiple times.
---@return string @The JSON representation of the input.
function textutils.serializeJSON(data, unquoteKeys) end
textutils.serialiseJSON = textutils.serializeJSON
--- Converts a serialised JSON string back into a reassembled Lua object.
--- This may be used with textutils.serializeJSON, or when communicating with command blocks or web APIs.
--- If a null value is encountered, it is converted into nil. It can be converted into textutils.json_null with the parse_null option.
--- If an empty array is encountered, it is converted into textutils.empty_json_array. It can be converted into a new empty table with the parse_empty_array option.
---@param json string @The serialized string to deserialize.
---@param options table @(OPTIONAL) { nbt_style? = boolean, parse_null? = boolean, parse_empty_array? = boolean }
---@return any|nil,string @Deserialized object, error message on fail
function textutils.unserializeJSON(json, options) end
textutils.unserialiseJSON = textutils.unserializeJSON
--- Makes a string safe to encode into a url.
--- Spaces are replaced with +s.
--- Unsafe characters such as '\', '£' and '}' are translated into ASCII code and preceded with a % for transmission.
--- For reference visit: http://www.blooberry.com/indexdot/html/topics/urlencoding.htm
---@param urlUnsafeString string @The string to encode.
---@return string @The encoded string.
function textutils.urlEncode(urlUnsafeString) end
--- Returns a list of strings that could be combined with the provided name to produce valid entries in the specified environment.
--- Requires version 1.74 or later.
---@param partialName string @The partial expression to complete, such as a variable name or table index.
---@param environment table @(OPTIONAL) The table to find variables in, defaulting to the global environment (_G). The function also searches the "parent" environment via the __index metatable field.
---@return table @The (possibly empty) list of completions
function textutils.complete(partialName, environment) end

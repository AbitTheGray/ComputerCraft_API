--- https://computercraft.info/wiki/Gps_(API)
--- https://tweaked.cc/module/gps.html
---@class Gps
gps = {}

--- The channel which GPS requests and responses are broadcast on.
---@type number
gps.CHANNEL_GPS = 65534
--- Tries to retrieve the computer or turtles own location.
---@param timeout number @(OPTIONAL)=2 The maximum time in seconds taken to establish our position.
---@param debug boolean @(OPTIONAL)=false Print debugging messages
---@return number|nil,number|nil,number|nil @x,y,z position, nil if failed to establish
function gps.locate(timeout) end

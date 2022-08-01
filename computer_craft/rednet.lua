--- Several rednet messages accept "protocol"s - simple string names describing what a message is about. When sending messages using rednet.send and rednet.broadcast, you can optionally specify a protocol for the message. This same protocol can then be given to rednet.receive, to ignore all messages not using this protocol.
--- It's also possible to look-up computers based on protocols, providing a basic system for service discovery and DNS. A computer can advertise that it supports a particular protocol with rednet.host, also providing a friendly "hostname". Other computers may then find all computers which support this protocol using rednet.lookup.
--- https://computercraft.info/wiki/Rednet_(API)
--- https://tweaked.cc/module/rednet.html
---@deprecated Use `modem` peripheral API
---@class Rednet
rednet = {}

--- The channel used by the Rednet API to broadcast messages.
rednet.CHANNEL_BROADCAST = 65535
--- The channel used by the Rednet API to repeat messages.
rednet.CHANNEL_REPEAT = 65533
--- The number of channels rednet reserves for computer IDs. Computers with IDs greater or equal to this limit wrap around to 0.
rednet.MAX_ID_CHANNELS = 65500

--- Opens a modem with the given peripheral name, allowing it to send and receive messages over rednet.
--- This will open the modem on two channels: one which has the same ID as the computer, and another on the broadcast channel.
---@see rednet.close
---@see rednet.isOpen
---@param side string
---@throw If there is no such modem with the given name
function rednet.open(side) end
--- Tells the computer that the side can no longer be used for networking.
---@see rednet.open
---@see rednet.isOpen
---@param side string
---@throw If there is no such modem with the given name
function rednet.close(side) end
--- Determine if rednet is currently open.
---@see rednet.open
---@see rednet.close
---@param side string
---@return boolean If the given modem is open.
function rednet.isOpen(side) end
--- Allows a computer or turtle with an attached modem to send a message intended for a sycomputer with a specific ID. At least one such modem must first be opened before sending is possible.
--- Assuming the target was in range and also had a correctly opened modem, the target computer may then use rednet.receive to collect the message.
---@see rednet.receive
---@param receiverID number @The ID of the receiving computer.
---@param message number|boolean|string|table @ The message to send. Like with modem.transmit, this can contain any primitive type (numbers, booleans and strings) as well as tables. Other types (like functions), as well as metatables, will not be transmitted.
---@param protocol string @(OPTIONAL) The "protocol" to send this message under. When using rednet.receive one can filter to only receive messages sent under a particular protocol.
---@return boolean @If this message was successfully sent (i.e. if rednet is currently open). Note, this does not guarantee the message was actually received.
function rednet.send(receiverID, message, protocol) end
--- Broadcasts a string message over the predefined CHANNEL_BROADCAST channel. The message will be received by every device listening to rednet.
---@param message number|boolean|string|table @Message to send
---@param protocol string @(OPTIONAL) The "protocol" to send this message under. When using rednet.receive one can filter to only receive messages sent under a particular protocol.
function rednet.broadcast(message, protocol) end
--- Waits until a rednet message of the specified protocol has been received, or until timeout seconds have passed.
--- Leave all arguments empty to wait for any message indefinitely.
--- If only a single, numerical argument is passed, will wait that many seconds for a message of any protocol.
--- Versions of ComputerCraft prior to 1.6 may return the distance to the transmitting computer - 1.6 or later returns message protocols instead, though distance can still be obtained via direct use of the Modem API.
---@return number|nil,number|boolean|string|table,string @senderID,message,protocol
---@param protocolFilter string|nil
---@param timeout number|nil
function rednet.receive(protocolFilter, timeout) end
--- Register the system as "hosting" the desired protocol under the specified name. If a rednet lookup is performed for that protocol (and maybe name) on the same network, the registered system will automatically respond via a background process, hence providing the system performing the lookup with its ID number.
--- Multiple computers may not register themselves on the same network as having the same names against the same protocols, and the title localhost is specifically reserved. They may, however, share names as long as their hosted protocols are different, or if they only join a given network after "registering" themselves before doing so (eg while offline or part of a different network).
---@see rednet.unhost
---@see rednet.lookup
---@throw If trying to register a hostname which is reserved, or currently in use.
---@param protocol string @The protocol this computer provides.
---@param hostname string @The name this protocol exposes for the given protocol.
function rednet.host(protocol, hostname) end
--- Stop hosting a specific protocol, meaning it will no longer respond to rednet.lookup requests.
---@param protocol string @The protocol to unregister your self from.
function rednet.unhost(protocol) end
--- Search the local rednet network for systems hosting the desired protocol and returns any computer IDs that respond as "registered" against it.
--- If a hostname is specified, only one ID will be returned (assuming an exact match is found).
---@param protocol string @The protocol to search for.
---@param hostname string @(OPTIONAL) The hostname to search for.
---@return number... @IDs; or The computer ID with the provided hostname and protocol, or nil if none exists.
function rednet.lookup(protocol, hostname) end
--- Internal use function - runs automatically and does not need to be called directly.
--- Waits for modem_message events to appear within the event queue and generates corresponding rednet_message events for use with this API.
--- Also responds to rednet.lookup() requests.
function rednet.run() end

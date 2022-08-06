--- https://docs.srendi.de/1.16/peripherals/chat_box/
--- `chatBox`
---@class ChatBox
local chatBox = {}

--- Broadcasts a message to the global chat.
---@param message string
---@param prefix string @"author", will be printed in square brackets
function chatBox.sendMessage(message, prefix) end
--- Broadcasts a text component message to the global chat.
---@param jsonObject string
---@param prefix string @"author", will be printed in square brackets
function chatBox.sendFormattedMessage(jsonObject, prefix) end

--- Sends a message to one specific player.
---@param message string
---@param prefix string @"author", will be printed in square brackets
function chatBox.sendMessageToPlayer(message, player, prefix) end
--- Sends a text component message to one specific player.
---@param jsonObject string
---@param prefix string @"author", will be printed in square brackets
function chatBox.sendFormattedMessageToPlayer(jsonObject, player, prefix) end

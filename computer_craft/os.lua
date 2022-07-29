--- https://computercraft.info/wiki/OS_(API)
---@class Os
os = {}

--- Returns the version of the OS the computer is running, which (for CraftOS) also contains the version of ComputerCraft.
---@return string @version
os.version = function() end
--- Returns the unique ID of this computer.
--- os.computerID() also behaves exactly the same as os.getComputerID().
---@return number @id
os.getComputerID = function() end
--- Returns the label of this computer.
--- os.computerLabel() also behaves exactly the same as os.getComputerLabel().
---@return string|nil @label
os.getComputerLabel = function() end
--- Set the label of this computer.
---@param label string|nil
os.setComputerLabel = function(label) end
--- An advanced way of starting programs.
--- A started program will have a given environment table which determines what functions it has available, as well as any variables it will be able to access by default.
--- You may prefer to use the Shell (API) unless you need to do something special.
---@param environment table
---@param programPath string
---@return boolean @success
os.run = function(environment, programPath, ...) end
--- Loads a Lua script as an API in its own namespace. It will be available to all programs that run on the terminal.
---@param path string
---@return boolean @success
os.loadAPI = function(path) end
--- Unloads a previously loaded API.
---@param name string
os.unloadAPI = function(name) end
--- Blocks until the computer receives an event, or if target-event is specified, will block until an instance of target-event occurs.
--- os.pullEvent(target-event) returns the event and any parameters the event may have.
--- If a target-event is specified, the computer will not break for any other events (except termination).
---@param targetEvent string
---@return string,... @event,params...
os.pullEvent = function(targetEvent) end
--- Advanced version of pullEvent().
--- Blocks until the computer receives an event, or if target-event is specified, will block until an instance of target-event occurs.
--- os.pullEventRaw(target-event) returns the event and any parameters the event may have.
--- Unlike os.pullEvent(target-event), this function will not raise an error if a 'terminate' event is received.
---@param targetEvent string
---@return string,... @event,params...
os.pullEventRaw = function(targetEvent) end
--- Adds an event to the event queue with the name event and the given parameters.
---@param event string
os.queueEvent = function(event, ...) end
--- Returns the amount of time since the in-game computer was started.
---@return number @time
os.clock = function() end
--- Queues an event to be triggered after a number of seconds (timeout).
--- The ID of the timer is returned from this function to differentiate multiple timers.
--- Timers are one-shot; once they have fired an event you will need to start another one if you need a recurring timer.
---@param timeout number
---@return number @timerID
os.startTimer = function(timeout) end
--- Cancels a running timer, to prevent it throwing an event.
---@param timerID number
os.cancelTimer = function(timerID) end
--- Returns the current in-game time.
---@return number @time
os.time = function() end
--- Makes the system wait a number of seconds before continuing in the program.
--- os.sleep(time) may also be used as simply "sleep(time)".
---@param time number
os.sleep = function(time) end
--- Return the current in-game day (the number of in-game days since the world was created).
---@return number @day
os.day = function() end
--- Queues an event to be triggered at the specified in-game time.
---@param time number
---@return number @alarmID
os.setAlarm = function(time) end
--- Cancels a pending alarm, to prevent it throwing an event.
---@param alarmID number
os.cancelAlarm = function(alarmID) end
--- Turns off the computer.
os.shutdown = function() end
--- Reboots the computer.
os.reboot = function() end

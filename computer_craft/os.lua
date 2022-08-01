--- https://computercraft.info/wiki/OS_(API)
--- https://tweaked.cc/module/os.html
---@class Os
os = {}


--- Blocks until the computer receives an event, or if target-event is specified, will block until an instance of target-event occurs.
--- os.pullEvent(target-event) returns the event and any parameters the event may have.
--- If a target-event is specified, the computer will not break for any other events (except termination).
---@param targetEvent string
---@return string,... @event,params...
function os.pullEvent(targetEvent) end
--- Advanced version of pullEvent().
--- Blocks until the computer receives an event, or if target-event is specified, will block until an instance of target-event occurs.
--- os.pullEventRaw(target-event) returns the event and any parameters the event may have.
--- Unlike os.pullEvent(target-event), this function will not raise an error if a 'terminate' event is received.
---@param targetEvent string
---@return string,... @event,params...
function os.pullEventRaw(targetEvent) end
--- Makes the system wait a number of seconds before continuing in the program.
--- os.sleep(time) may also be used as simply "sleep(time)".
---@param time number
function os.sleep(time) end
--- Returns the version of the OS the computer is running, which (for CraftOS) also contains the version of ComputerCraft.
---@return string @"CraftOS 1.8"
function os.version() end
--- An advanced way of starting programs.
--- A started program will have a given environment table which determines what functions it has available, as well as any variables it will be able to access by default.
--- You may prefer to use the Shell (API) unless you need to do something special.
---@see shell.run
---@param environment table
---@param programPath string
---@param ... any
---@return boolean @success
function os.run(environment, programPath, ...) end
--- Adds an event to the event queue with the name event and the given parameters.
---@see os.pullEvent
---@param event string
---@param ... any
function os.queueEvent(event, ...) end
--- Queues an event to be triggered after a number of seconds (timeout).
--- The ID of the timer is returned from this function to differentiate multiple timers.
--- Timers are one-shot; once they have fired an event you will need to start another one if you need a recurring timer.
---@param timeout number
---@return number @timerID
function os.startTimer(timeout) end
--- Cancels a running timer, to prevent it throwing an event.
---@param timerID number
function os.cancelTimer(timerID) end
--- Queues an event to be triggered at the specified in-game time.
---@param time number
---@return number @alarmID
function os.setAlarm(time) end
--- Cancels a pending alarm, to prevent it throwing an event.
---@param alarmID number
function os.cancelAlarm(alarmID) end
--- Turns off the computer.
function os.shutdown() end
--- Reboots the computer.
function os.reboot() end
--- Returns the unique ID of this computer.
--- os.computerID() also behaves exactly the same as os.getComputerID().
---@return number @id
function os.getComputerID() end
os.computerID = os.getComputerID
--- Returns the label of this computer.
--- os.computerLabel() also behaves exactly the same as os.getComputerLabel().
---@return string|nil @label
function os.getComputerLabel() end
os.computerLabel = os.getComputerLabel
--- Set the label of this computer.
---@param label string @(OPTIONAL)
function os.setComputerLabel(label) end
--- Returns the number of seconds that the computer has been running.
---@return number @seconds
function os.clock() end
--- Current time depending on the string passed in. This will always be in the range [0.0, 24.0).
---@see textutils.formatTime
---@param locale string @(OPTIONAL)="ingame"; "ingame"=current world, "utc"=UTC time, "local"=server's timezone
---@param locale table @(OPTIONAL) Table returned from `os.date`, which will convert the date fields into a UNIX timestamp (number of seconds since 1 January 1970).
---@throw If an invalid locale is passed.
---@return number @hour in range [0.0, 24.0)
---@return table @UNIX timestamp from table
function os.time(locale) end
--- Number of days depending on the locale specified.
---@param locale string @(OPTIONAL)="ingame"; "ingame"=world creation, "utc"=UTC from 1970/1/1, "local"=server's timezone from 1970/1/1
---@throw If an invalid locale is passed.
---@return number @The day depending on the selected locale.
function os.day(locale) end
--- Number of milliseconds since an epoch depending on the locale.
---@param locale string @(OPTIONAL)="ingame"; "ingame"=world creation, "utc"=UTC from 1970/1/1, "local"=server's timezone from 1970/1/1
---@throw If an invalid locale is passed.
---@return number @The milliseconds since the epoch depending on the selected locale.
function os.epoch(locale) end
--- Returns a date string (or table) using a specified format string and optional time to format.
--- The format string takes the same formats as C's strftime function (http://www.cplusplus.com/reference/ctime/strftime/). In extension, it can be prefixed with an exclamation mark (!) to use UTC time instead of the server's local timezone.
--- If the format is exactly *t (optionally prefixed with !), a table will be returned instead. This table has fields for the year, month, day, hour, minute, second, day of the week, day of the year, and whether Daylight Savings Time is in effect. This table can be converted to a UNIX timestamp (days since 1 January 1970) with date.
---@param format string @The format of the string to return. This defaults to %c, which expands to a string similar to "Sat Dec 24 16:58:00 2011".
---@param time number @(OPTIONAL) The time to convert to a string. This defaults to the current time.
---@throw If an invalid format is passed.
---@return string
function os.date(format, time) end

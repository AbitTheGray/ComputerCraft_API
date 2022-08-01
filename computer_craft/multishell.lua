--- https://computercraft.info/wiki/Multishell_(API)
--- https://tweaked.cc/module/multishell.html
---@class Multishell
multishell = {}

--- Get the currently visible process. This will be the one selected on the tab bar.
--- Note, this is different to getCurrent, which returns the process which is currently executing.
---@see multishell.setFocus
---@return number @THe currently visible process's index.
function multishell.getFocus() end
--- Change the currently visible process.
---@see multishell.getFocus
---@param id number @THe process index to switch to.
---@return boolean @If the process was changed successfully. This will return false if there is no process with this id.
function multishell.setFocus(id) end
--- Get the title of the given tab.
--- This starts as the name of the program, but may be changed using multishell.setTitle.
---@param id number @The process index.
---@return string|nil @The current process title, or nil if the process doesn't exist.
function multishell.getTitle(id) end
--- Set the title of the given process.
---@param id number @The process index.
---@param title string @The new process title.
function multishell.setTitle(id, title) end
--- Get the index of the currently running process.
---@return number @The currently running process.
function multishell.getCurrent() end
--- Start a new process, with the given environment, program and arguments.
--- The returned process index is not constant over the program's run. It can be safely used immediately after launching (for instance, to update the title or switch to that tab). However, after your program has yielded, it may no longer be correct.
---@param env table @The environment to load the path under.
---@param program_path @The path to the program to run
---@param ... string @Additional arguments to pass to the program.
function multishell.launch(env, program_path, ...) end
--- Get the number of processes within this multishell.
---@return number @The number of processes.
function multishell.getCount() end

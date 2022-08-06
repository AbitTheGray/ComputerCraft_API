--- https://computercraft.info/wiki/Shell_(API)
--- https://tweaked.cc/module/shell.html
---@class Shell
shell = {}

--- Run a program with the supplied arguments.
--- Unlike shell.run, each argument is passed to the program verbatim. While shell.run("echo", "b c") runs echo with b and c, shell.execute("echo", "b c") runs echo with a single argument b c.
---@see shell.run
---@param command string @The program to execute.
---@param ... string @Arguments to the program.
---@return boolean @Whether the program exited successfully.
function shell.execute(command, ...) end
--- Run a program with the supplied arguments.
--- All arguments are concatenated together and then parsed as a command line. As a result, shell.run("program a b") is the same as shell.run("program", "a", "b").
---@see shell.execute
---@param ... string @The program to run and its arguments.
---@return boolean @Whether the program exited successfully.
function shell.run(...) end
--- Exit the current shell.
--- This does not terminate your program, it simply makes the shell terminate after your program has finished. If this is the toplevel shell, then the computer will be shutdown.
function shell.exit() end
--- Return the current working directory. This is what is displayed before the > of the shell prompt, and is used by shell.resolve to handle relative paths.
---@see shell.setDir
---@return string @The current working directory.
function shell.dir() end
--- Set the current working directory.
---@see shell.setDir
---@param dir string @The new working directory.
---@throw If the path does not exist or is not a directory.
function shell.setDir(dir) end
--- Set the path where programs are located.
--- The path is composed of a list of directory names in a string, each separated by a colon (:). On normal turtles will look in the current directory (.), /rom/programs and /rom/programs/turtle folder, making the path .:/rom/programs:/rom/programs/turtle.
---@see shell.setPath
---@return string @The current shell's path.
function shell.path() end
--- Set the current program path.
--- Be careful to prefix directories with a /. Otherwise they will be searched for from the current directory, rather than the computer's root.
---@see shell.path
---@param path string @The new program path.
function shell.setPath(path) end
--- Resolve a relative path to an absolute path.
--- The fs and io APIs work using absolute paths, and so we must convert any paths relative to the current directory to absolute ones. This does nothing when the path starts with /.
---@param path string @The path to resolve.
---@return string
function shell.resolve(path) end
--- Resolve a program, using the program path and list of aliases.
---@param command string @The name of the program
---@return string|nil @The absolute path to the program, or nil if it could not be found.
function shell.resolveProgram(command) end
--- Return a list of all programs on the path.
---@param include_hidden boolean @(OPTIONAL) Include hidden files. Namely, any which start with `.`.
---@return string[] @A list of available programs.
function shell.programs(include_hidden) end
--- Complete a shell command line.
--- This accepts an incomplete command, and completes the program name or arguments. For instance, l will be completed to ls, and ls ro will be completed to ls rom/.
--- Completion handlers for your program may be registered with shell.setCompletionFunction.
---@param sLine string @The input to complete.
---@return string[]|nil @The list of possible completions.
function shell.complete(sLine) end
--- Complete the name of a program.
---@param program string @The name of a program to complete.
---@return string[] @A list of possible completions.
function shell.completeProgram(program) end
--- Set the completion function for a program. When the program is entered on the command line, this program will be called to provide auto-complete information.
--- The completion function accepts four arguments:
---  1. The current shell. As completion functions are inherited, this is not guaranteed to be the shell you registered this function in.
---  2. The index of the argument currently being completed.
---  3. The current argument. This may be the empty string.
---  4. A list of the previous arguments.
--- For instance, when completing pastebin put rom/st our pastebin completion function will receive the shell API, an index of 2, rom/st as the current argument, and a "previous" table of { "put" }. This function may then wish to return a table containing artup.lua, indicating the entire command should be completed to pastebin put rom/startup.lua.
--- You completion entries may also be followed by a space, if you wish to indicate another argument is expected.
---@param program string @The path to the program. This should be an absolute path without the leading `/`.
---@param complete function|nil @The completion function: function(shell: table, index: number, argument: string, previous: { string }):{ string }
function shell.setCompletionFunction(program, complete) end
--- Get a table containing all completion functions.
--- This should only be needed when building custom shells. Use setCompletionFunction to add a completion function.
---@return table @A table mapping the absolute path of programs, to their completion functions.
function shell.getCompletionInfo() end
--- Returns the path to the currently running program.
---@return string @The absolute path to the running program.
function shell.getRunningProgram() end
--- Add an alias for a program.
---@see shell.clearAlias
---@see shell.aliases
---@param command string @The name of the alias to add.
---@param program string @The name or path to the program.
function shell.setAlias(command, program) end
--- Remove an alias.
---@see shell.setAlias
---@see shell.aliases
---@param command string @The alias name to remove.
function shell.clearAlias(command) end
--- Get the current aliases for this shell.
--- Aliases are used to allow multiple commands to refer to a single program. For instance, the list program is aliased dir or ls. Running ls, dir or list in the shell will all run the list program.
---@see shell.setAlias
---@see shell.clearAlias
---@see shell.resolveProgram
---@return table @Where the keys are the names of aliases, and the values are the path to the program.
function shell.aliases() end
--- Open a new multishell tab running a command.
--- This behaves similarly to shell.run, but instead returns the process index.
--- This function is only available if the multishell API is.
---@param ... string @The command line to run.
---@return number @id
function shell.openTab(...) end
--- Switch to the multishell tab with the given index.
---@param id number @The tab to switch to.
function shell.switchTab(id) end

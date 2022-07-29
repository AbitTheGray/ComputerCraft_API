---@class TermUtil
termUtil = {}

--- Writes a line on a terminal, ending on next line.
--- Use to write empty characters over previous text (if it was longer) as a "clear".
---@param term Term
---@param msg string
---@param maxLength number|nil @maximum length of the text, possible padding. uses screen size when `nil`
function termUtil.printLine(term, msg, maxLength)
  if term == nil then
    term = _G.term
  end
  if term == nil then
    return
  end

  local cx, cy = term.getCursorPos()
  local width, _ = term.getSize()
  if maxLength == nil then
    maxLength = width - cx
  end

  if msg ~= nil then
    if #msg > maxLength then
      term.write(msg:sub(maxLength))
    else
      term.write(padRight(msg, maxLength))
    end
  end
  term.setCursorPos(1, cy + 1)
end
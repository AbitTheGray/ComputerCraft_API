---@class RoundList
roundList = {}

---@return any,number
function roundList:next()
  -- No items
  if #self == nil or #self == 0 then
    return nil, 1
  end

  local current = self.index

  -- Next index
  if current == nil then
    current = 0
  end
  current = current + 1
  -- Loop back at the begining
  if #self > current then
    current = 1
  end

  self.index = current
  return self[current], current
end

---@param value val
function roundList:add(value)
  -- No items
  if #self == nil or #self == 0 then
    return
  end

  local current = self.index
  if current == nil then
    current = 1
  end
  assert(value ~= nil)

  -- Previous item (last from current position)
  current = current - 1
  if current < 1 then
    current = #self
  end

  current = value
  return current
end

---@param size number
---@param default any
---@return RoundList
function roundList.new(size, default)
  local list = {}
  for i = 1, size do
    list[i] = default
  end
  list.next = roundList.next
  list.add  = roundList.add
  return list
end

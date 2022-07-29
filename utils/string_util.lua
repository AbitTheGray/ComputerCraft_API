---@class StringUtil
stringUtil = {}

--- Text on right, space padding on left.
--- No padding performed for `#str > length`.
---@param str string
---@param length number
function stringUtil.padLeft(str, length)
  while #str < length do
    str = " "..str
  end
  return str
end

--- Text on left, space padding on right.
--- No padding performed for `#str > length`.
---@param str string
---@param length number
function stringUtil.padRight(str, length)
  while #str < length do
    str = str.." "
  end
  return str
end

--- Centers text in the specified length, right preferred.
--- No padding performed for `#str > length`.
---@param str string
---@param length number
function stringUtil.padBoth(str, length)
  return padRight(padLeft(str, length - math.floor((length - #str) / 2)), length)
end

--- Converts numeric value into up to 3 numeric characters with abbreviation character at the end.
--- Prefixed with `-` for negative numbers.
--- Works only for whole numbers or single digit after decimal point.
---@param amount number
---@return string @0, 0k, 0.1k - up to 5 characters
function stringUtil.formatHuman(amount)
  -- k = kilo
  -- M = mega
  -- G = giga
  -- T = tera
  -- P = peta
  -- E = exa
  -- Z = zetta
  -- Y = yotta
  local suffix = { "", "k", "M", "G", "T", "P", "E", "Z", "Y" }
  local suffixIndex = 1

  local negative = amount < 0
  local negativePrefix = negative and "-" or ""
  if negative then
    amount = -amount
  end

  if amount == 0 then
    return "0"
  end

  while suffixIndex <= #suffix do
    if amount < 10 then -- 0.0 - 9.9
      if amount == math.floor(amount) then
        return negativePrefix..math.floor(amount)..suffix[suffixIndex]
      else
        return negativePrefix..math.floor(amount).."."..math.floor((amount * 10) % 10)..suffix[suffixIndex]
      end
    end
    if amount < 1000 then -- 1,000,000
      return negativePrefix..math.floor(amount)..suffix[suffixIndex]
    end

    amount = amount / 1000
    suffixIndex = suffixIndex + 1
  end

  return negativePrefix.."???"
end
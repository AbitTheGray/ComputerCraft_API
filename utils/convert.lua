---@class Convert
convert = {}

--- Converts between 2 energy unit
---@param amount number
---@param from string|nil @unit, default FE
---@param to string|nil @unit, default FE
---@return number
function convert.energy(amount, from, to)
  if from == nil then
    from = "FE"
  end
  if to == nil then
    to = "FE"
  end
  if from == to then
    return amount
  end
  -- https://gist.github.com/DeflatedPickle/403e1eb0bb0bed7f2509142e63630726/
  tableFrom = {}
  tableFrom["AM"] = 20 -- Anima
  tableFrom["EU"] = 4 -- Energy Units
  tableFrom["FE"] = 1 -- Forge Energy
  tableFrom["CF"] = 1 -- Crystal Flux
  tableFrom["gJ"] = 0.652 -- Galacticraft Joules
  tableFrom["J"]  = 0.4 -- Joules
  tableFrom["MJ"] = 10 -- Minecraft Joules
  tableFrom["RF"] = 1 -- Redstone Flux
  tableFrom["T"]  = 1 -- Teslas
  tableFrom["8I"] = 2 -- Micro Infinity
  tableFrom["IF"] = 1 -- Immersive Flux

  local valueFrom = tableFrom[from]
  if valueFrom == nil then
    return nil
  end

  local valueTo   = tableFrom[to]
  if valueTo == nil then
    return nil
  end

  return amount * valueFrom * (1 / valueTo)
end
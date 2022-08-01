--- A basic 3D vector type and some common vector operations. This may be useful when working with coordinates in Minecraft's world (such as those from the gps API).
--- https://tweaked.cc/module/vector.html
---@class Vector
vector = {}

--- Construct a new Vector with the given coordinates.
---@param x number @The X coordinate or direction of the vector.
---@param y number @The Y coordinate or direction of the vector.
---@param z number @The Z coordinate or direction of the vector.
---@return Vector
function vector.new(x, y, z) end

--- Adds two vectors together.
---@param o Vector @The second vector to add.
---@return Vector @The resulting vector.
function vector:add(o) end
--- Subtracts one vector from another.
---@param o Vector @The vector to subtract.
---@return Vector @The resulting vector.
function vector:sub(o) end
--- Multiplies a vector by a scalar value.
---@param m number @The scalar value to multiply with.
---@return Vector @A vector with value (x * m, y * m, z * m).
function vector:mul(m) end
--- Divides a vector by a scalar value.
---@param m number @The scalar value to divide by.
---@return Vector @A vector with value (x / m, y / m, z / m).
function vector:div(m) end
--- Negate a vector.
---@return Vector @The negated vector.
function vector:unm() end
--- Compute the dot product of two vectors.
---@param o Vector @The second vector to compute the dot product of.
---@return Vector @The dot product of self and o.
function vector:dot(o) end
--- Compute the cross product of two vectors.
---@param o Vector @The second vector to compute the cross product of.
---@return Vector @The cross product of self and o.
function vector:cross(o) end
--- Get the length (also referred to as magnitude) of this vector.
---@return number @The length of this vector.
function vector:length() end
--- Divide this vector by its length, producing with the same direction, but of length 1.
---@return Vector @The normalised vector
function vector:normalize() end
--- Construct a vector with each dimension rounded to the nearest value.
---@param tolerance number @(OPTIONAL)=1; The tolerance that we should round to, defaulting to 1. For instance, a tolerance of 0.5 will round to the nearest 0.5.
---@return Vector @The rounded vector
function vector:round(tolerance) end
--- Convert this vector into a string, for pretty printing.
---@return string @This vector's string representation.
function vector:tostring() end
--- Check for equality between two vectors.
---@param other Vector @The second vector to compare to.
---@return boolean @Whether or not the vectors are equal.
function vector:equals(other) end

-----------------------------------------------
-- Function to find the max value - variadic
-----------------------------------------------
function find_max(...)
  local n = 0
  local arguments = {...}
  local max = arguments[1]
  for i, num in ipairs(arguments) do
    if num > max then
      max = num
    end
    n = n + 1
  end
  return n, max
end

-----------------------------------------------
-- Ask for the max value of a list of integers
-----------------------------------------------
local n, max = find_max(5,7,3,3)

print("The maximum out of "..n.." values was "..max)

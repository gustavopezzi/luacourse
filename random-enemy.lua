-- Use a different seed every time we start
math.randomseed(os.time())

-- Set position of the hero
local player_x, player_y = 400, 300

local num_enemies = 0

while num_enemies < 500 do
  -- Get random enemy position for a 800x600 resolution
  local enemy_x = math.random(0, 800) -- random x value
  local enemy_y = math.random(0, 600) -- random y value

  if (player_x == enemy_x or player_y == enemy_y) then
    print("Enemy and player position clashed!");
  else
    -- Display the two random values
    print("Enemy "..(num_enemies+1)..":("..enemy_x..","..enemy_y..")")
    
    -- makes sure we increment the number of enemies
    num_enemies = num_enemies + 1 
  end
end

print("Thank you, goodbye!")

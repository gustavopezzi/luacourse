-------------------------------------------------
-- Initialize the seed for the random generator 
-------------------------------------------------
math.randomseed(os.time())

-------------------------------------------------
-- Function to show the menu on the screen
-------------------------------------------------
function display_menu()
  -- Display a menu on the console
  print("+----------------------------------")
  print("| Welcome, "..os.date())
  print("+----------------------------------")
  print("| 1.Generate random enemy position")
  print("| 2.Distance from enemy to player")
  print("| 3.Get angle from enemy to player")
  print("| 4.Exit")
  print("+----------------------------------")
end

-------------------------------------------------
-- Calculate the distance between two points
-------------------------------------------------
function get_distance(x1, y1, x2, y2)
  return math.sqrt((x1 - x2)^2 + (y1 - y2)^2)
end

-- Declare two tables to store position of player and enemy 
local player = {x = 400, y = 300}
local enemy = {x = 0, y = 0}

local user_option = 0

-------------------------------------------------
-- Loop until the user chooses option 4-exit 
-------------------------------------------------
while user_option ~= 4 do
  display_menu()

  -- read the user option from the keyboard
  print("Please, select your option:")
  user_option = io.read("*n")

  --------------------------------
  -- Option 1:
  --------------------------------
  if user_option == 1 then
    enemy.x = math.random(0, 800)
    enemy.y = math.random(0, 600)
    print("New enemy pos ("..(enemy.x)..","..(enemy.y)..")")
  end

  --------------------------------
  -- Option 2:
  --------------------------------
  if user_option == 2 then
     local d = get_distance(enemy.x, enemy.y, player.x, player.y)
     print("Distance from enemy to player: "..d)
  end

  --------------------------------
  -- Option 3:
  --------------------------------
  if user_option == 3 then
    local a = math.atan2((enemy.y - player.y), (enemy.x - player.x))
    print("Angle between enemy and player is: "..math.deg(a).." degrees.")
  end
end

print("Thank you, goodbye!")

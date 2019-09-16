-- Start the random number generator seed
math.randomseed(os.time())

-- loop 10 times the generation of random enemy positions
for count = 1, 500 do
    enemy_x = math.random(0, 800) -- random number for x
    enemy_y = math.random(0, 600) -- random number for y
    
    -- print x and y values
    print("Enemy "..count..": ("..enemy_x..","..enemy_y..")")
end

print("Thank you, goodbye!")

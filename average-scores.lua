-- variable to accumulate the sum of the values
local sum_scores = 0
-- variable to count how many values we read
local num_scores = 0

----------------------------------------------------
-- repeat until the user enters the value 0
----------------------------------------------------
repeat
  print("Enter a number (or 0 to exit):")
  local score = io.read("*n")
  
  if score ~= 0 then
    -- accumulate the scores in a sum variable
    sum_scores = sum_scores + score
  
    -- increment the number of scores
    num_scores = num_scores + 1
  end
until score == 0

----------------------------------------------------
-- calculate the average of all scores
----------------------------------------------------
local avg_scores = (sum_scores / num_scores)

-- display the result of the calculated average
print("Average of all "..num_scores.." values is "..avg_scores)

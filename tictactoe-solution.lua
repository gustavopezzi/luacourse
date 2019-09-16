-------------------------------------------------
-- create new table to hold the board matrix
-------------------------------------------------
local board = {}

-------------------------------------------------
-- clear the board table emptying all positions
-------------------------------------------------
function clear_board()
  for i = 1, 3 do
    -- new row
    board[i] = {}
    for j = 1, 3 do
      board[i][j] = " "
    end
  end
end

-------------------------------------------------
-- display the board table on the console
-------------------------------------------------
function display_board()
  -- loop all rows
  print("   1  2  3 ")
  for i = 1, 3 do
    print(i.." ["..board[i][1].."]["..board[i][2].."]["..board[i][3].."]")
  end
end

-------------------------------------------------
-- return true or false if the board is full
-------------------------------------------------
function board_full()
  for i = 1, 3 do
    for j = 1, 3 do
      if board[i][j] == " " then
        return false
      end
    end
  end
  return true
end

-------------------------------------------------
-- function to check winnner and returns X or O
-------------------------------------------------
function check_winner()
  -- check rows
  if board[1][1] ~= " " and board[1][1] == board[1][2] and board[1][2] == board[1][3] then return board[1][1] end
  if board[2][1] ~= " " and board[2][1] == board[2][2] and board[2][2] == board[2][3] then return board[2][1] end
  if board[3][1] ~= " " and board[3][1] == board[3][2] and board[3][2] == board[3][3] then return board[3][1] end

  -- check cols
  if board[1][1] ~= " " and board[1][1] == board[2][1] and board[2][1] == board[3][1] then return board[1][1] end
  if board[1][2] ~= " " and board[1][2] == board[2][2] and board[2][2] == board[3][2] then return board[1][2] end
  if board[1][3] ~= " " and board[1][3] == board[2][3] and board[2][3] == board[3][3] then return board[1][3] end

  -- check diagonals
  if board[1][1] ~= " " and board[1][1] == board[2][2] and board[2][2] == board[3][3] then return board[1][1] end
  if board[1][3] ~= " " and board[1][3] == board[2][2] and board[2][2] == board[3][1] then return board[1][3] end

  -- if there is no winner
  return nil
end

-------------------------------------------------
-- game starts
-------------------------------------------------
local player = "X"
local move = 1
local game_over = false

clear_board()

-- game loop
while not game_over do
  display_board()

  print("Enter the row you want to place the symbol "..player..": ")
  local row_to_play = io.read("*n")
  print("Enter the col you want to place the symbol "..player..": ")
  local col_to_play = io.read("*n")

  -- prevent the user to select a position that is already taken
  if board[row_to_play][col_to_play] ~= " " then
    print("Invalid! Please select an empty position.")
  else
    board[row_to_play][col_to_play] = player

    -- the current player if based on odd/even move
    if move % 2 == 0 then
      player = "X"
    else
      player = "O"
    end

    move = move + 1

    -- check if there is a winner
    local winner = check_winner()

    if winner ~= nil then
      display_board()
      print("Game Over! The winner is "..winner)
      game_over = true
    elseif board_full() then
      print("Game Over! Tie.")
      game_over = true
    end
  end
end

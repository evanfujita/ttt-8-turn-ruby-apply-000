def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
def input_to_index(user_input)
index = user_input.to_i - 1
end

def valid_move?(board, index)
  if (index >= 0) && (index <= 8)
    position_taken?(board, index)
  else
    false
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == "  ")
    true
  elsif (board[index] == "X" || board[index] == "O" || board[index] == nil)
    false
end
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  index = user_input.to_i - 1
     if valid_move?(board, index) == true
      move(board, index, current_player = "X")
      display_board(board)
    elsif valid_move?(board, index) == false
      turn(board)
    end  
  valid_move?(board, index)
end


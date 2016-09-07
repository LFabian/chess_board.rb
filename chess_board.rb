#A method that prints a chess board 
# W = white B = black 

def chess_board(board)
  pieza = [ "T-", "H-", "B-", "Q-", "K-", "B-", "H-", "T-" ]
  color = ["W", "B"]
  peon = ["P-", "P-", "P-", "P-", "P-", "P-", "P-", "P-"]
  

  for i in 0..7
    for j in 0..7 
      if i == 0  
        (board[i][j] = pieza[j] + color[0])
      elsif i == 1 
         board[i][j] = peon[j] + color[0] 
      elsif i == 6 
         board[i][j] = peon[j] + color[1] 
      elsif i == 7 
         board[i][j] = pieza[j] + color[1] 
      elsif i == 2..5  
         board[i][j] = " * " 
      end 
    end 
  end
  board.each do  |x|
    puts "#{x}"
  end 
end 

board  = Array.new(8) { Array.new(8)}

chess_board(board)
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    if(win_combo.all? {|index| (position_taken?(board,index))} && win_combo.all? {|ele| board[ele] == "X" || win_combo.all? {|ele| board[ele] == "O")}
      return a
    else
      return false
    end
      
      
      
      
      
      #board[win_combo[0]] == board[win_combo[1]] == board[win_combo[2]]
    
  end
end
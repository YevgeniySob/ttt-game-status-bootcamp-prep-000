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
  WIN_COMBINATIONS.each do |a|
    if(a.all? {|ele| board[ele] == "X" })
      return a
    elsif(a.all? {|ele2| board[ele2] == "O"})
      return a
    else
      return false
    end
  end
end
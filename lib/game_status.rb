# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],[3,4,5],[6,7,8],
  [0,3,6],[1,4,7],[2,5,8],
  [0,4,8],[6,4,2]]

def won(board)



  winning = WIN_COMBINATIONS.select do |win|
    print "#{win}\n"
    taken = win.all? {|postion| position_taken?(board, postion)}
    puts (taken and (board[win[0]] == board[win[1]] and board[win[1]] == board[2]))
  end

  if winning.size == 0
    return false
  end

  return winning
end

def full(board)
  board.none? {|position| position==" "}
end

def draw(borad)

end

def over(board)
  # draw or win or full
end

def winner(board)

end


won([" ", " ", " ", "O", "O", " ", "X", "X", "X"])

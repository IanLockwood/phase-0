# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # CREATE an array of the letters in bingo
  # SELECT a random letter from bingo and store it
  # Select a random number between 1 and 100 and store it

# Check the called column for the number called.
  # SET each letter to it's corresponding array positiion (B for 0th, O for 4th)
  # ITERATE 5 times, once through each array at the position matching the bingo letter

# If the number is in the column, replace with an 'x'
# IF that position == the number, SET that positon to an 'x'

# Display the board to the console (prettily)
# I'm gonna freestyle this one

# Release 3: Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    bingo = ["B", "I", "N", "G", "O"]

    @pos = rand(0..4)
    @letter = bingo[@pos]
    @num = rand(1..100)
    
    puts "And the next number is... #{@letter}#{@num}! That's #{@letter}#{@num}, ladies and gentlmen."
  end
  
  def check
    @bingo_board.each do |x| 
      if
      x[@pos] == @num
        x[@pos] = "X"
        puts "Got one!"
      end
    end
  end
  
  def column_b
    @b = "B" + @bingo_board[0..4][0].to_s
    p @b
  end
  
  def column_i
    @i = "I" + @bingo_board[0..4][1].to_s
    p @i
  end

  def column_n
    @n = "N" + @bingo_board[0..4][2].to_s
    p @n
  end
  
  def column_g
    @g = "G" + @bingo_board[0..4][3].to_s
    p @g
  end
  
  def column_o
    @o = "0" + @bingo_board[0..4][4].to_s
    p @o
  end
  
  def print
    bingo_disp = ["B", "I", "N", "G", "O"]
    puts
    puts "--------- Here's what your board looks like! ---------"
    puts
    p bingo_disp
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
    puts
    puts "------------------------------------------------------"
  end

end

# Release 2: DRIVER TESTS GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

150.times do
  new_game.call
  new_game.check
end

new_game.column_b
new_game.column_i
new_game.column_n
new_game.column_g
new_game.column_o

new_game.print



# Release 4: Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  This one was tougher - some parts were difficult and some parts were tedious.
  I wasn't sure how to pseudocode the "make it pretty" part.
  My pseudocoding style is okay but I started getting really code specific with it.
  For this challenge I tried to not be code specific and it was tough.

What are the benefits of using a class for this challenge?
  Well you want everything in one place.
  The instance variables are handy for calling data between methods and keeping track of the board.

How can you access coordinates in a nested array?
  Just by orders of magnitude!
  If I wanted the 5th element in the 2nd nested array in the 3rd nested array of the master array called "arr", it would look like this:
    arr[2][1][4]

What methods did you use to access and modify the array?
  Really simple ones actually, and very few. Just like, to_s, if and do, and addition.

How did you determine what should be an instance variable versus a local variable?
  Instance variables were for sharing data between methods, and local variables were for data I only needed in one method.

What do you feel is most improved in your refactored solution?
  My call method used to be long and messy and is now like 3 lines.





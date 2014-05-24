# U2.W5: A Nested Array to Model a Boggle Boardh

# I worked on this challenge [Allison Reilly, Morgan O'Leary].

boggle_board = [["b", "r", "a", "e"],
["i", "o", "d", "t"],
["e", "c", "l", "r"],
["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
#define method called create_word
#give it the arguments board and coords (have coord be able to take more than one element)
#grab elements from boggle_board array then join them
#return the word from the boggle_board elements
#end

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end



# Refactored Solution
# We think the code is fine as is

# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  ==  "code"
puts create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"

# Reflection

#OUTSTANDING QUESTION: Are you just giving us the code here?
-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.

# Pseudocode
# First define method called get_row
# set parameters to game and row
#return game with row in brackets


# Initial Solution
def get_row(game,row)
    return game[row]
end



# Refactored Solution
#

# DRIVER TESTS GO BELOW THIS LINE
puts get_row(boggle_board,1) ==  ["i", "o", "d", "t"]
puts get_row(boggle_board,2) ==  ["e", "c", "l", "r"]
# Reflection



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define method get_col
#parameters set to game with default of boggle_board and col
# create empty array called column
# create a loop on game and make it push each array element index inputed to column

# Initial Solution
def get_col(game,col)
	column = []
    game.each do |x|
        column.push(x[col])
    end
    column
end



# Refactored Solution

def get_col(game,col)
    game.map{|x| x[col]}
end






# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board[2][1] == "c"
puts boggle_board[3][3] == "e"
puts boggle_board[2][3] == "x"
puts get_col(boggle_board,1)  ==  ["r", "o", "c", "a"]
# Reflection
#I really liked how this was broken up into different sections. It made the challenge seem a little less overwhelming. We initially struggled a bit with the column, but I think it really helped having two heads instead of one. We are also learning that when we don't know what to do next, we can head over to the ruby docs and see what is available to us. That's become a huge assest.  With this challenge I've become more secure in the .map method although intially Allison and I were wondering what the biggest differences between #each and #map.  I feel pretty confident in the learning competencies. 
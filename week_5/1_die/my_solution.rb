# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: number
# Output: random number
# Steps: create method initialize and have it take the argument sides
#set sides equal to an instance variable
# if sides is less than one raise an Argument error
#create method sides
#have it return the number of sides
# create method roll
#have it return a random number between 1 and the amount of sides plugged in.


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
        raise ArgumentError.new("Number should be greater or equal to one")
  end
    end
  
  def sides
      return @sides
  end
  
  def roll
      return rand(1..sides)
   end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

#puts initialize(1) ==1
#puts initialize(-1)== ArgumentError
#puts initialize(0) ==Argument Error






# 5. Reflection
=begin This is going to sound a little dumb, but it's all a part of the experience so I'm going to write it down anyway. Man, when you run the tests in your terminal, the terminal kind of gives you a really good sense of the direction you need to go and the steps you need to take to solve the problem. I think before this I was just seeing it more as the enemy that was saying FAILURES versus "hey Morgan, your tests failed, but I do have some input as to what you can do to make them succeed".  DEFINITELY the best trick I've "mastered" in this challenge.   =end
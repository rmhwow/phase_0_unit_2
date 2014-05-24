# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


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






# 5. Reflection
=begin This is going to sound a little dumb, but it's all a part of the experience so I'm going to write it down anyway. Man, when you run the tests in your terminal, the terminal kind of gives you a really good sense of the direction you need to go and the steps you need to take to solve the problem. I think before this I was just seeing it more as the enemy that was saying FAILURES versus "hey Morgan, your tests failed, but I do have some input as to what you can do to make them succeed".  DEFINITELY the best trick I've "mastered" in this challenge.   =end
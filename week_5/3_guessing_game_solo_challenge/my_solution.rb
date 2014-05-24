# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class GuessingGame
    attr_accessor :answer
    
  def initialize(answer)
    @answer=answer
    @correct=false
  end
  
  def guess(guess)
      if guess > @answer
          @correct=false
          return :high
      elsif guess < @answer
          @correct=false
          return :low
    else guess == @answer
          @correct=true
          return :correct
      end
  end
  
  def solved?
@correct
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: number
# Output: :high, :low, or :correct
# Steps:
#create method called initialize that takes the argument answer
#the variable answer to answer
#set instance variable correct to false
#define method guess that takes the argument guess
#if guess is greater than the answer correct is false and the method returns high
#if guess is lower than answer correct is false and the method returns low
#if guess is equal to answer correct is true and the method returns correct
#define method solved? and have it return the value of correct


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

GuessingGame.guess(100) == :high
GuessingGame.guess(10)== :correct
GuessingGame.guess(5)==low




# 5. Reflection 
#new tricks I didn't know you could put the colon in front of high and low and it would return it like a string. I really like getting the practice with instance variables. I also learned about attr_accessor which is pretty exciting. I think overall this challenge went pretty well I'm pretty confident on the skills I learned here and look forward to more ruby!
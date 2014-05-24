# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: numbers and operators
# Output: solution ( so if the inut was 3 4 +  then the output would be 7
# Steps:
#define class called RPN Calculator
#defin method called evaluate and have it take an argument
#have a variable "a" that takes that argument and splits the elements of it with a space
#create an array that takes "a" and call inject
# if i is equal to any digit
#push the converted i into the integer into the the array
#else take out the last two symbols in the array
#if that symble is equal to + put it in the array in between the 0 index and 1 index
#repeat for other symbols
#print the popped array



# 3. Initial Solution

class RPNCalculator
    def evaluate(rpn)
        x = rpn.split(' ')
        array = x.inject([]) do |array, i|
            if i =~ /\d+/
                array << i.to_i
                else
                y = array.pop(2)
                case
                    when i == "+" then array << y[0] + y[1]
                    when i == '-' then array << y[0] - y[1]
                    when i == '*' then array << y[0] * y[1]
                    when i == '/' then array << y[0] / y[1]
                end
            end
        end
        p array.pop
    end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

solve = RPNCalculator.new
solve.evaluate('2 3 +') #=> 5
solve.evalute('3 3 *') #=>9
solve.evaluate('70 30 -') #=>40
solve.evaluate('70 10 4 + 5 *-') #=>0




# 5. Reflection
#New trick would definitely be the little regular expressions as well as getting to play with #pop and #inject. #pop was super useful for this situation. GEtting used to RPN was also a bit of a struggle, but once I did more research on it, it definitely became easier to understand. These competencies I'm still a little rough on, but I'd love to explore more with the regular expressions. 

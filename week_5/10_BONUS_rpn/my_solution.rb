# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class RPNCalculator
    def evaluate(rpn)
        a = rpn.split(' ')
        array = a.inject([]) do |array, i|
            if i =~ /\d+/
                array << i.to_i
                else
                b = array.pop(2)
                case
                    when i == "+" then array << b[0] + b[1]
                    when i == '-' then array << b[0] - b[1]
                    when i == '*' then array << b[0] * b[1]
                    when i == '/' then array << b[0] / b[1]
                end
            end
        end
        p array.pop
    end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
    def initialize(labels)
        if labels.empty? == true
            raise ArgumentError.new("Labels List is empty")
            else @sides =labels.length
        end
    end
    
    def sides
        @sides
    end
    
    def roll
        if labels.length =1
        labels[0]
            else
            puts labels
            end
    end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I'])
puts die.roll
# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection
#Things I still don't understand: why is it that sometimes you need to put the word "return" and other times it's just assumed? How do I know when or when not to write the word return.


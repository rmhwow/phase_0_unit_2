# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array of letters
# Output: one random letter
# Steps:
#define a method called initialize and have it take the argument lables
#if labels is empty raise and Argument error
#otherwise set the instance variable sides to the length of labels
#define a method called sides that returns the length of the label
#define a method called roll
#if the length of the array labels is equal to one return that element
#otherwise return all the elements



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


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I'])
puts die.roll

die =Die.new([])== "Labels List is empty"

die=Die.new(['A'], ['B']) == false



# 5. Reflection
#I liked the fact that we dealt with numbers first and then went on to letters. I didn't struggle too much with this idea. I thought this was a good exercise. I'm learning to become more creative with my solutions and I think as I grow in this process figuring this out on my own has become easier.
#Things I still don't understand: why is it that sometimes you need to put the word "return" and other times it's just assumed? How do I know when or when not to write the word return.


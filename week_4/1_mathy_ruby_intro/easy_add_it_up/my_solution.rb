# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [with: John Berry ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#define a method called total
#define an argument that is an array
#define variable called sum and set it equal to zero
#iterate through the array (.each)
#add the sum to each element of the array
#return the sum of the array

#define a method called "sentence_maker"
#define a single argument (sentence)
#Combine the strings together using sentence.join
#add a space in between the words
#call capitalize to capitalize first word
#add "." to the string


# 2. Initial Solution
def total(numbers)
    sum=0
    numbers.each { |x| sum += x}
    return sum
end


def sentence_maker(sentence)
    sentence.join(" ").capitalize + "."
end

# 3. Refactored Solution

#the code is dry and we really didn't see another way to make it more concise

# 4. Reflection
#I'm really glad I paired on this challenge because in the beginning I was definitely feeling a little weaker on my Ruby on Rails skills.  The struggle we had in this challenge was the second half. We kept trying to return the sentence and realized that by returning the sentence we weren't actually implementing the changes we made, but asking the program to return the original work. Something we still had questions about though was why we didn't need to return anything.  We thought that maybe with .capitalize and .join because we were changing just the structure ruby automatically returns the new value.  A new skill I learned was adding the period I didn't realize you could just do + ""." I thought that was pretty cool. I think challenges like these aren't really ones you particularily enjoy, but once you get the hang of the structure and start figuring things out you get more comfortable with the concepts and that's the true joy!
# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [with: John Berry ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
define a method called get_grade
method has to accept an array as an argument
array will be grades that do not exceed 100
    define average of numbers in side of array
    should return "A" when average is >=90
    should return "B" when average is >=80
    should return "C" when average is >=70
    should return "D" when average is >=60
    should return "F" when average is < 60

# 2. Initial Solution

def get_grade(grades)
    total = 0
    grades.each { |x| total += x}
    average = total/grades.length
    
    if average >= 90
        return "A"
        elsif average >= 80
        return "B"
        elsif average >= 70
        return "C"
        elsif average >= 60
        return "D"
        else
        return "F"
    end
end





# 3. Refactored Solution

#Our solution is DRY. We did look into doing a case statement instead of the if/else, but decided the case statement would be just as if not more complex to read.

# 4. Reflection
#We originally thought we could call on a .average method.  We were both skeptical about how easily that was going to be, it turns out that you can't actually do that. So then we went for the good old add and divide method. When John suggested we do .length I initially was unsure because when I used it previously on strings it printed out the amount of letters not the amount of words. We found that it worked and then researched that when you call "length" on an array if gives you the number of elements in the array. Now I feel more confident with the learning competencies. Actually, I think the best part of this challenge for me was really getting to work more with the terminal.  This was the challenge where it was a non option to do it anywhere else. I think that really worked out for me in the end. 
#
#
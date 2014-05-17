# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
#The input is any positive Numbers
# What is the output? (i.e. What should the code return?)
#The code should return that number with the commas in the proper place.
# What are the steps needed to solve the problem?
#define method called separate_comma
#have it take the argument number
#have that number argument turn into a string and call that new variable value
#then write an if elsif else statement
#if number is less than or equal to 999 the code should come back with just that number
#if the number is between 1000 and 10000 the code should come back with the 1,000 and 10,000
#and if the number is greater than 10000 and less than or equal to 10000000000 it should print the commas in the correct place.
#close the variable
#close the if else statement


# 2. Initial Solution
#def separate_comma(number)
#   value= number.to_s
#   if number<=999
#       number
#       elsif number/1000 <= 1
#       value.insert(-4,",")
#       elsif number/1000 <=10
#       value.insert(-4, ",")
#       elsif number/1000 >= 1000
#       value.insert(-4, ",")
#       value.insert(-8,",")
#       else number/1000>=1000000
#       value.insert(-4,",")
#       value.insert(-8,",")
#       value.insert(-12,",")
#   end
#end
        


# 3. Refactored Solution
def separate_comma(number)
    value= number.to_s
    if number<=999
        number
        elsif number/1000 <= 10
        value.insert(-4,",")
        elsif number/1000 >= 1000
        value.insert(-4, ",")
        value.insert(-8,",")
        else number/1000>=1000000
        value.insert(-4,",")
        value.insert(-8,",")
        value.insert(-12,",")
    end
end


# 4. Reflection
#And this is where I reflect. So I've noticed lately this week that I have this personal tendency to get a little overwhelmed at first, not think I can figure the answer out for myself and then when I'm in a group contribute a solid amount of ideas. I definitely when for an if else statement first but then was reading up on different methods and knew that a regular old "puts" wasn't going to do the job accurately. And that's when i found insert. This week has been a lot of finding methods and when you find them ugh man is it pure gold. So I found out that you can use insert to put something in to a specific spot in your code with a syntax that's like (place, "thing you want in code"). and first I was like this is great and tried positive integers. Then I realized the positive integers essentially put the commas at the end of the number rather than in the middle. Turns out you can use negative integers with insert and my life was complete....for this challenge. Something else I tried but ultimately couldn't get to work was writing the variable "number"'s range of acceptable numbers like

#elsif 1000 > number>= 100

#i'm still stuck on why that wouldn't work, but the dividing the number turned out to be successful. Like I said earlier I think I do understand a majority of the compentencies, it's just a matter of now believing that what I know can and does work the problems I need to solve. It's been a tricky week, but I'm getting there.
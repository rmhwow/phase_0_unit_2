# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Kate La and Lauren Kroner ].

# 1. Pseudocode
#Pseudo Code
#Error 1: Array#pad! operates destructively
#Error 2: Array#pad! doesn't pad a long array
#Error 3: Array#pad operates non-destructively
#Error 4: Pads elements to the end of an array


#Error 5: Doesn't pad minimum size is equal to array's length
#Error 6:Array doesn't pad when minimum size is 0
#Error 7: pads with nil by default
#error8: can pad with a string
#error9: can pad with an object

#Talk it out
#Input - pad methods going to take 2 arguments min_size and pad_value
#Output- an array with the minimum length set to min_size with the optional padded value
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


#pad psuedocode
#  define class Array
# 		define method pad that takes two parameters, min_num and pad_value
# 			create a new copy of array as to not destroy original
# 			if the length of the new array is more than the min_num
# 				push the pad value into new array
#      		else
#  				take difference of min-num and new array length and times by pad_value
# 				push pad_value(s) into new array
#           close if/else
#        close method
#        return method
#        close method return
#
#
#   close class

#pad! pseudocode
#define class Array
#define destructive method pad!
#make pad! take two arguments called min_num and pad_value
#set pad_value equal to nil
#Create an if/else statement that has the array return itself if the length of the array is greater than the min_num (the minimum number necessary in the array)
#otherwise (else) have the array return the difference between min_num and the array's length times the pad_value.
#Then push the pad_value(s) into the array (into itself)
#return the array

# 2. Initial Solution
class Array
 	def pad(min_size, pad_value=nil)
 		new_array = Array.new(self)
 		if new_array.length >= min_size
 			new_array
            else
 			(min_size - new_array.length).times do
                new_array << pad_value
            end
        end
        new_array
    end
	def pad!(min_size, pad_value=nil)
		if self.length >= min_size
 			self
            else
            (min_size - self.length).times do
                self << pad_value
            end
        end
        self
    end
end


# 3. Refactored Solution
class Array
    def pad!(min_size, pad_value = nil)
        (min_size - self.length).times do self << pad_value
        end
        
        self
    end
    
    def pad(min_size, pad_value = nil)
        self.dup.pad!(min_size, pad_value)
    end
end﻿
# WE tried to refactor lines 21, 22 by combining them into a single line "return new_array if array.length >=min_size" we tried similiar refactoring in lines 32 and 33.  When we edited, however, we came up with a bunch of errors. Therefor the only real big change we made was changing the argument "min_size to min_num

# 4. Reflection
#I'm really glad I paired on this challenge. I learned that the return is implied on a lot of these things.   I definitely am starting to feel more confident with some of the concepts, but especially in using my terminal and reading through the errors. Through this challenge I also got more comfortable with the push through using << operator. Something we definitely struggled with was the self concept and getting the pad to be non destructive.  We figured with copying a new array that would fix the problem and it did.  We also struggled with refactoring. Things that I had seen in similiar problems wouldn't work for us in our refactoring.  We could have been using the wrong syntax, but it seemed like it was the same thing. Hopefully, when we get some reviews I can talk about it with other people.  Lauren and I were also wondering if there was certain format for pseudocoding.  Lauren contributed her pseudocode in a similiar format to actual code and I did mine more like reflecting.

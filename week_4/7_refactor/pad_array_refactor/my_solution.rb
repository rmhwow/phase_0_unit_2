# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself].



# 1. First Person's solution I liked
#    What I learned from this solution
#That you can have return something on the same line before the if statement
#I also learned the self.dup that's duplicated the array back to the original.
# Copy solution here:
class Array
def pad!(pad_num, pad_value=nil)
    return self if pad_num <= self.length  # Do not alter if value <= array length
    (pad_num - self.length).times {self << pad_value} # Determine amount to pad
    self
end

def pad(pad_num, pad_value=nil)
    return self if pad_num <= self.length  # Do not alter if value <= array length
    pad_array = self.dup # Dup to decouple from original
    (pad_num - self.length).times {pad_array << pad_value} # Determine amount to pad
    pad_array
end
end






# 2. Second Person's solution I liked
#    What I learned from this solution
#that clone and dup have the same effect in this situation. The code is simple and easy to read. I didn't know the count method returned the amount of elements in in that block.
# Copy solution here:


class Array
	def pad!(num, value = nil) #Initializing value of value
		diff = num - self.count
		diff.times do
			self << value
		end
		self
	end
    
	def pad(num, value = nil)
		self.clone.pad!(num,value)
	end
end



# 3. My original solution:

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



# 4. My refactored solution:

class Array
 	def pad(min_size, pad_value=nil)
 		new_array = Array.new(self)
 		return new_array if new_array.length >= min_size
            else
 			(min_size - new_array.length).times do
                new_array << pad_value
            end
        end
        new_array
    end
	def pad!(min_size, pad_value=nil)
		return self if self.length >= min_size
            else
            (min_size - self.length).times do
                self << pad_value
            end
        end
        self
    end
end



# 5. Reflection
=begin
 I really liked this challenge, because it really allowed me to be able to understand the code and to learn more from everyone else's solutions.  I learned a couple new skills. I'm going to see if I can keep adding/subtracting things to this code. I feel pretty confident about things now and look forward to doing more!
 
=end
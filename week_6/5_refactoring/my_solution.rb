# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself ].


# Original Solution


#class CreditCard
    
    # consolidated conditions for ArgumentError
#   def initialize(card)
#       @card = card
#       raise ArgumentError.new("Incorrect card length.") if @card.to_s.length != 16
#	end
#
#   def check_card
#       @input_array = @card.to_s.split("")
#       # consolidated delete_if methods
#       @input_array.delete_if do |element|
#           (element == " " ) || (element < "0") || (element > "9")
#      end
        
        
        

#@digits_array = @input_array.map { |element| element.to_i }
        
#       @sum = 0
#       i = 0
#       while i <= 15
#           if i%2 == 0
#               doubled_digit = @digits_array[i]*2
#               if doubled_digit > 9
#                   split_doubles = doubled_digit.to_s.split("").map { |d| d.to_i }
#                   @sum += split_doubles.inject(0) { |total, i| total+=i }
#                   else
#                   @sum += doubled_digit
#               end
#               else
#               @sum += @digits_array[i]
#           end
#           i+=1
#       end
#
#if @sum%10 == 0
            #true
            #else
            #false
            #       end
#   end
#end

# Refactored Solution



class CreditCard
    
    # consolidated conditions for ArgumentError
    def initialize(card)
        @card = card.to_s.chars.map{|x| x.to_i} #makes the elements inside card integers right away.
        raise ArgumentError.new("Incorrect card length.") if @card.length != 16
	end #no need for the to string aspect
    
    def check_card
        @card.map!.with_index do |element,index|
        if index.even? ==true
            element *2
            else
            element
 end
        end
        end
    
        # consolidated delete_if methods
        #you don't needto delete any numbers if you just call the spcific numbers instead. Gets rid of a whole method for you!
        
        #@input_array.delete_if do |element|
        #   (element == " " ) || (element < "0") || (element > "9")
        
        #end
        # I think it makes more sense to call the index instead of trying to figure out the individual number
        
#Time to add a method just so everything is a little cleaner.
        def sum
            check_card
            @card.join.chars.map{|x| x.to_i}.inject{|x,y| x+y}
        
        if @sum%10 == 0
            true
            else
            false
        end
    end
end



# DRIVER TESTS GO BELOW THIS LINE
puts CreditCard.new(4408041234567893).check_card ==true



badcard=CreditCard.new(1111111111111111)
p badcard.check_card ==false

other_card= CreditCard.new(4563960122001999)
p card.check_card == false



# Reflection
#I thought this was sort of like the first challenge, but in a good way. It's always great to get more practice with ruby. I feel pretty good about this challenge. I didn't think anything was tedious, I liked having get another opportunity to problem solve! 
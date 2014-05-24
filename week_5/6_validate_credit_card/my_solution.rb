# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Allison Reilly ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
#class CreditCard
    
#   def initialize(credit_card)
#       @card = credit_card
#       @card=card
#       cardlen = @credit_card.length
#       if cardlen != 16
#           raise ArgumentError.new ("Card needs to be 16 digits")
#       end
#   end
#def check_card
#       card_array = card.to_s.split("")
#       card_array.map! {|x| x.to_i}
#       doubled = card_array.values_at(0,2,4,6,8,10,12,14)
#       others = card_array.values_at(1,3,5,7,9,11,13,15)
#       doubled.map! do |i|
#           i *= 2
#       end
#       group1 = doubled.join("").to_i
#       group2 = others.join("").to_i
        
#       group1.each {|x| x+=x}
#       group2.each {|x| x+=x}
#       group1 + group2
#   end
#       if group1 + group2 % 10 == 0
#           return true
#       else
#           return false
#       end
#end




# 4. Refactored Solution


class CreditCard
    
	def initialize(card)
        @card = card.to_s.chars.map{|x| x.to_i}
        raise ArgumentError.new("Please enter a 16 digit card number") unless @card.length == 16
	end
    
    def numbers
    	@card.map!.with_index do |element,index|
    		if index.even? == true
    			element * 2
                else
    			element
    		end
    	end
    end
    
    def sum
    	numbers
  		@card.join.chars.map{|x| x.to_i}.inject{|x,y| x+y}
    end
    
	def check_card
		if sum % 10 == 0
			return true
            else
			return false
		end
	end
end



# 1. DRIVER TESTS GO BELOW THIS LINE


card=CreditCard.new(4408041234567893)
p card.check_card==true

badcard=CreditCard.new(1111111111111111)
p badcard.check_card ==false

other_card= CreditCard.new(4563960122001999)
p card.check_card == false


# 5. Reflection 
#This one was definitely really tough and required alot of thinking outside the box.  Allison and I initially worked on the initial solutionaand while that did work out it definitely wasn't very dry. Some new tricks were #chars and #inject and using the with_index.  That came in handy really well. At first we were trying to just put in the array placement, but then if you look at which number need to be double it's just the even index. This one was probably the toughest and I'm definitely glad I had someone to help figure out the algorithm as well. 
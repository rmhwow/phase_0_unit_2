# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
    
    def initialize(credit_card)
        @card = credit_card
        @card=card
        cardlen = @card.length
        if cardlen != 16
            raise ArgumentError.new ("Card needs to be 16 digits")
        end
    end
def check_card
        card_array = card.to_s.split("")
        card_array.map! {|x| x.to_i}
        doubled = card_array.values_at(0,2,4,6,8,10,12,14)
        others = card_array.values_at(1,3,5,7,9,11,13,15)
        doubled.map! do |i|
            i *= 2
        end
        group1 = doubled.join("").to_i
        group2 = others.join("").to_i
        
        group1.each {|x| x+=x}
        group2.each {|x| x+=x}
        all = group1 + group2
    end
    
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

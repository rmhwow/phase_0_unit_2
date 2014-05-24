# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 



# Names: Hethe Berg and Morgan O'Leary
#
#

#def bakery_num(num_of_people, fav_food) # Defining method with two arguments
#   my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # this a hash with key being a food type and the
#   # value being the number of people you can feed per key
#   pie_qty = 0 # number of pies creating the variable
#   cake_qty = 0 # number of cakes creating the variable
#   cookie_qty = 0 # number of cookie creating the variable
#   food_qty= 0
    
#   raise ArgumentError.new("You can't make that food") unless my_list.include?(fav_food)
#   ## ternary operator
#   fav_food_qty = my_list.values_at(fav_food)[0]
#
#   if num_of_people % fav_food_qty == 0                      #If number of people modulo fav food quantity is equal to zero
#       num_of_food = num_of_people / fav_food_qty              #then assign var num of food equal to division of number of people/ food                                                             ##quanitity
#       return "You need to make #{num_of_food} #{fav_food}(s)." # returns string with the interpolation of num of food and fav food.
#       else num_of_people % fav_food_qty != 0                     # else - the num of people divided by fav food modulo doesn't equal 0
#       while num_of_people > 0                                     # while the number of people is greater than zero
#       if num_of_people / my_list["pie"] > 0                     #if statement- if number of people divide by number of pies is                                                                      #greater than 0
#               pie_qty = num_of_people / my_list["pie"]                # then the pie qty is equal to the number of people divided pies
#               num_of_people = num_of_people % my_list["pie"]          #new number to num_of_people by modulo-ing my list of pie
#               elsif num_of_people / my_list["cake"] > 0                 #same with with pies but for cake
#               cake_qty = num_of_people / my_list["cake"]
#               num_of_people = num_of_people % my_list["cake"]
#               else
#               cookie_qty = num_of_people                              #cookie quantity equals number of people
#               num_of_people = 0                                       # number of people is being set to zero
#           end
#       end
#       return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."     #takes the data and
#       #interpolates it into this string
#   end
#end
#
#if num_of_people % fav_food_qty ==)
#  num_of_food = num_of_people / fav_food_qty              #then assign var num of food equal to division of number of people/ food                                                             #quanitity
#   return "You need to make #{num_of_food} #{fav_food}(s)." # returns string with the interpolation of num of food and fav food.
#   else num_of_people % fav_food_qty != 0
    
#   while num_of_people  >0
#       if num_of_people/fav_food >0
#           food_qty= num_of_people/fav_food
#           num_of_people= num_of_people % fav_food
#           else
#           cookie_qty = num_of_people
#       end

# =end


=begin
 results = my_list.values_at("pie","cake")
 results[0] == 8
 results[1] == 6
 results[0..1] == 8, 6
 results[0,2] == 8, 6
 =end



# Our Refactored Solution




def bakery_num(num_of_people, fav_food)
    my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
    pie_qty, cake_qty, cookie_qty, fav_food_qty = 0, 0, 0, 0
    
    raise ArgumentError.new("You can't make that food") unless my_list.include?(fav_food)
    ## ternary operator
    fav_food_qty = my_list.values_at(fav_food)[0]
    
    if num_of_people % fav_food_qty == 0
        num_of_food = num_of_people / fav_food_qty
        return "You need to make #{num_of_food} #{fav_food}(s)."
        
        else num_of_people % fav_food_qty != 0
        if fav_food == "pie"
            pie_qty = fav_food_qty
            else fav_food == "cake"
            cake_qty = fav_food_qty
        end
        num_of_people = num_of_people % fav_food_qty
        cookie_qty = num_of_people
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
end





#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 




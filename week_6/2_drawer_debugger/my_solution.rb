# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

def initialize
    @contents = []
    @open = true
end

def open
    @open = true
end

def close
    @open = false
end 

def add_item(item)
    @contents << item
end

def remove_item(item = @contents.pop) #what is `#pop` doing?
    puts "#{item} has been removed"
    @contents.delete(item)
end

def dump  # what should this method return?
    @contents = []
    puts "Your drawer is empty."
end

def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
end

end

class Silverware
attr_reader :type

# Are there any more methods needed in this class?

def initialize(type, clean = true)
    @type = type
    @clean = clean
end

def eat
    puts "eating with the #{type}"
    @clean = false
end

def clean_silverware
    puts "#{type} is clean!"
    @clean=true
    
    end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? #this should return the drawer as empty

fork=Silverware.new("fork")
 #add some puts statements to help you trace through the code...
puts fork.eat
 puts fork = silverware_drawer.remove_item(fork)
#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
def assert
    raise "Assertion failed!" unless yield
end

utensil = "salad_fork"
assert { utensil == "salad_fork" }

utensil= silverware_drawer.add_item(Silverware.new("salad_fork"))

tall_spoon= Silverware.new("tall_spoon")
silverware_drawer.add_item(tall_spoon)
silverware_drawer.view_contents
puts tall_spoon.eat




# 5. Reflection
# I think this was a really good challenge because it forced you to really take notice of the errors and what was happening in the code. At first I didn't think that the driver code needed any editing, so that slowed me down a bit intially, but I'm learning in DBC to take a look at everything and see where you can improve.  I didn't know you could call an attribute inside a method so that was cool. I also didn't know that once an assertion fails it no longer runs anymore code. so if you want to test the assertion fail that would have to be the last driver code.  I didn't really find anything too tedious and I feel about an 8.5 out of 10 on the confidence scale.
#
#
#
#
#
#
require_relative "my_solution" 
#=> Make sure you change this to the name of your code file! Save that file
# into this repo. 
#Driver Code
puts separate_comma(1000)
puts separate_comma(1000000)
puts separate_comma(0)
puts separate_comma(100)
puts separate_comma(10000)


#def random_num(min, max)
#  rand(max - min + 1) + min
#end

#describe "separate_comma" do
#   it "returns no comma, when the integer is smaller than 1000" do
#     separate_comma(random_num(0, 999)).should match /^\d{1,3}$/
#  end
#  it "returns one comma, when the integer is between 1000 and 999999" do
#     separate_comma(random_num(1000, 999999)).should match /^\d{1,3},\d{3}$/
#  end
#  it "returns two commas, when the integer is between 1000000 and 999999999" do
#     separate_comma(random_num(1000000, 999999999)).should match /^\d{1,3},\d{3},\d{3}$/
#  end
#end

irb# U2.W4: Cipher Challenge


# I worked on this challenge with: Arik Gadye and Allison Reilly .



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.


def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
    decoded_sentence = []
    
    cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
        "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
        "g" => "c",
        "h" => "d",
        "i" => "e",    #pros- you have the key and value exactly as a certain thing.  #cons- this is really long
        "j" => "f",
        "k" => "g",
        "l" => "h",
        "m" => "i",
        "n" => "j",
        "o" => "k",
        "p" => "l",
        "q" => "m",
        "r" => "n",
        "s" => "o",
        "t" => "p",
        "u" => "q",
        "v" => "r",
        "w" => "s",
        "x" => "t",
        "y" => "u",
        "z" => "v",
        "a" => "w",
        "b" => "x",
        "c" => "y",
        "d" => "z"}
    
    input.each do |x| # What is #each doing here?
        found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
        cipher.each_key do |y| # What is #each_key doing here? checking each key in hash
            if x == y  # What is this comparing? each element in input array to each key in cipher hash. Where is it getting x? x is each element in the input array. Where is it getting y? each key in cipher hash What are those variables really?
                puts "I am comparing x and y. X is #{x} and Y is #{y}."
                decoded_sentence << cipher[y]  #(pushes it to an array) == array.push(x)
                found_match = true
                break  # Why is it breaking here?
                elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? if x equals any of those characters a space will be inserted.
                decoded_sentence << " "
                found_match = true
                break
                elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? it takes 0 through 9 and makes each number an element of an array
                decoded_sentence << x
                found_match = true
                break
            end
        end
        if not found_match  # What is this looking for?
            decoded_sentence << x
        end
    end
    decoded_sentence = decoded_sentence.join("")
    
    if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. - any digit
        decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
    end
    return decoded_sentence # What is this returning?        this returns the readable sentence
end


# Your Refactored Solution

def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("")
    decoded_sentence = []
    array = ('a'..'z').to_a
    cipher = array.rotate(4)
    input.each do |code|
        found_match = false
        cipher.each do |character|
            if code == character
                decoded_sentence << array[cipher.index(character)] #we have cipher = a-z. cipher.index(y)
                found_match = true
                break
                elsif code == "@" || code == "#" || code == "$" || code == "%"|| code == "^" || code == "&"|| code =="*" #What the heck is this doing? if x equals any of those characters a space will be inserted.
                decoded_sentence << " "
                found_match = true
                break
                elsif (0..9).to_a.include?(code) # Try this out in IRB. What does   " (0..9).to_a "    do? it takes 0 through 9 and makes each number an element of an array
                decoded_sentence << code
                found_match = true
                break
            end
        end
        unless found_match  # What is this looking for?
            decoded_sentence << code
        end
    end
    decoded_sentence = decoded_sentence.join("")
    if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. - any digit
        decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
    end  
    return decoded_sentence # What is this returning?        #this returns the readable sentence
end




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true

# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")=="our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")== "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
#Whew! What a challenge! This definitely helped secure some Ruby concepts for me.  Originally Allison and I sort of knew what was going on, but there were definitely spots such as the "<<" operator and .split that were new.  So we decided to recruit one of our other accountability group members who had a little more experience. He was a little stumped in the beginning too, but we went through what we thought each thing in the code was doing. I think the refractoring really helped us as did editing the driver code. I felt like we were totally immersed in all areas of the coding process. I'm starting to feel more confident about everything.  The regex was new to me.  I understand that it tries to condense expressions but I would like to explore with that a little bit more in my free time. Overall we struggled in the beginning, unsure of what to make of the hash, we broke down the code into blocks and looked at each step, then we refractored, and talked about why our solution was the best fit. 
 
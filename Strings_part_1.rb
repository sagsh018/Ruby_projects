# Create a String 
# ================

# lets see some of the examples related to the string
puts "Hi there, I'm a string"
puts "I can also include characters and numbers : @ # $ ! 5 7 8"

# we can assign string to variables
name = "Sagar"
l_name = "sharma"
puts name, l_name    # Notice that we can print the variables using puts by using the comma separated list.

# even the space character is also counted as the valid character and counted as part of string

space = " "
p space
p space.length   # This will give us the length as 1, having only once character

# empty string
empty = ""
p empty
p empty.length   # this will give us the length as o, having no character in this string

# to check the type of variable we can always call .class method which is shared by all the data types
p empty.class
p space.class
p name.class
p l_name.class

# another way to create the string
name = String.new("Hello")
p name
# So this is a way to create a string using the object creation methos, with this way we can create an object for all
# the classes and then we can pass in the value to those objects. 
# so here we have created a new string object and passed it a value as "Hello" which has created the string object and
# later we have assigned it to the name variable.

# one last way to create the string from other types of data is using the .to_s method
p 5.to_s
p 5.to_s.class



# Multiline strings
# ==================
# a string which contains multiple lines, or a string that contain line breaks
# Now in ruby these multiline strings are called as heredoc. and these can be created using the "<<" symbol in the 
# begenning 
# also with the "<<" we can include some abbriviation if required

words = <<MLS
    Hello this is the first line for multipline string
    this is a second line
this is a third line
this is a fourth line
MLS

p words   # p method will show the entire content in the single line with the \n and tabs preseinted in it
puts words  # this will print all the lines in the multiline string in exactly the same way we have printed them



# Escape Characters
# ===================
# The strings can be created by using the single quotes as well as double quotes
puts "Hello world"
puts 'Hello world'

# We can use these quotes based on the usage of them, see the below two cases
puts "Hello guys 'this' is a new world"
puts 'Hello guys "this" is a new world'
# so to overcome error due to this word in the string, we have interchanged the usage of quotes

puts "Hello guys \"this\" is a new world"
# another way to write the above statements using only the double quotes
puts 'Hello guys \'this\' is a new world'
# here "\" is a escape character

# another escape charater is "\n" line break
result = "We have line break\nright here"
puts result   # This will show the line after \n on new line
p result      # This will literally show the line break on the single line.

# another escape character is "\t" tab
result = "We have tab\tright here"
puts result
p result



# Sungle quotes and double quotes
# ================================
# Two main differences between the single and double quotes
# 1) escape sequences doesn't work in single quotes
# 2) string interpolation doesn't work in single quotes

puts "Hello\nworld"
puts 'HEllo\nworld'   # here the \n is treated as character

phrase = "Hello world"
puts "#{phrase}"    # This will work
puts '#{phrase}'    # this will print the entire string literally as #{phrase}



# Equality and Inequality operators with strings
# ===============================================
a = "Hello"
b = "hello"
c = "Hello"
d = "Hello "

puts a == "Lion"  # false
puts a != "Lion"  # true

puts a == b  # false, as the casing matters
puts a == d  # false as every character matters
puts a != b  # true
puts a == c  # true

# we can compare the variable to itself as well
puts a == a  # true

# We can even make use of < and > to compare strings and these are based on the the rules od dictonary
puts "Apple" < "Banana"   # based on the first character true
puts "hello" < "help"    # based on the 4th letter true

# in Ruby capital letters comes before the small letters

puts "A" < "a"  # true
puts "Z" < "a"  # true

p "Help" < "banana" # false
p "Help" < "Banana" # false

# we can also compare the booleans

p true == true  # true
p true == false # false
p false == false # true



# Concatenate Strings
# ===================

# 1) Using the + operator
first_name = "sagar "
last_name = "sharma"

name = first_name + last_name
p name

first_name = first_name + last_name
p first_name
# we can compress the above statement as below
first_name = "sagar "
last_name = "sharma"

first_name += last_name
p first_name

# 2) using .concat method

first_name = "Hello "
last_name = "world"
first_name.concat(last_name)
p first_name  ## Noice that concat method is in place and it modifies the first_name permanently.

# 3) using the << operator
first_name = "Cool "
last_name = "world"
p first_name << last_name
# we can even concatinate other string using this << operator
first_name = "Cool "
last_name = "world"
p first_name << last_name << " this" << " is"

# 4) .prepend method, this method prepend the parameter passed to it to the object calling it
first_name = "sharma"
last_name = "sagar "
first_name.prepend(last_name)
p first_name
# prepend is also inplace method



# The .length and .size method
# =============================
# both .length and .size are identical methods

a = "Hello world"
b = "Hi my name is sagar"
c = " "
d = ""

p a.length
p b.length()
p c.length
p d.length

puts

p a.size
p b.size
p c.size
p d.size
# Notice that both the .length and .size methods gave the same results.
# Also notice that the .length and .size method returns the integer results and all the methods available for
# integer can be used here 

p a.length.class   # Integer
p a.length.next   # 12
p a.length.odd?  # true
p a.length.odd?.class   # true class



# Extract Single character from string with bracket
# =================================================

# Strings in ruby are mutable, whereas in python strings are immutable
story = "Once upon a time in a land far, far away"
p story.length   # 40 
# to access the let say letter e from the word once.
p story[3]
p story[4]    # This will show us the space character

p story[-1]   # gives the last character of the string.

p story[100]  # as no element exist on this location, we will geting nothing and nothing in ruby is represented by
                # nil
p story[-300]  # again nil
# .slice method -- In ruby this method fives exactly the same functionlity as that of the [], but in python we can
# get the sub string with the help of slice functionlity.

p story.slice(0)  # gives O from word Once in the above string.
p story.slice(-1) # gives y
p story.slice(-300)  # gives nil



# Extracting multiple character from the string with the Bracket Syntax
# =======================================================================
# So inside the [] we can give the index location alsong with that we can also give how many element starting 
# from that index location do we want

p story[0, 4] # In this case start from 0th element in the string and we want 4 characters after that
p story.slice(0, 4)  # gives exactly same result as that of [] method

p story[5, 4] # start from index location 5 and after that 4 character we need,
p story.slice(5, 4)

p story[-7, 4]  # starting from -7 th location in the string from the last and from there, we want 4 characters.
p story.slice(-7, 4)



# Extract Multiple characters with the Range object
# ==================================================

# range is nothing but a sequence of numbers in order. So we can give the range in the square bracket or in the slice
# method

p story[27..39] # start from index 27 and go upto index position 39 and including 39
p story.slice(27..39)

p story[27...39]  # tree dots means starting from 27 go upto 39 but don't include 39th index location
p story.slice(27...39)

p story[27..1000]  # if we give some index location which does not exist in that case ruby try to print upto it could
                    # after that it chops the output. and show nothing.
p story.slice(27...10000) # same with the case as 3 dots.

p story[25...-9]  # start from 25th position and go upto -9th position but don't include -9th  and note that this will
                    # move in the forward direction.




# Overwrite the Character in string with the bracket syntax
# =========================================================

name = "Rocket ship"
p name
name[0] = "P"  # override the value of 0th character of the string name
p name
name[9] = "o"  # So this is how we can modify the characters of the string
p name

fact = "I love Blueberry pie"
p fact
# suppose i want to replace the entire string Blue with the Rasp so we will make use of the slicing here
fact[7, 4] = "Rasp"
p fact
# Doing the same using the range, suppose again converting back to Blue
fact[7..10] = "Blue"
p fact
# Note that we can even replace the small sub string with the larger sub string as well.
fact[2..5] = "absolutely adhore"
p fact




# Case Method
# ===========

# 1) capitalize method

p "hello".capitalize # return Hello
p "heLLo".capitalize # return Hello again, notice LL in between are also converted to small l
p "Hello".capitalize # return Hello, notice no change.
# So capitalize method just capitalize the first letter of the string
p "hello!@".capitalize # return Hello!@, notice that characters other than letters are unaffected
p "hello 56".capitalize # retuen Hello 56
p "hello world".capitalize # return Hello world. So notice that only capitalize the first character of the string
p "hello World".capitalize # return Hello world. notice that it will turned back W of world to small w.
# Notice that capitalize method returns the brand new string.

# 2) .upcase and .downcase method
# .upcase converts everything to uppercase
# .downcase method convert everything to lowercase

name = "sagar123"
p name.upcase  # SAGAR123, notice only alphabetical characters are only impacted
name = "SAGAR123"
p name.downcase # sagar123

# .swapcase method
# reverses the case of the characters. and again only effective for alphabetical characters.

name = "saGAr"
p name.swapcase # SAgaR




# The .reverse method on a string
# ================================
# used for reversing the string, no matter what are the characters in that string

somestring = "Ruby"
puts somestring.reverse  # ybuR
puts somestring  # the actual string still remains the same, so the reverse method is not inplace.
puts "1234".reverse # 4321
puts "$#$%%".reverse # %%$#$
# note that reverse method is called on a string and return back the brand new string

# so we can perform the method calling chaining as below

puts "Ruby is fun".upcase.reverse.downcase   # method chaining, and this is possible only if the method called is 
                                                # providing the back the object, which in this case all the methods 
                                                # does as they all are outplcae methods.


                        
                                    
# Bang Methods on string
# ======================
# Here we are going to look at how we can make all the methods we have studied so far for string to modify the string
# inplace, i.e. modify the original string permanently.

word = "hello"

# one way to modify the original string is to assign back the new string back to the original string. this is quit
# old school method

# word = word.capitalize
# p word
# another way is to use the bang equivalent of the capitalize method as below

word.capitalize!
p word  # return Hello, so this is called inplace modification of the string.

word.upcase!
p word  # return HELLO

word.downcase!
p word  # hello

word.reverse!
p word # olleh

word.swapcase!
p word # OLLEH



# The .include? method on String 
# ==============================

# checks whether the character exist in the given string

name = "Snow White"

p name.include?("S") # true
p name.include?("W") # true
p name.include?("a") # false, case of the letter matters
p name.include?(" ") # one white space exist in our string hence true
p name.include?("  ") # false, as no two white spaces.

# to solve the problem of casing we can first convert all the letters to the lower case or all the letters to uppercase

p name.downcase.include?("s")  # true
p name.upcase.include?("OW")  # true, So we can search the string or the single character as well.
# notice that in the above statement, we are not using the upcase and downcase with the bang version, hence modifications
# are not in place.

p name.downcase.include?("snow") # true
p name.downcase.include?("rain") # false
p name.downcase.include?("sit") #false.




# The .empty? and .nil? method on string
# ======================================

# again the boolean methods and return true or false based on the operations
# .empty?
p "".empty? #true
p "content".empty? #false
p " ".empty?

# .nil?
p "".nil? # false, so even the empty string is not counted as nil by ruby
# so nil? method is used only in the cases where the return value of any operation is nil. see the below example
name = "Donald Duck"
# to print the last name of the above name
puts name[7, 4] # Duck, so in this case our code is working good, now suppose if we give the wrong index positions
substring = name[100, 4] # in this case "nill" will be returned  and stored in the substring
p substring.nil?    # true




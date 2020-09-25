# puts method()
# ==============

puts "Hello world"
puts "I'am alive and well"
# bu default puts method put the line breakier at the end.

puts "I bought 5 dollers at the store"
puts "I made $65 or a profit of 25%"

puts 5 # can have any number
puts 3.14159 # Can have any floating

puts 4 + 3 # same data type possible
puts "4" + "3" # same data type possible

# pust "4" + 3 -- This will throw error.

puts
puts
puts
# above are for empty lines

puts "Hello again after multiple puts"

# print method()
# ==============
# The only difference between the puts and print is that print does not add any line breaker of the space at the 
# end bu default

print "Hello"
print "world"


# below are three different ways to add space between hello and world.
print "Hello "
print "world"

print "Hello"
print " world"

print "Hello"
print " "
print "world"

puts

# p method()
# ==========

# The difference her is that it give better information about the things along with the printing them on console.

p "Hello world"
# so this will print and also enclose it in double quotes to show that is is string 

puts "Hello world this is 
nice place"
# this will print the statement in two lines by breaking it

p "Hello world this is
nice place"
# this will not print in new line but will infrom that there is a new line character in between.

# p also provide default line breaked at the end of line

# Basic Arithmetic Operations
# ============================
p 1 + 4

p 10 - 6

p 3 * 4

p "School" + "bus" # concatination of string

p 10 / 5 # integer division giving correct result here as 2
p 12 / 5 # integer divicion giving incorrect result here. to over come this issuse do as below

p 12.0 / 5
# or
p 12 / 5.0
# or
p 12.0 / 5.0

p 2 ** 3
p 3 ** 3

p 23 % 2

# for divison of any number between -1 to 1 the number must be preceeded by 0, otherwise it will give incorrect 
# result

# p .5 / 2 # This will result into error
p 0.5 / 2 # this is a correct way.

# comments in Ruby
# =================
# 1) Single line comment
        #
#  2) multiline comment
=begin

=end
# So this block of starting from =begin upto =end is a ruby multiline comment

# Variables in Ruby
# ====================
# Everything inside ruby is an object
# a variable in a ruby is nothing but a reference or a place holder or a pointer to these objects
# Ruby is dynamically typed language
# Examples
name = "Sagar"
last_name = "Sharma"
handsome = true
age = 28 + 1

puts name
puts last_name
puts name + " " + last_name

puts handsome

puts age # Notice the expression on the right side is calulated first and then 25 is assinged to age variable

# in ruby variables are dynamically typed hence we have reassign the value to already used variable age

age = 50
puts age

fn = 24
p fn

fn = "Twenty-Four"
p fn

# so fn is used as integer variable first and then in the next lined it is used as a string variable and same
# can be shown with the help of p function


# Parallel Variable assignment and Swapping Variable values
# ============================================================

a = 10
b = 20
c = 30

print a, b, c 
puts
puts a, b, c 
p a, b, c 

# So what parallel variable assignment is :

a, b, c = 10, 20, 30 # parallel Variable assignment
p a, b, c 

# notice that below type wrong assignment is ignored by ruby and it does not throw error

l, m, n, o = 10, 20, 30 # notice for 4 variables we are assigning only 3 values
l, m, n = 10, 20, 30, 40 # here for 3 variables we are assigning 4 values.
# So these type of scenarios will be ignored by ruby
p l, m, n 

# swapping values between to variables

a = 1
b = 2
p a, b 

a, b = b, a  # So here we are assigning the values from right hand side to left hand side in reverse, hence the
# the values of a and b are reversed.

p a, b

# constants
# ===========
# In Ruby constants are represented as all caps

NAME = "Sagar Sharma"
PI = 3.1259

p NAME
p PI

# note that in ruby contants also can be overridden but with the warning  from ruby

NAME = "Jeff" # this line will throw warning
p NAME # this line will print the NAME as jeff but with the warning.


# Intro to object methods
# ========================

# as we have studied, everything in ruby is object, so there are some methods for all these objects. some of the
# methods are shared by the objects if they have similar kind of functionality and some are explicit to pertecular
# object.

p "Hello World".length # "hello world" is a string type object and on that method lenght has operated and resulted in
# another string type object, i.e. length of string and that integer value is given to another method p to print it.

p "hello world".upcase

p "HELLO WORLD".downcase

# calling methods on string variables
foo = "Hello world"
p foo.length
p foo.upcase
p foo.downcase

# calling methods for integers 
puts

p 10.next # This increment the value of integer by one.
p -1.next

# Expooring more methods of string

puts "Hello world".inspect # This is  exactly same thing as that of p
p "Hello world"
# So basically p is nothing but puts method along with with inspect method call.
puts 50.inspect

# method to conver integer to string
p 5.to_s

# Return values and the nil object
# =================================

# This part we are going to do on irb, so see below the outputs from the irb console.

=begin

$ irb
irb(main):001:0> 4
=> 4 -- return value 4
irb(main):002:0> "Hello"
=> "Hello" -- return string hello
irb(main):003:0> 5+2
=> 7 -- return value 7 after calculation
irb(main):004:0> "Hello " + "world"
=> "Hello world" -- return string after concatination
irb(main):005:0> "Harry potter".length
=> 12 -- return integer object after calculating the length of string object with the help of length method
irb(main):006:0> "Harry potter".length.length -- not allowed like this
Traceback (most recent call last):
        4: from C:/Ruby27-x64/bin/irb:23:in `<main>'
        3: from C:/Ruby27-x64/bin/irb:23:in `load'
        2: from C:/Ruby27-x64/lib/ruby/gems/2.7.0/gems/irb-1.2.3/exe/irb:11:in `<top (required)>'
        1: from (irb):6
NoMethodError (undefined method `length' for 12:Integer)
irb(main):007:0> "Harry potter".length.next -- on the integer type object received from length method is given to
                                                another method next. and is incremented by one
=> 13
irb(main):008:0> "Harry potter".upcase
=> "HARRY POTTER"
irb(main):009:0>
irb(main):009:0> puts "Hello"
Hello
=> nil    -- This represent that puts does not return anything  and that nothing is represented by nil
irb(main):010:0> puts 5
5
=> nil
irb(main):011:0> puts 5+2
7
=> nil
irb(main):012:0> puts nil
                          --- with the help of puts we get nothing printed for nil
=> nil
irb(main):013:0> p nil
nil                        -- p explains what this nil is and hence print that
=> nil
irb(main):014:0>

=end


# String Interpolation
# =======================
# way of inserting the a string, an integer or any other element in between of another string
# String interpolation by default convert the integer value to the string value.

# example

name = "Sagar"

p "Hello " + name   # This is old way and out of fashion. Also this way will not conver the inserting value to string
                        # we will have to manually conver the integer to string before inserting like this

# example

age = 28

p "My age is " + age.to_s  # notice that we had to conver the age first from integer to string otherwise it will
                                # throw error
                
# with string interpolation we can over look these things as in sring interpolation we get our integer automatically
# converted to string

p "Hello #{name}"
p "My age is #{age}"

# we can also inject expressions inside the string interpolation

p "The value of 1 + 1 is : #{1 +1}"
p "In five years i will be #{age + 5} years old"

# we can also have multiple variables in string interpolations

x = 5
y = 10

p "The addtion of x and y is #{x + y}"


# gets method and chomp method
# =============================

# gets method
# again we are looking at the use of these at the irb

=begin
irb(main):017:0> gets
sagar
=> "sagar\n"          ---- gets is used to take user input from the user and by defualt convert everthing into string.
                      ----- Also note that gets add a \n by default at the end of every user input
irb(main):018:0> name = gets
sagar                 ----- Here we have stored the value entered by user into a variable name
irb(main):019:0> name
=> "sagar\n"          ------ printing variable value on console. again notice that \n is added and this causes 
                      ------ a problem, see the example below
irb(main):020:0> puts "Thank you #{name}, see you later"
Thank you sagar
, see you later       ------ so if you notice that because of \n placed by default by gets, line got printed in two
                      ------ lines.
                      ------ to overcome this issue we uses chomps
=> nil
irb(main):021:0>

=end

# chomp mehtod
# see the below irb code

=begin
irb(main):021:0> gets.chomp
sagar
=> "sagar"              -- not added any \n by default
irb(main):022:0> name = gets.chomp
sagar
irb(main):023:0> name
=> "sagar"
irb(main):024:0> puts "Hello #{name}, see you later"
Hello sagar, see you later         ---- got the output in one line. with the help of chomp method
=> nil
irb(main):025:0>
=end

# program

print "Enter your name : "
name = gets.chomp
puts
print "Cool!, Enter your age : "
age = gets.chomp.to_i                # by default whatever value entered by user gets converted into strin by gets
puts                                 # so we have to cast it to integer first
puts "Hi #{name} you are #{age} years old"










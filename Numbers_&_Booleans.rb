# Introduction to numbers
# =======================

# Integers
p 10
p 0
p 100
p -50

# floating point numbers
p 1.567
p 100.5667
p -45.67

# .class method : This is a shared methods for all type of objects and it tells from which class the object, calling 
# it has originated from

p 10.class # Integer class
p 55.67.class # Float class
p "Hello".class # String class
p 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999.class # Integer class


# Converting numbers to String and vice verse
# ============================================

# String to number
str = "5"
p str
p str.class

p str.to_i  # note that this conversion of str to integer is not inplace, that means ever after conversion, the 
            # actual value of str sill remain same.
p str.to_i.class   

p str 

# String to float
str = "5.0"

p str
p str.class
p str.to_f

p str.to_f.class

p str   # Actual value of string still same.

# Integer to String

number = 10

p number
p number.to_s  # conver integer to string

p number.to_s.class # gives the class for integer

p number # value of number still is same.

# Integer to float

p number
p number.to_f

p number.to_f.class

# floating point number to Integer

float_num = 3.14

p float_num
p float_num.to_i

p float_num.to_i.class

p float_num   # again after conversion also , the actual value remain the same

# floating point number to string

p float_num.to_s
p float_num.to_s.class

# converting number to the same types

p "5".to_s
p "5".to_s.class

p 5.to_i
p 5.to_i.class

p 3.14.to_f
p 3.14.to_f.class


# Introduction to booleans
# =========================
# Test of truthiness

p 5 < 10   # result in true

p 5 > 10  # result in false

# true and false are boolean class objects so we can even print them

p true
p true.class

p false
p false.class

age = 25
handsome = true
stupid = false

p handsome.class
p stupid.class


# The .odd? and .even? predicate method
# =====================================

# These methods are for class integer and they are boolean method
# note that these methods are not called for float as they are not avilable for Float class

p 10.even? # return true

p 10.odd? # return false



# comparison with equality (==) Operator
# =======================================

# return true or false, based on if equal or not

p 5 == 5  # return true

p 10 == 20  # return false

a = 10
b = 20
c = 10

p a == b    # false
p a == c    # true

p "5" == 5    # false
p "5" == "5"   # true

p 5 == 5.0   # true, even though one is integer and other one is float. 

# its always perform comparison between same type of variables in order to reduce the errors in a program
# to do so we will make use of the conversion methods lile to_i, to_s, to_f

p 5.to_f == 5.0  # true

p "5".to_i == 5   # true


# comparison with inequality operator
# ====================================

p 5 != 10  # true
p 5 != 5  # false

p "Hello" != "hello"  # true, notice the difference between h and H in both the strings. so case sensitivity matters

p "Hello".downcase != "hello".downcase  # false.

p "123" != 123  # true


# Less than and greater than Operators
# =====================================

# <, <=, >, >=
# these are the four operators which we use and all of them result into a boolean value for the operation

p 5 < 10   # return true
p 10 < 5   # return false

p 5 <= 10  # return true
p 10 <= 5 # return false
p 5 <= 5   # return true

p 10 > 5  # return true
p 5 > 10  # return false

p 10 >= 5  # return true
p 5 >= 10  # return false
p 10 >=10  # true


# Arithmetic methods and basic arguments
# =======================================

# for methods in ruby parantheses are optional. for example the next method
# we have used before can also be written line beloe

p 1.next()  # return 2

# similarly lets explore some of the important operators like +, -, /, *. in ruby as everything is object, So these
# operators are nothing but the methods operating on these objects. based on this concept we can write the operations
# in multiple forms as below

p 1 + 2  # return 3
p 1.+(2)  # this will also return 3, here we have called the "+" method on object 1 and passed 2 as a argument to
            # this mehtod
p 1.+ 2  # this also returns 3, as again parantheses are optional.

p 10 - 5
p 10.-(5)
p 10.- 5

p 3 * 2
p 3.*(2)

p 4 / 2
p 4./(2)
p 4.div(2)   # this is another form of writing the division as this is using the method div which is exactly the
            # thing as that of / operator
p 4.div 2    # This shows again parantheses are not important

p 10 % 3
p 10.%(3)
p 10.modulo(3)  # modulo again is a complementary method here


# Object methods with Parameters, the .between? predicate method
# ==============================================================

# When method is defined, it is given the arguments and when method is called, it is given the parameters
# between?(min, max) --> true or false, here min and max are parameters.

# example

p 4.between?(1,5)   # ture
p 6.between?(1,6)  # false
p 5.between?(1,5)   # true, this means lower and upper limits are included in this.
p 1.2.between?(1.1, 1.3)  # true
p -10.5.between?(-20.0, 0)  # true
p 5.3.between?(8.4, 9.6)  # false


# Float methods
# ==============

p 3.4.to_i   # return 3, as it chops off the the decimal part

p 10.5.floor  # give the closest possible integer value at the lower side, i.e. 10 in this case
p 10.5.ceil   # give the closest possible integer value at the higher side, i.e. 11 in this case

p 3.14159.round()  # when round called without the argument, it round off the result to 0 decimal position, which is
                    # nothing but the closest integer values based on whether the decimal part is more than 5 or less
                    # so in this case it will give output as 3
p 3.14159.round(2)  # return 3.14
p 3.14159.round(3)  # return 3.142
p 3.14159.round(4)  # 3.1416

p 50.abs  # return 50, which is nothing but the absolute distance of 50 from 0
p -50.abs  # return 50 as well.


# Assignment Operators
# ======================

a = 10
# a = a + 10
a += 10  # shorthand way of writing

b = 100
b -= 50

c = 3
c *= 4


# Introduction to block in Ruby using .times method
# ==================================================

# here we are going to learn about the blocks in the ruby with the help of .times method, which is used to perform
# certain action perticular number of times the times method called for.
# two ways to have block with the .times method
# 1) curly braces { }
# 2) do end block.

# examples

3.times { puts "Hello world from curly braces" }
# So this is going to puts the line 3 times

5.times do
    puts "Hello world from do end block line 1"
    puts "Hello world from do end block line 2"
    end

# Usually with single line we uses curly braces and with multiple lines we make use of do end block.
# So this is how we can have block with the help of do end block

# block variables
# block variables are used to in context to the method called on the object.
# for example here we have called method(times) on object (3) and with respect to this method block variables will
# will count the number of iterations.

# 3.times do |count|
#      puts "line #{count}"
# end

# 3.times do |i|
#     puts "Line #{i}"
# end

# notice that the scope of this block variables is just inside this block of code and not outside of that.

3.times do |i|
    puts "Line #{i+1}"
end


# this will print 
# line 0
# line 1
# line 2

# can be used with {} syntax

4.times { |i| puts "line #{i}" }

# assignment

# To print first ten multiple of 3 ( Table of 3)

10.times { |i| puts "3 * #{i + 1} = #{(i + 1) * 3}" }


# The .upto and .downto method
# =============================
# They both are applied on the integers
# So this is somewhat like a for loop in java where we give the starting and ending position for a loop, but here
# also we are not giving the step/incremental operator

# example

5.downto(0) { |count| puts "count #{count}"}  # will print count 5 to 0
5.downto(0) do |count|
    puts "count #{count}"
    puts "Hurray"
end
# so basically we are strging from the integer location for which this method is called and ends on  the parameter
# given to this method

# similarty we have .upto method as well, example

0.upto(5) { |i| puts "count #{i}"}
# So this will print from 0 to 5
0.upto(5) do |i|
    puts "count : #{i}"
    puts "Heyyyeye"
end

# we can even remove the block variables with upto and downto method and from starting to ending position task written
# inside the block will be executed.

3.upto(10) do
    puts "Hello world"
    puts "Today is so good"
end


# The .step method
# =================

# This is exactly similar to the for loop in java, here we can specify starting, ending position along with the
# step size as well

# example

7.step(70, 7) { |i| puts "#{i}"}

8.step(80, 8) do |i|
    puts "#{i}"
end






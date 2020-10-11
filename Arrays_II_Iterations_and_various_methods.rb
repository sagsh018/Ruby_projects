# The ri program
# ===============
# stands for ruby documentation
# we can install this on windows with the help of belw command
# gem rdoc --all --ri --no-rdoc
# once install we can have a look at the decumentation of any of the class let say String with the help
# of below command
# ri String -- gives the documentation about the String class and its methods and all
# ri String.upcase -- in order to have a look at the documentaion about the method upcase of String class
# We could also give the method name directly and that will give all the information related to that method from all the classes it is present in.





# Review of Blocks
# ================
# So as we have seen before the blocks in ruby can be created with the help of two ways
# a) curly braces
# b) do end block

# example
3.times { puts "Hello world" } # usually this curly braces blocks are used for single line of code
# output:
# Hello world
# Hello world
# Hello world

# we could also make use of a temparory variable inside this block which is called as a block variable and counting of this block variable 
# starts from 0 in ruby
3.times{ |num| puts "I am loop number #{num}"}
# output
# I am loop number 0
# I am loop number 1
# I am loop number 2

5.times do |num|
    sqr = num*num
    puts "The square of #{num} is #{sqr}"
end
# The square of 0 is 0
# The square of 1 is 1
# The square of 2 is 4
# The square of 3 is 9
# The square of 4 is 16
# note that the scope of a block variable is just inside the block and it is deleted after the block execution




# The .each method on an array
# =============================
# when .each method is applied on array object, each method iterates over each element in an array in order and inside the block we define
# the operation which we like to perform on every individual element of an array

# examples
candies = ["Sour Patch Kids", "Milky Way", "Airheads"]
candies.each do |candy|
    puts "I love eating #{candy}"
    puts "It tastes so good"
end
# I love eating Sour Patch Kids
# It tastes so good
# I love eating Milky Way
# It tastes so good
# I love eating Airheads
# It tastes so good

#  notice in above example, block variable candy is representing the element of an array in each iteration

# example -- convert each string element of an array to uppercase 
names = ["bo", "moe", "joe"]
names.each do |name|
    name.upcase!
end
p names

# example -- to print the square of every element of an array
[1, 2, 3, 4, 5].each do |num|
    puts "The square of #{num} is #{num*num}"
end
# The square of 1 is 1
# The square of 2 is 4
# The square of 3 is 9
# The square of 4 is 16
# The square of 5 is 25

# example -- to print whether element is odd or even which present in an array
fives = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
fives.each do |num|
    if num.even?
        puts "#{num} is even"
    else
        puts "#{num} is odd"
    end
end

# example -- from above fives array, lets try to pupulate two new arrays named as odds and evens. if the element is even add it to evens array
# and if the element is odd then push the element to odds array

def seggregate(arr)
    odds = []
    evens = []
    arr.each do |num|
        if num.even?
            evens.push(num)
        else
            odds << num
        end
    end
    puts "Array of odd elements is : #{odds}"
    p "Array of even elements is : #{evens}"
end

seggregate(fives)
# Array of odd elements is : [5, 15, 25, 35, 45]
# "Array of even elements is : [10, 20, 30, 40, 50]"

# we could also do it with the help of ternery operator

def even_or_odd(arr)
    evens = []
    odds = []
    arr.each { |num| num.even? ? evens << num : odds << num}
    p evens
    p odds
end
even_or_odd(fives)
# [10, 20, 30, 40, 50]
# [5, 15, 25, 35, 45]





# each within each 
# ==================
# lets have two arrays here
shirts = ["stripped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]
shirts.each do |shirt|
    ties.each do |tie|
        puts "Option : #{shirt} with #{tie}"
    end
end
# stripped with polka dot
# stripped with solid color
# stripped with boring
# plain white with polka dot
# plain white with solid color
# plain white with boring
# plaid with polka dot
# plaid with solid color
# plaid with boring
# band with polka dot
# band with solid color
# band with boring





# The for loop
# ============
# example of each loop first
numbers = [1, 2, 3, 4, 5]
num = 100
numbers.each do |num|
    puts num
end
p num # the value of num is still 100 and not overriden by the num block variable used inside the each block of code

# example of for loop
item = 100
for item in numbers
    puts item
end
p item # This will print the value of item as 5 becasue the item variable used inside the for loop block was assigned with value 5 on the 
# last iteration and after for loop is finished, the item variable is escaped out of it and overriden the global value of item which was 100.

# example of for loop on a range object
for range_num in 1..10
    puts range_num
end
p range_num # 10, still this variable is active after completion of for loop.





# The .each_with_index method
# ============================
colors = ["Red", "Green", "Blue", "Yellow", "Orange"]
colors.each_with_index do |color, index|
    puts "At index position #{index} we have #{color} color"
end
# At index position 0 we have Red color
# At index position 1 we have Green color
# At index position 2 we have Blue color
# At index position 3 we have Yellow color
# At index position 4 we have Orange color

# example -- write a method which wil take a numeric array as an argument and print the multiplication of each element of an array with its index
def multi(arr)
    arr.each_with_index do |num, index|
        puts "At index position #{index} we have #{num} color and the product of number with its index is #{num*index}"
    end
end
multi([5, 10, 15, 20, 25, 30])
# At index position 0 we have 5 color and the product of number with its index is 0
# At index position 1 we have 10 color and the product of number with its index is 10
# At index position 2 we have 15 color and the product of number with its index is 30
# At index position 3 we have 20 color and the product of number with its index is 60
# At index position 4 we have 25 color and the product of number with its index is 100
# At index position 5 we have 30 color and the product of number with its index is 150

# example -- Write a loop on the below given array that gives back the sum of product of each index and its value
arr = [1, 2, 3, 4, 5]
def sum(arr)
    sum = 0
    arr.each_with_index do |num, index|
        sum += num * index
    end
    puts "The sum of product od index and its values in a given array is : #{sum}"
end

sum(arr) # 40


puts
puts
# example -- [-1, 2, 1, 2, 5, 7, 3]
# write a method the prints the product of the element and its index, if and only if the index is greater than the element
arr = [-1, 2, 1, 2, 5, 7, 3]
def sum_if_greater(arr)
    arr.each_with_index do |num, index|
        if index > num
            puts "The product of #{num} and #{index} is : #{num*index}"
        else
            puts "At index #{index}, the index value is smaller that element at this index"
        end
    end
end
sum_if_greater(arr)
# The product of -1 and 0 is : 0
# At index 1, the index value is smaller that element at this index
# The product of 1 and 2 is : 2
# The product of 2 and 3 is : 6
# At index 4, the index value is smaller that element at this index
# At index 5, the index value is smaller that element at this index
# The product of 3 and 6 is : 18





# The .map and .collect method on an Array
# ==========================================
# both these methods are same funtionality wise

# example
numbers = [1, 2, 3, 4, 5, 6]
squares = []
numbers.each { |number| squares << number ** 2 }
p squares # [1, 4, 9, 16, 25, 36]
# So .map and .collect are the methods that are used to emulate the functionality of above code, where you want to create a new array by 
# performing some operation on every single element of some other array.
# So .map or .collect return back the brand new array 

# look at the below example
p numbers.map { |number| number ** 2 } # [1, 4, 9, 16, 25, 36], so this map method has returned a brand new array and it has been orinted with 
# p 
# we can also store the value of above map method returned into another array variable lets say square
squares = numbers.map { |number| number ** 2 }
p squares # [1, 4, 9, 16, 25, 36]
# so this saves us the extra work of creating an empty array and then explicitely pushing the elements after performing operations on them into 
# this new array.

# .collect is also used in exactly same way and gives the exactly same result
squares_collect = numbers.map { |number| number ** 2 }
p squares_collect # [1, 4, 9, 16, 25, 36]

# Example -- to convert the fahrenheit temperature given in one array to the celsius
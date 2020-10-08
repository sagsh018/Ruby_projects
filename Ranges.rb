# Intro to ranges
# =================

# first way to define the range in ruby using two dots by including the lower and top limit both
num = 1..10 # This will include all the numbers starting from 1 till 5
p num  # print 1..10
puts num  # same output
print num # same output
puts
p num.class # Range type object

# second way to define the range is using three dots by excluding the final value of range
num1 = 1...10 # this will exclude 5
p num1 # print 1...10, but this range will not contain 10

# methods available for range
# 1) first
# 2) last
# these methods give the first and the last element of the range

p num.first # 1
p num.last # 10

p num1.first # 1
p num1.last # 10, Now this is unexpected becasue after using 3 dots the last number 10 should be excluded but the last method over range gives 
            # last number included in the output.

# So because of the weird output above in the last method call on the 3 dots range, these methods are not useful without the parameters
# these should be used along with the parameters to the methods

# examples
p num.first(4) # to get first 4 numbers and returned in a form of array ==> [1, 2, 3, 4]
p num.first(5).class # Array

p num.last(4) # last 4 numbers in the range in a form of array ==> [7, 8, 9, 10]

p num1.first(5) # [1, 2, 3, 4, 5]
p num1.last(5) # [5, 6, 7, 8, 9] # notice here last number 10 is excluded in this 3 dots range from the output array. so here with the argument
                # these methods are useful
p num1.last(1) # [9]

# Also notice that if we try to apply the range methods directly on the range object instead of the variable we can run into error
# p 1..5.first(2) so we can't do like this due to confusion
p (1..5).first(2)  # [1, 2]
puts (1..5).first(2) 
# output
# 1
# 2



# Alphabetical Ranges
# ====================
aplphabet = "a".."z" # taking range for all the small letter from a to z
p aplphabet.first(10) # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
p aplphabet.last(5)  # ["v", "w", "x", "y", "z"]
p aplphabet.last(40) # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
# So notice that even when we have given the number index 40 which is already out index as there are only 26 letter in the range, we didn't get
# the error and ruby simple just ignored them

allletter = "A".."z"  # Note when try to store all the capital and small letters in one range, it gives some garbage charaters in between og both
p allletter.first(100)
# output
# ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
# ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d",
# "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
# so always better to store the smaller and capital letters in separate range only





# The .size method on range
# ==========================
# here the .size method is only used with the numeric ranges and with the alphabetical ranges it gives the error

numbers = 143..769
p numbers.size # 627 ==> (769-143) + 1
numbers1 = 143...769
p numbers1.size # 626 ==> (769-143)

letters = "a".."z"
p letters.size # gives nil




# Check if the value exist in a Range with .include? method or with ===
# =======================================================================
half_alphabets = "a".."m"
p half_alphabets.include?("b") # true
p half_alphabets.include?("j") # true
p half_alphabets.include?("z") # false
p half_alphabets.include?("m") # true as this is 2 dots range

puts half_alphabets.include?("A") # false

numbers = -14..79
puts numbers.include?(-12) # true
puts numbers.include?(0) # true
puts numbers.include?(100) # false

# another way to is to use ===
p half_alphabets === "b"  # true
p half_alphabets === "j" # true
p half_alphabets === "z" # false

p numbers === -12 # ture
p numbers === 1000 # false



# Generate a random number with the rand method
# ==============================================
# helps in generating the random number

# if called by itself then it generate the random number between 0 and 1
puts rand # 0.2780464289221596

# we can even round the value to preticular number of decimal locations as well by calling round method on the rand method as below
puts rand.round(2) # 0.25
puts rand.round(4) # 0.5081

# Now lets call rand method by passing arguments:
puts rand(100) # this will generate a random integer(becasue we have passed a random integer) between 0 to 99. note that 100 will be excluded

# similarly if we want to generate the floating point numbers but this time not just between 0 to 1 but between 0 to 10 let say, then we can use
# the below technique


puts rand * 10 # so actual rand will generate any floating number between 0 to 1 and if multiplied with 10 then it will start giving me the
                # random floating number between 0 and 9
puts rand * 100 # floating number between 0 to 99

# we can also pass in the range as an argument to rand method
puts rand(50..100) # generate any random integer between 50 to 100 and 100 included as we are using 2 dots
puts rand(0..100)






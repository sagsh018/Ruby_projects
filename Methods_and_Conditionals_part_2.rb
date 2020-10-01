# The Case statement
# ===================

# example

def rate_food(food)
    case food
    when "paneer"
        "pass me the paneer"
    when "parantha"
        "pass me the achaar"
    when "sabzi", "dal"    # Notice that this means sabzi or dal. and here no need to use "or" pipe operator.
        "pass me the roti"
    when "pizza", "burger", "pasta"
        "pass me the catchup"
    else
        "Unknown choice of food"
    end
end

p rate_food("paneer")
p rate_food("pizza")
p rate_food("sabzi")

# another example using the range

def calculate_school_grade(num)
    case num
    when 90..100  # notice 90..100 inclide 100as only two dots are there (..)
        "A"
    when 80..89
        "B"
    when 70..79
        "C"
    when 60..69
        "D"
    else
        "F"
    end
end

p calculate_school_grade(95)
p calculate_school_grade(91)
p calculate_school_grade(89)
p calculate_school_grade(85)
p calculate_school_grade(79)
p calculate_school_grade(69)

# we can even write the case statements in the below manner

def calculate_grade(num)
    case num
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
    else "F"
    end
end
# So if we notice in the above method definition we have written the choices on the same line as that of consitions
# but we have to use the extra keyword here "then".

puts

p calculate_school_grade(95)
p calculate_school_grade(91)
p calculate_school_grade(89)
p calculate_school_grade(85)
p calculate_school_grade(79)
p calculate_school_grade(69)




# Negation with (!)
# =================
# used for negating something or reverse something

# usecase 1

name = "sam"

if name != "ram"
    puts "thats correct"
end
# So if we notice here ! is negating the equality

# usecase 2
puts !true  # false
puts !false # true

# usecase 3
puts !1  # notice that here 1 represent he truthiness in ruby but when we use ! in front of it, ruby forces 1 to oncvert into truthiness value
            # and when we are applying ! in fron of it, we are getting false.
puts !"Hello world"  # false
puts !"" # false

# examples

p !"" # false, again we have converted the empty string to truthiness by using the ! in fron of it, but then ! has negated the values
        # and turned it to false
p !3  # false
p !3.14  # false

# So here we are basically converting the objects of any other data tyes to boolean, but unfortunately we are getting the negitive value for them
# due to ! sign in front of them.
# but then if we apply one more ! in front of them as below we can get the actualy boolean value of the data type
# example

p !!"" # true, So now the string value is converted to its equivalent boolean value
p !!3  # true

p !!false  # false
p !!nil  # false, so here since we know that nil is falsiness in ruby and with the help of two !! in front of it, we can get its boolean value.




# The unless keyword
# =====================

# This is complement of using if statement
# if suppose we want to check some kind of negetive condition with the help of if statment, there is a better alternative available which is
# untiss keyword

# example

password = "something"

if password != "whiskers"
    puts "Not allowed"
else
    puts "Welcome"
end

# now here we are kind of doing something opposite, like we are checking the negetive condition in the if to be true and doing some activity
# after that. for such kind of scenerios, we can make use of unless

unless password == "whiskers"
    puts "not allowed"
else
    puts "allowed"
end
# so here we are able to test the positive condition with the help of unless keyword instead of using if. so unless here says that execute
# the code under it inless the condition becomes true, in this case unless the password becomes true , keep on executing "now allowed"
# so unless works exactly opposite that of if

# another example

password = "done"

if !password.include?("a")
    puts "Does not include a"
end
# so basically what we want to do here with the if statement here is, we want to pint "does not contain a" when a is not present in the 
# password.

# but this could be done with the help of unless in more better way

unless password.include?("a")
    puts "Does not include a"
end
# So this statment "does not include a" will keep on printing unless the password contain a. 

# Note :: if statment with the negation can be replaced with unless.




# The while keyword
# ==================

# example

i = 1

while i < 10
    puts i
    i += 1
end

puts

p i # we can print i outside the loop becasue i is defined globally above and have global scope.
    # Also notice the value of i will 10, as the last iteration for which which has failed has incremented the value of i to 10.

# example 

status = true

while status
    puts "Enter the username or Enter quit to exit the application"
    username = gets.chomp.downcase
    puts "Enter the password or Enter quit to exit the application"
    password = gets.chomp.downcase

    if username == "sharmasag" && password == "ishwarus1992"
        puts "Access granted, Welcome!!"
        status = false
    elsif username == "quit" || password == "quit"
        puts "Thank you..!! see you next time"
        status = false
    else
        puts "Wrong username and password, please try again or type quit to exit the application"
    end
end




# The untill keyword
# ===================

# So this is a complementary loop for the while loop
# So it works in exactly the opposite way. so while continue to execute till condition remains true, whereas untill execute untill the condition
# becomes true.

# example

i = 1

while i < 10
    puts i
    i += 1
end

puts

# doing the same with the help of untill

i = 1

until i > 9
    puts i 
    i += 1
end
# This gives the exact same output as that of while loop.



# Program
# create a method named as fizzbuzz taking one number as an argument and looping from that number to 25 and in between that number to 25,
# if the number is divisible by 3, return Fizz and if divisible by 5 return Buzz and if divisible by both 3 and 5 return Fizzbuzz.

def fizzbuzz(num)
    num.step(25, 1) do |i|
        if i%3 == 0 && i%5 == 0
            puts "Fizzbuzz"
        elsif i%3 == 0
            puts "Fizz"
        elsif i%5 == 0
            puts "Buzz"
        end
    end
end

fizzbuzz(15)

puts 

def fizzbuzzagain(num)
    while num <= 25
        if num%3 == 0 && num%5 == 0
            puts "Fizzbuzz"
        elsif num%3 == 0
            puts "Fizz"
        elsif num%5 == 0
            puts "Buzz"
        end
        num = num.next
    end
end

fizzbuzzagain(15)





# Statment modifier / Inline modifier
# ===================================

# example

num = 5000
verified = true

if num > 2500 && verified
    puts "Huge number"
end

# the same thing can be donw with the below inline modifier as well

puts "Huge number" if num > 2500 && verified

# same syntax can be used for unless as well

x = 8
puts "X is not greater than 10" unless x > 10




# Conditional Assignment
# =====================

# This is used to assign the value to a variable only on a condition that the variable is having nil

y = nil

y = 5  # possible

y = 10  # possible
p y  # print 10
# but

z = nil

z ||= 5 # possible as z was nil

z ||= 10 # this will not be done and skipped and value of z will remain 5
p z # print 5

# usage of conditional assignment is

greeting "hello"
index = 0
letter = greeting[index]
p letter
p ||= "not found"  # So this is to make sure that in any case if the index location is set to something which is not valid than the letter
p letter            # will be assigned with nil and to avoid that we will assign it conditionally with string not found






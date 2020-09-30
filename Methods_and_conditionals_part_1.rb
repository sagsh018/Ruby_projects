# Intro to methods
# ===================

# syntax of methods in ruby.

def introduce_myself
    puts "Hello my name is sagar"
    puts "I am smart"
end

# calling/invoking the method
introduce_myself   # note that parenthesis are not must, they can be skipped as well untill you are passing any 
                    # parameters to the method call.




# Local Variables
# =================
# local variables defined inside the scope/block of a methods have there scope confined to that block only.

expression = "I am smart"

def some_method
    expression = "I am handsome"
    puts expression
end

some_method  # this will print I am handsome

puts expression  # This will print I am smart, as this is having its scope outside the method definition as well.




# parameters and Arguments in method
# ====================================

# lets see the example of single parameter and argument

def greet(name)
    puts "#{name} you are very welcome"
    puts "#{name} you are awesome"
end

greet("sagar")
greet("somename")

# lets have an example of multiple parameters and arguments

def praise_person(name, age)
    puts "#{name} is amazing"
    puts "#{name} is charming"
    puts "#{name} is talented"
    puts "#{name} age is #{age}"
    puts "#{name} age after 5 years will be #{age + 5}"  # notice that string interpolation of age will conver it to 
end                                                         # string hence we are doing the required calculation
                                                            # inside the curly braces before ruby interpolate it.

# lets call this method
praise_person("sagar", 28)





# Return values I
# ===============

# example

def add_num_explicit_return(num1, num2)
    puts "Adding two numbers"
    return num1 + num2     # explicitely returnung the value as we have written ruturn statement here
end

p add_num_explicit_return(3, 4)   # 7
p add_num_explicit_return(50, 40) # 90


def add_num_implicit_return(num1, num2)
    puts "Adding two numbers"
    num1 + num2             # So here we are using implicit return, as we have not used return statement
end                         # in ruby last expression or statement executed is returned implicitely by the method.

p add_num_implicit_return(10, 20)

# Notice that our work is done with the help of implicit return as well, but explicit return statements are important
# in the cases such as : suppose if we have a if condition in our method code and we want to return one thing if the
# condition becomes true and return other thing if it is false. So in this case method won't be able to return
# with the if statement, as that will not be the last line of the code. so in these cases we need explicitely write
# the return statment sometimes.




# Return Values II -- Default return values and the return of the puts method
# ============================================================================

# consider this empty method 

def nothing
end
# so this method has not steps to perform and returning nothing
# if we call this, it will return nothing and nothing in ruby is represented by the keyword "nil"
p nothing # print "nil"

# another example
def return_string
    "Hello world"  # since this is a last line of mehtod hence will be returned implicitely and no need of return 
end

p return_string  # return "Hello world"

# conside this example now

def return_guess 
    puts "Hello world"   # again last line hence no need of return
end

p return_guess   # this will return "nil" because the last line of the method is puts and puts and print both
                # just print the values and return nil, refer to irb for your clarification
                # hence this return value of puts is returned back by the method return_guess
                # same will be the case with print, as print also return nil.





# The if Statement
# ================

# example/syntax

if 5 < 7
    puts "5 is less than 7"
end
# So if the statement 5 < 7 becomes fales, the the puts statement inside the if block will not execute.

password = "abcd"
if password == "abcd"
    puts "Welcome!!"
end

# another example

word = "kangaroo"

if word.length == 8
    puts "Word is 8 letter long"
end

# another example with string class methods

word = "zebra"

if word.include?("eb")
    puts "Yes"
end

if word.upcase == "ZEBRA"
    puts "Uppercase"
end

# another example

if 5.odd?
    puts "Yes it is odd"
end




# Truthiness and Falsiness
# ===========================

# we can put true or false with the if statement like below

if true
    puts "This is true"
end

if false
    puts "This is false"
end   # This is not going to execute as this will make the condition false.

# now suppose if we keep anything other than that of the boolean operation here

if 5     # here the number is becoming true becasue of its truthiness
    puts "this is printed"
end

# notice that if you will keep anything in the if condition like any string, or any number it will lead to true 
# becasue of its truthiness.

# there are only three ways to make the if condition false though
    # 1) if the condtion evaluates to false
    # 2) if we put manually false
    # 3) if we put "nil" in if condition, because this will lead to falsiness
# other than these above examples, nothing will lead to falsiness. because rest all the values will counted as truthy 
# by ruby

if -10
    puts "Ture"
end

if 0
    puts "true"
end

if 34.8888
    puts "true"
end

if "djfjdjdjd"
    puts "true"
end

if ""
    puts "even empty string also leads to truthiness as this is also atleast an empty string"
end

# so all these will leads to true only

if []   ## arrays are also truthy
    puts "printed"
end

if {}  # hashes are also truthy
    puts "true"
end

if 5..10  # ranges are also truthy
    puts "True"
end

# Note :: Everything in ruby is truthy except the false and nil 




# if else
# =========

# example

color = "yellow"

if color == "violet"
    puts "color is violet"
elsif color == "indigo"
    puts "color is indigo"
elsif color == "blue"
    puts "color is blue"
elsif color == "green"
    puts "color is green"
elsif color == "yellow"
    puts "color is yellow"
elsif color == "orange"
    puts "color is orange"
elsif color == "red"
    puts "color is red"
end




# else keyword
# ============

grade = "D"

if grade == "A"
    puts "Outstanding"
elsif grade == "B"
    puts "Good, but more effert required"
elsif grade == "C"
    puts "Dissapointed, need hardwork"
else
    puts "You are failed"
end

# So else has taken care of all the cases other than A, B, and C

# Another example

def odd_or_even(number)
    if number%2 == 0
        puts "Number is even"
    else
        puts "Number is odd"
    end
end

odd_or_even(3)




# Multiple conditions with && operators
# ======================================

# && is called and operator and it evaluates to true only if all the inputs are true
# otherwise it evaluates to false.

age = 25
ticket = "Allowed"
id = true

if age > 21 && ticket == "Allowed" && id   # notice here id using as a truthiness value.
    puts "You are Welcome !!!"
else
    puts "You are not allowed"
end

# notice the way we are joining multiple conditions with the help of && and if any one will fail the entire if
# condition will evaluate to false and then else part will execute
# Note :: The concept of short circuit evaluation in ruby



# Multiple conditions with || operator

# || operator is called as OR operator and this operator evaluates the condition to true if any one of the condition
# is true

# example

budget = 5
price = 10
mood = "Happy"

if budget > price || mood == "Happy"
    puts "I will buy the item"
else
    puts "I don't want to buy"
end



# Parentheses and Precedence
# ===========================

# So sometimes when we have to combine multiple types of conditional operators like &&, || then in that case we have to
# use the parentheses in order to avoid confusion

def authenticate_agent(rank, name, creds)
    if (rank == 007 && name == "James Bond") || creds == "Secret Agent"
        puts "Access granted #{name}"
    else
        puts "Access Denied #{name}"
    end
end

authenticate_agent(007, "James Bond", "something")
authenticate_agent(007, "James", "something")




# nested if statements
# ====================

# nested if are useful when we are having to major categories and rest all are the sub categories in those
# consider the example of let say meals you take in the weekdays and in weekends.

def meal_plan(time_of_week, time_of_day)
    if time_of_week == "weekday"
        if time_of_day == "breakfast"
            "corn fleks"
        elsif time_of_day == "lunch"
            return "sabzi, roti"
        elsif time_of_day == "dinner"
            "Dal, roti, chawal"
        end
    elsif time_of_week == "weekend"
        if time_of_day == "breakfast"
            "Aloo parantha"
        elsif time_of_day == "lunch"
            "Rajma chawal"
        elsif time_of_day == "dinner"
            "shahi paneer"
        end
    end
end

p meal_plan("weekday", "lunch")
p meal_plan("weekday", "dinner")




# The .respond_to? Method
# ========================

# So this method is used to check whether the perticular object in ruby(be it a number, string, or any other object)
# can respond to the specific method in ruby.
# return boolean value
# examples

num = 1000

p num.respond_to?("next")  # return true as an integer object can respond to a next method.
p num.respond_to?("length")  # return false as for integers we don't have length method, it is only for string

# another example using if statements

if num.respond_to?("next")
    p num.next
end

if num.respond_to?("length")
    p num.length
end
# now if we won't put the if check here, this will lead to the error, nut since we are checking the output with the
# help of if statment, we will not get any error as the statment inside the if will never execute.

# other examples 

puts "Hello world".respond_to?("length") #true
puts "Hello world".respond_to?("upcase") #true
puts "Hello world".respond_to?("next") # false

# Now lets see the same functionality of the .respond_to? method with the help of light weight synbol object 
# representation
# example,

puts "Hello world".respond_to?(:length) # true, so here instead of passing the string object we are passing the 
# symbol object which is light weight and does no contain the extra bagage as that of string.

puts 5.respond_to?(:next) #True



# Ternary Operator
# =================

# used to replcae the simple if else conditions

if 1 < 2
    puts "yes it is"
else
    puts "No its not"
end


puts 1 > 2 ? "yes it is" : "No its not"

# Another example

puts "yes" == "yes" ? "equal string" : "non equal string"
puts "yes" == "no" ? "equal string" : "non equal string"

# example with method call

def even_or_odd(number)
    number.even? ? "even number" : "odd number"
end

puts even_or_odd(5) #odd number
puts even_or_odd(46) # even number

# example

pokemon = "charizard"

puts pokemon == "charizard" ? "Fireball!" : "not charizard"



# Default or Optional parameters
# ==============================

# These default parameters are used when user wants to use the default values given at the time of function definition.

def make_phone_call(number, internation_code = 91, area_code = 45)
    puts "calling #{internation_code}-#{area_code}-#{number}"
end

make_phone_call(23978270)



# call a method from inside of another method or interpolated string
# ===================================================================

def add(a, b)
    a + b 
end

def subtract(a, b)
    a - b
end

def multiply(a, b)
    a * b 
end

def calculate(a, b, operation = "add")
    if operation == "add"
        add(a, b)
    elsif operation == "subtract"
        subtract(a, b)
    elsif operation == "multiply"
        multiply(a, b)
    else
        "invalid operation"
    end
end

p calculate(5, 10)  # here operation is not givin, hence the default parameter is taken and numbers are added
p calculate(5, 6, "subtract")  # output -1
p calculate(5, 8, "multiply")  # 40

# now we can even call these methods inside the interpoation of a string. see the below example 

def calculator(a, b, operation = "add")
    if operation == "add"
        "Result of addition : #{add(a, b)}"  # note that even though add method is returning the integer result,
    elsif operation == "subtract"               # but string interpolation onvert every integer into string after inserting it in the string.
        "Result of subtraction : #{subtract(a, b)}"
    elsif operation == "multiply"
        "Result of multiplication is : #{multiply(a, b)}"
    else
        "Invalid operation selected"
    end
end

p calculator(5, 7)  # "Result of addition : 12"
p calculator(20, 10, "subtract")
p calculator(4, 5, "multiply")


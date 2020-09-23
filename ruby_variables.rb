# Introduction to variables in Ruby
name = "sagar"  # here we are just assigning single name to a variable
puts name
address = ["123 anystreet Ave", "Anytown", "TX"]  # Here we are actually creating a array to assign multiple names 
                                                    # to a variable address
puts address

# There are two main methods to print output to console

# First one 
puts "Hello World"   # This is going to print the value to the console output but without returning anything

# Second one
p "Hello World"  # This is going to return the string in double qoutes, so basically this is doing two tasks in one
                    # statement that is returing the value and also printing it to console.
          
# Another example for "p" and "puts" is :
puts ["a","b","c","d"]  # This is going to itrate over the values of an array and print the values
p ["a","b","c","d"] ## This is going tp return the entire array

## Using gets and comps to get input from ruby console
##=====================================================
# Now here we are going to take input from the user from ruby console using "gets.chomp". Also note that same thing can
# be done using "gets" alone but it appends new line character along with the input given by user, hence  we use chomp
# in order to chomp down the new line character from the input given by user
# in order to understand the difference between only gets and gets.chomp. consider the below code and try to run it.

# with only gets
# ================
puts "Please enter the password"
password = gets
p password   # this will return entered password with \n at the end
if password == "welcome1"
    puts true
else
    puts false
end

# with gtes.chomp
# ==================
puts "Please enter the password"
password = gets.chomp
p password # this will return entered password without \n at the end
if password == "welcome1"
    puts true
else
    puts false
end
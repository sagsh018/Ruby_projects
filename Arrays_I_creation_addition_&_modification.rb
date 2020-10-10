# what is an array in Ruby
# =========================
# 1) ordered collection of objects
# 2) can contain differernt objects of different data types same as that of python lists
# 3) can be considered as a list or a container for other type of objects and array is itself also an object

#  examples

p [] # empty array
p [].class # Array class

numbers = [] # to define a array for numbers which is right now empty




# creating an array using the bracket [] syntax
# ===============================================
numbers = [4, 8, 15, 16, 23, 48]
puts numbers
# output
# 4
# 8
# 15
# 16
# 23
# 48
p numbers #  [4, 8, 15, 16, 23, 48]
print numbers # [4, 8, 15, 16, 23, 48]
puts

# an array of string
toys = ["teddy", "chess", "board game"]
puts toys
p toys # ["teddy", "chess", "board game"]
print toys # ["teddy", "chess", "board game"]
puts

# an array of different data types
things = [5, true, "Hello", 10.99]
puts things
p things
print things

puts

# an array having details ablut the registration in a event per person in a form of yes or no OR true or false
registration = [true, false, false, true, true, false, true, false]
p registration
# output : [true, false, false, true, true, false, true, false]
# notice that above output is having duplicate values, but it is not creating any problem at all.

# array that contains array inside it

students = [["sagar", 28, true],
            ["kamal", 26, false],
            ["raju", 30, false]]

puts students
# prints each element of students(which itself is an array) separate line
# sagar
# 28
# true
# kamal
# 26
# false
# raju
# 30
# false

print students # [["sagar", 28, true], ["kamal", 26, false], ["raju", 30, false]]
puts
p students # [["sagar", 28, true], ["kamal", 26, false], ["raju", 30, false]]




# Shorthand %w syntax to create an Array of strings
# ==================================================
# So in this we use a special symbol in front of square brackets and with the help of this we need not to put the strings in double quotes
# inside the square bracket as we were doing while defining the array before and also we need not to give the comma to separate, we can simply 
# give space

name = %w[Jack Jill sagar]
p name # ["Jack", "Jill", "sagar"]
# but notice in case if you try to put the string of two words then in that case you will still have to make use of a double quotes.



# Create an array with array.new method
# ======================================
p Array.new # This will create an empty array using the class Array and calling method new with the help of that

p Array.new(4) # This shows that this array is going to contain 4 elements and all will be initiated with nil by default
# [nil, nil, nil, nil]

p Array.new(4, nil) # This second argument which we are passing to new method represent what will be the value for all 4 elements
#  [nil, nil, nil, nil]
p Array.new(4, "Hello") #  ["Hello", "Hello", "Hello", "Hello"]

p Array.new(4, [1, 2, 3]) #  [[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]




# Accessing single array element by Index position
# ================================================
fruits = ["Apple", "Banana", "Orange", "Grape"]

p "Hello world".length # length method when used with strings, it gives the count of number of characters in a string
p fruits.length # when length us used with an array, it gives the count of number of elements inside it ==> 4

# now suppose we want to extract the elements from an array using the index position
p fruits[0] # Apple
p fruits[1] # Banana
p fruits[2] # Orange
p fruits[3] # Grape

p fruits[10] # nil
p fruits[100] # nil
p fruits[5] # nil
# whenever ruby finds that at the fiven index postion the element does not exist then it just return back nil

# To print the last element of an array
p fruits[fruits.length - 1]

# another method to print the last element of an array
p fruits[-1] # So -1 represent the last element
p fruits[-2] # Orange
p fruits[-3] # Banana
p fruits[-4] # Apple

# another way to write the above statements, based on how ruby handles the things in background
p fruits.[](-1) # becasue [] is nothing but the object method called on object "fruits" and for that method we have passed the parameter as -1.
p fruits.[](-2)




# accessing single array element using .fetch method
# ===================================================
# so one thing to notice here is that if the index position which you are trying to access does not exist then .fetch mehtod will trhow an
# error, unlike that of [] method where we get the value as nil
# examples

name = ["Tom", "Sagar", "Ram"]

p name[2] # Ram
p name[100] # nil

p name.fetch(2) # Ram. So this will work correctly as we are fetching the element at index location that does exist
# p name.fetch(100) # this will throw error. So based on the need we can use .fetch also sometimes when we intensionally want the program to 
# crash
# but this shortcoming of fetch method can be overcome with the help fo second argument in the .fetch method which will indicate the default
# value that need to be return incase the index value that is called for does not exist
p name.fetch(100, nil) # this will print nil because we are intentionally printing nil
p name.fetch(100, "Unknown Index") # so instead of throwing error this will return unknown index
p name.fetch(100, false) # false
p name.fetch(100, [10, 20, 30]) #  This will return an array [10, 20, 30]




# Extracting Sequential Array Elements with brackets
# ===================================================
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers[2, 4] # [3, 4, 5, 6] -- So baiscally what it means is that starting from index location 2, count 4 elements from there. and also notice
                # we will be returned here with the sub array from the original array
p numbers[1, 3] # [2, 3, 4]

# Now suppose if we try to start at element 0 and pass the second argument as 1 then we will just get the first element as below
p numbers[0, 1] # return [1]. So in this case we got first element only, but in a form of array
p numbers[0] # return 1, in this case also only one element will be returned, but here we will not get an array we will get a single number
p numbers[0, 1].class # Array
p numbers[0].class # Integer

# Lets find out what will happen if in case we give the value of index which does not exist
p numbers[3, 100] # [4, 5, 6, 7, 8, 9], So notice that it has not given any error or nil value, it has given whatever values it can give and 
                    # than truncated the output and returned the rest of an array
p numbers[100] # return nil. notice that this nil represent the nothing ness, means there is nothing as like this.




# Access Sequential Array elements with a Range Object
# ====================================================
# Here we can pass the range inside the square brackets to access the element sequentially
p numbers[2..5] # [3, 4, 5, 6], so here we are getting all the elements starting from 2 and going upto 5th element and including that as here are two dots
p numbers[2...5] # [3, 4, 5], in this case we are not including the 5th element as we are using 3 dots
# notice that here also we are getting in return an array of subset of elements we are trying to extract
p numbers[3..3] # [4], so we got only one element but as an array
p numbers[3...3] # [] this is empty becaus eof 3 dots




# Accessing multiple Array elements with the .value_at method
# ===========================================================
channels = ["CBS", "FOX", "NBC", "ESPN", "UPN"]
p channels.values_at(0) # ["CBS"], so this method return the element/elements of an array as again sub array based on the index position/positions
                        # we pass to the method .values_at
p channels.values_at(3) # ["ESPN"]
# to access multiple values
p channels.values_at(0, 2, 4)  # ["CBS", "NBC", "UPN"], so again a aub array retuerned based on the index positions passed inside the method
                                # values_at.
# notice the advantage of this values_at method, we are able to access multiple element non sequentially, that means we are able to pick
# the element from between as well.
p channels.values_at(0, 4) # ["CBS", "UPN"], So able to pick first and the last element in one without having to pick the element in between
p channels.values_at(1, -1) # ["FOX", "UPN"], we can also pass negative argument as well.

# we can even pull out duplicate values as well
p channels.values_at(2, 2, 4) # ["NBC", "NBC", "UPN"]

# if we pass some index position which does not exist then 
p channels.values_at(3, 100) # ["ESPN", nil], so we will get a nil.

# So here in .values_at method we can pass any numbers of argument and also we can have conbination of positive, negative and also the index
# positions which does not exist
p channels.values_at(2, 3, 1, 5, -1, 100) # ["NBC", "ESPN", "FOX", nil, "UPN", nil]



# The .slice method
# =================
# similar to the square bracket method
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers.slice(3)  # return the element as 4. notice this slice method is not returning a subarray
p numbers.slice(100) # nil
p numbers.slice(2, 3) # [3, 4, 5], starting at index position 2 and capturing 3 elements after that
p numbers.slice(3..6) # [4, 5, 6, 7]
p numbers.slice(3...6) # [4, 5, 6]




# Overwrite One or More Array elements
# =====================================
# basically we will se how to mutate the elements of an array
fruits = ["Apple", "banana", "orange", "pinaple", "grape"]
p fruits # ["Apple", "banana", "orange", "pinaple", "grape"]
fruits[1] = "watermelon"
p fruits # ["Apple", "watermelon", "orange", "pinaple", "grape"]
fruits[-1] = "Kiwi"
p fruits # ["Apple", "watermelon", "orange", "pinaple", "Kiwi"]

# we can also use this syntax to add the element at the end of an array
p fruits # ["Apple", "watermelon", "orange", "pinaple", "Kiwi"], total 5 elements as of now
p fruits[5] # nil, as this does not exist yet
fruits[5] = "raspberry"
p fruits[5] # raspberry
p fruits # it has 6 elements now
# similarly we can keep on adding the elements to the end of an array
fruits[6] = "strawberry"
p fruits # ["Apple", "watermelon", "orange", "pinaple", "Kiwi", "raspberry", "strawberry"]

# suppose if we try to assign a new value to the index location which is not next to the last available index location in array
fruits[10] = "mango"
p fruits # ["Apple", "watermelon", "orange", "pinaple", "Kiwi", "raspberry", "strawberry", nil, nil, nil, "mango"], the gaps are filled with nil

# We can also make use of other bracket syntax with multple values and range objects to overwite the values of an array
p fruits
fruits[3, 2] = ["canteloupe", "dragonfruit"] # this will replace the elements starting at 3 and two elements from there with these two elements
p fruits # ["Apple", "watermelon", "orange", "canteloupe", "dragonfruit", "raspberry", "strawberry", nil, nil, nil, "mango"]
fruits[0..2] = ["blackberry", "dates", "pears"]
p fruits # ["blackberry", "dates", "pears", "canteloupe", "dragonfruit", "raspberry", "strawberry", nil, nil, nil, "mango"]

fruits[0..3] = "Blah"
# so here we are trying to overrite the 4 elements in an array with one element 
p fruits # ["Blah", "dragonfruit", "raspberry", "strawberry", nil, nil, nil, "mango"]
# this has shorten the array.




# The .length, .size, and .count methods on an array
# ==================================================
p [1, nil, 2, 3, "Hello", 3.14, nil, false, 5].length # 9
p [1, nil, 2, 3, "Hello", 3.14, nil, false, 5].size # 9, so size method also gives same functionality

p [].length # 0
p [].size # 0

# now lets see the .count method
p [1, 2, 3, 4, 5, 2, 5, 2, 5, 6, nil, "hello", 3.14, false, true, false].count # 16, when count method is used without any argument, then
# it gives the same functionality as that of .length  and .size method
# lets pass argument got .count method
p [1, 2, 3, 4, 5, 2, 5, 2, 5, 6, nil, "hello", 3.14, false, true, false].count(2) # 3, this will give the count of number of times 2 present
p [1, 2, 3, 4, 5, 2, 5, 2, 5, 6, nil, "hello", 3.14, false, true, false].count(false) # 2
p [1, 2, 3, 4, 5, 2, 5, 2, 5, 6, nil, "hello", 3.14, false, true, false].count(100) # 0, as 100 does not exist in it




# the .empty? and .nil? methods on array
# ======================================
# .empty? method basically return true if the length of an array is 0 and return false if the length is non 0
puts [1,2,4].empty? # false
puts [true, false, true].empty? # false
puts [].empty? # true
puts [nil, nil].empty? # false, as still we have nil objects in an array

# .nil?
puts [true, false].nil?  # false
puts [].nil? # false
puts 1.nil?  # false
puts 3.14.nil? # false
puts "Hello".nil? # false
puts "".nil? # false

# so as we can notice that every valid object in ruby is not counted as nil. so how this nil be useful, we can see that below
letters = ("a".."m").to_a
p letters # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"], so we have created a range here and converted that to array
p letters[12] # m
p letters[12].nil? # false
p letters[13] # nil
p letters[13].nil? # return true




# The .first and .last methods
# =============================
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p arr.first # 1
p arr.last  # 10
# so without argument these methods gives first and last elements
p arr.first(3) # [1, 2, 3], so here we are getting first 3 elements of an array in a form of sub array.
p arr.last(2) # [9, 10], so again last elements as a subarray

p arr.first(1) # [1]
p arr.last(1) # [10]
# so even though we are getting just first and last element only exactly same as that of using first and last without arguments, but this time
# we are getting them as an array because of the usage of argument to the first and last method

# Now lets create the custom methods mirroring the functionality of first and last methods
def custom_first(arr, num=0)
    if num == 0
        arr[0]
    else
        arr[0, num]
    end
end

def custom_last(arr, num=0)
    if num == 0
        arr[-1]
    else
        arr[-num, num]
        # could also do 
        # arr[-num..-1]
    end
end

p custom_first(arr) # 1
p custom_first(arr, 1) # [1]
p custom_first(arr, 2) # [1, 2]
p custom_first(arr, 4) # [1, 2, 3, 4]

p custom_last(arr) # 10
p custom_last(arr, 1) # [10]
p custom_last(arr, 2) #[9, 10]






# The .push method, the shovel operator and the .insert method
# ============================================================

# using push method to add the element at the end of an array. this is inplace method which modifies the original array
locations = ["house", "airport", "bar"]
p locations  # ["house", "airport", "bar"]
locations.push("restaurant")
p locations  # ["house", "airport", "bar", "restaurant"]
# we can pass in multiple argument to this push method and they will be added at the end of an array in the same order as we are passing them
locations.push("school", "canteen")
p locations # ["house", "airport", "bar", "restaurant", "school", "canteen"]

# Using shovel operator for adding the elements at the end of an array, this is also inplace operator
p locations # ["house", "airport", "bar", "restaurant", "school", "canteen"]
locations << "Bus Stand"
p locations # ["house", "airport", "bar", "restaurant", "school", "canteen", "Bus Stand"]
# we can add multiple elements as well
locations << "cycle stand" << "hotel"
p locations # ["house", "airport", "bar", "restaurant", "school", "canteen", "Bus Stand", "cycle stand", "hotel"]

# using .insert method to insert the elements at the specified location in an array. this is again an inplace method
locations.insert(1, "loc1", "loc2", "loc3")
p locations # ["house", "loc1", "loc2", "loc3", "airport", "bar", "restaurant", "school", "canteen", "Bus Stand", "cycle stand", "hotel"]
# so we can see that we can insert multiple elements as well at the specified locations





# The .pop method
# ================
# pop method called without argument, it removes the very last element of an array and return that and this is also inplace method
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers
p numbers.length # 10

numbers.pop
p numbers # [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers.length # 9
numbers.pop
p numbers # [1, 2, 3, 4, 5, 6, 7, 8]

# we can even save the element poped out from the end of an array in a variable as below
last_element = numbers.pop
p numbers
p last_element # 8

# pop method with the argument removes the number of elements specified in an arguement from the end of an array
last_two_elements = numbers.pop(2)
p numbers # [1, 2, 3, 4, 5]
p last_two_elements # [6, 7]
# notice that when we have passed arguments to the pop method it has started returning the elements in a form of sub array of the original method
single_last_element = numbers.pop(1)
p single_last_element # [5]
# So even a single element is returned as an array when used with argument





# The .shift and .unshift methods
# ================================
# these complimentary methods to that of push and pop methods.

# .shift method -- removes the very first element from an array and return it as an element if called without argument. it s also a inplace method
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
extract = arr.shift
p arr # [2, 3, 4, 5, 6, 7, 8, 9, 10]
p extract # 1
# we can also pass arguments to shift method exactly in a same way as that of pop method
extract_two_elements = arr.shift(2) # So this will remove the fisrt two elements from an array and return them as another array object
p arr # [4, 5, 6, 7, 8, 9, 10]
p extract_two_elements  # [2, 3]
extract_one_element = arr.shift(1)
p arr # [5, 6, 7, 8, 9, 10]
p extract_one_element  # [4], so even a single element is returned as an array with arguments

# .unshift method
# This method is used to add one or more elements at the start of an array, its a inplace method again
arr.unshift(50)
p arr # [50, 5, 6, 7, 8, 9, 10]
arr.unshift(100, 200, 300) 
p arr # [100, 200, 300, 50, 5, 6, 7, 8, 9, 10], shifted multiple elements





# Equality and unequality operators with Array
# ============================================
# two arrays are considered equal if and only if
# 1) they have exactly same length
# 2) They have exactly same elements
# 3) The elements in both the arrays are in exact same order

arr1 = [1, 2, 3]
arr2 = [1, 2, 3, 4]
arr3 = [3, 2, 1]
arr4 = [1, 2, 3]

p arr1 == arr2 # false, as length different
p arr1 == arr3 # false, as the order of elements are different
p arr1 == arr4 # true as exact same elements, with same length and in same order
# similarly we can also check with the help of inequality operator as well
p arr1 != arr2 # true
p arr1 != arr3 # true
p arr1 != arr4 # false

# lets consider an example of string array
arr1 = %w[Skittles Starbursts Snickers]
arr2 = %w[Skittles Starbursts snickers]
p arr1 == arr2 # false as the last element on these arrays does not match due to upper case and lower case of snickers
p arr1 != arr2 # true





# The spaceship operator
# ==========================
# value1 <=> value2 returns:
# 1) 0, if the value1 = value2
# 2) -1, if the value1 < value2
# 3) 1, if the value1 > value2
# 4) nil, if value1 and value2 are incomparable due to some reasons, like data of different data types which ruby cannot compare.

# examples
p [3, 4, 5] <=> [3, 4, 5] # 0
p [3, 4, 5] <=> [nil, 4, 5] # nil, as the first elements of both the arrays are incomparable with each other
p [3, 4, 5] <=> ["hello", 4, 5]  # nil, again because first elements in both array are not incomparable

p [1, 2, 4] <=> [1, 2, 10] # -1, as 4 is less than 10
p [1, 2, 40] <=> [1, 2, 10] # 1, as 40> 10





# converting ranges to an array using .to_a method
# =================================================
# lets first take an example of string array
letter_range = "A".."Z"
p letter_range # "A".."Z"
letter_array = letter_range.to_a
p letter_array # ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
p letter_array.class # Array
p letter_array[1] # "B"
p letter_array[5] # "F"

# lets take an example of number array
number_range = 415..450
p number_range # 415..450
number_array = number_range.to_a
p number_array # [415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450]
p number_array.class # Array
# Now as soon this has became a regular array i can perform all sorts of operations on it which i can do with the normal array
p number_array[0] # 415
p number_array[-1] # 450
p number_array.length # 36
p number_array.size # 36
# So this is how we can convert the data in one form (here in ranges) to another form (here in array) and then do all sorts of operations which 
# are required in order to complete some task on the data.





# The .is_a? predicate method
# ===============================
# Till now we have seen many objects of different classes for example
p 1.class # Integer class
p "hello".class # String class
p 3.14.class # Float class
p true.class # Boolean class
p [1, 2, 3].class # Array class
p nil.class # NilClass class
# So every object is nothing but a blueprint of the actual class which defines the functionality of the object.
# So basically every object gets its attributes and its functionality from the class it belongs to

# So this method .is_a? will allow us to find out whether the object belongs to a specific class or not

puts 1.is_a?(String) # false, as object "1" comes from class Integer
puts 1.is_a?(Integer) # true
puts "hello".is_a?(String) # true
puts [1, 2, 3].is_a?(Array) # true

# usage of this .is_a? method is when you need to check whether the given object belongs to correct class or not, because if by chance we perform
# an operation which is applicable on an array and we applied it on string, then that will crash he program

# example

arr = ["a", "b"]
p arr # ["a", "b"]
if arr == arr.is_a?(Array)
    arr.each do |e|
        puts e # ["a", "b"]
    end
end
# so if in case the variable does not contain an array by chance then the each operation will not take place becasue we have kept a slight 
# checking, whether the element is an array or not.

# Note
######
# classes in ruby follows the structure based on how they are inherited from each other. and all classes in ruby can be traced back to Object
# class
#                      Object
#                   BasicObject
#                    Integer
#          Fixnum                    Bignum
# So this is a example of hierarchy for the Fixnum and Bignum classes which can be traced back to the parent of classes in ruby that is # Object class
# So what .is_a? method does is that as soon as you try to check with this method whether this object comes from the class mentioned in the
# argument of the method, it start from the very lowest value in the tree like above and as soon as it gets the exact class present in that
# tree, it returns true, other it return false
# So
puts 5.is_a?(Fixnum) # true, because ruby is able to find out Fixnum class immediately as it started to trace the classes from bottom
puts 5.is_a?(Integer) # true, because Integer class is fount on second level
puts 5.is_a?(BasicObject) # true
puts 5.is_a?(Object) # true, this will give true for all the objects because all object's classes ultimately comes from Object class only

# same is applied to all other types of object in ruby
puts [1,2].class # Array, so Array is a direct class from where an array object comes.
puts [1, 2].is_a?(Array) # true
puts [1, 2].is_a?(Object) # true
puts [1, 2].is_a?(BasicObject) # true












=begin 
There are two methods to print values to the console

- print: prints the value passed to it
- puts: has the same functionality with the exception that adds a new line after printing the string passed to it
=end

print "Hello world!"

puts "   /|"
puts "  / |"
puts " /  |"
puts "/___|"

=begin 
- To declare variables the convention is to separe the words using underscore ("_")

- After the name we assign the value using equals ("=")

- Unlike JavaScript, Ruby executes the variables from top to bottom in order, that's the reason we can redifine a variable later in the same file
=end

character_name = "Mark"
character_age = "40"

puts ("There once was a man named " + character_name)
puts ("He was " + character_age + " years old")

character_name = "Alex"
character_age = "25"

puts ("He liked the name " + character_name)
puts ("And he liked being " + character_age)

=begin 
Ruby has 5 Data Types

String: "Mark" (must use double quotation marks)
Number: 75, -50
Floating Number: 3.1416
Boolean: true, false
Nil: has not value

A quotation mark can be scaped inside of a string using a backslash ("\"). Just like JS
=end

puts "She said: \"Hello there\""

channel = "freeCodeCamp"

puts "this tutorial can be found in " + channel + "'s YouTube channel"

=begin 
String methods:

- .upcase(): turns the string all to capital letters
- .downcase(): turns the string all to lowercase
- .strip(): gets rid of any additional spaces at the beginning and end of the string
- .length(): shows the amount of characters in the string
- .include? "": the string passed in as arguments checks if the string given is included in the evaluated string. The response is a boolean
- []: the bracket is used to access the character at the specified index of the string. Like in JS, starts at index 0. A range can be passed in, the first argument is the starting position and second one is the index where the range will stop (not including the character at that index). E.g: string[0,3]
- .index(): it receives an argument, the result is the index in which the passed in argument is found in the string. If the argument is more than one letter the result is the index in where the string passed starts
=end

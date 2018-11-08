
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
The above line prints:

There once was a man named Mark
He was 40 years old
He liked the name Alex
And he liked being 25

the value in the variables change because we redifine the value of the variables halfway through the puts statements
=end

=begin 
Ruby has 5 Data Types

String: "Mark" (must use double quotation marks)
Number: 75, -50
Floating Number: 3.1416
Boolean: true, false
Nil: has not value

A quotation mark can be scaped inside of a string using a backslash ("\"). Just like JS

String methods:

- .upcase(): turns the string all to capital letters

- .downcase(): turns the string all to lowercase

- .strip(): gets rid of any additional spaces at the beginning and end of the string

- .length(): shows the amount of characters in the string

- .include? "": the string passed in as argument checks if the string given is included in the evaluated string. The response is a boolean

- []: the bracket is used to access the character at the specified index of a string. Like in JS, the index starts at index 0; a range can be passed in, the first argument is the starting position and second one is the index where the range will stop (not including the character at that index). E.g: string[0,3]

- .index(): it receives an argument, the result is the index in which the passed in argument is found in the string. If the argument is more than one letter the result is the index in where the string passed starts. If the argument passed in is not included in the string there's not going to be any result; this method is case sensitive
=end

puts "She said: \"Hello there\""

channel = "freeCodeCamp"

puts "this tutorial can be found in " + channel + "'s YouTube channel"

=begin 
Number methods:

- Numbers in Ruby accept basic arithmetic operations (+, -, /, *)

- To elevate a number to certain power we write the number with two asterisks and the power to elevate (2**3)

- To print a number with a string, it is necessary to append the variable name to the string, but we also need to transform the number into a string with the method ".to_s"

- .abs() gets the absolute value

- .round() rounds to number to the nearest whole integer

- .ceil(), .floor() print the number to its nearest higher and nearest lower integer respectively
=end

num = 19

puts ("My favorite number is " + num.to_s)

=begin 
User Input:

- "gets" waits for the user to enter some text

- To submit some text with "gets" it is necessary to hit enter to send the string, but that includes a new line character. To avoid that, we can add .chomp() after gets, and that will get rid of the newline character after submitting the text

- Ruby evaluates everything entered with "gets" as a String

- To transform a number entered with "gets" from String to Integer we need to pass in the method ".to_i", but that will evaluate just integers (whole numbers). To make sure it accept decimals (floating point numbers) we must use the method ".to_f"
=end

puts "Enter your name:"
name = gets.chomp()
puts "Enter your age:"
age = gets.chomp()
puts ("Hello " + name + ", you are " + age + " years old.")

puts "Enter a number:"
num1 = gets.chomp().to_f
puts "Enter another number:"
num2 = gets.chomp().to_f

puts (num1 + num2)
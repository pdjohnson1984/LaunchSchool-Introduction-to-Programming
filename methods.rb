#Write a program that prints a greeting message.
def greeting(name)
  puts "Hello #{name}"  
end

puts greeting("Me")

#Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
def multiply(number1, number2)
  number1 + number2
end

puts multiply(4, 8)

#Edit the method in exercise #4 so that it does print words on the screen. 
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
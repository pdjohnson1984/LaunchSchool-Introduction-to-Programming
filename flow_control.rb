#Write a method that takes a string as argument. 
#The method should return the all-caps version of the string, only if the string is longer than 10 characters. 
def all_caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts all_caps("hello world")

#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
def evaluate_num(num)
  if num < 0
    puts "Number cannot be negative"
  elsif num <= 50
    puts "#{num} is between 0 and 50"
  elsif num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is greater than 100"
  end  
end


#Rewrite your program from exercise 3 using a case statement.
def evaluate_num_new(num)
  case 
  when num < 0
    puts "Number cannot be negative"
  when num <= 50
    puts "#{num} is between 51 and 100"
  when num <= 100
    puts "#{num} is between 0 and 50"
  else
    puts "#{num} is greater than 100"
  end
end  

puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i

evaluate_num(number)
evaluate_num_new(number)


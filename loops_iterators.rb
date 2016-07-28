#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
loop do
  puts "Please enter an action"
  action = gets.chomp
  if action.upcase == "STOP"
    break
  end
end

action = ""
until action.upcase == "STOP"
  puts "Type stop to quit the madness!"
  action = gets.chomp
end

#Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
fishes = ["trout","kokanee","bass","salmon","catfish"]

fishes.each_with_index {|fish, index| puts "#{fish} is at index #{index}" }
#or
fishes.each_with_index do |fish, index|
  puts "The fish #{fish} can be found at a depth of #{index}"
end

#Write a method that counts down to zero using recursion.
puts "Please insert a number"
number = gets.chomp
def countdown(num)
  if num.to_i > 0
    puts num
    countdown(num.to_i - 1)
  end
end

countdown(number)
#Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number)
  puts "#{number} is in the array!"
end

#How do you print the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

#Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2.
old_array = [1,2,3,4,5,6,7,8,9]
new_array = []

old_array.each { |num| new_array << num * 2 }
p old_array
p new_array

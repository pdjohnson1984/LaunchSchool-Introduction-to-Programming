#Add two strings together that, when concatenated, return your first and last name as your full name in one string.
puts "Phillip " + "Johnson"

#Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
#1) thousands place
#2) hundreds place
#3) tens place
#4) ones place
thousands = 1565 / 1000
puts thousands

hundreds = 1565 % 1000 / 100
puts hundreds 

tens = 1565 % 1000 % 100 / 10
puts tens

ones =  1565 % 1000 % 100 % 10
puts ones

#Write a program that uses a hash to store a list of movie titles with the year they came out. 
#Then use the puts command to make your program print out the year of each movie to the screen. 
movies = {:FakeMovie1 => 1991, :FakeMovie2 => 1992, :FakeMovie3 => 1993, :FakeMovie4 => 1994}
puts movies[:FakeMovie1]
puts movies[:FakeMovie2]
puts movies[:FakeMovie3]
puts movies[:FakeMovie4]

#Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
dates = [1991, 1992, 1993, 1994]
puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]

#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
puts 2.1 * 2.1
puts 8.4156 * 8.4156
puts 321.321 * 321.321
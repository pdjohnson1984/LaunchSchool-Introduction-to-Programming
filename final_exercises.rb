#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
  puts num
end

#Same as above, but only print out values greater than 5.
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
  if num > 5
    puts num
  end
end

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select { |num| num if num.odd?  }
puts new_array
#Or if using the modulo operator
new_array_modulo = arr.select { |num| num % 2 != 0  }
puts new_array_modulo

#Append "11" to the end of the original array. Prepend "0" to the beginning.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr << 11
arr.unshift(0)
puts arr

#Get rid of "11". And append a "3".
arr.pop
arr << 3
puts arr

#Get rid of duplicates without specifically removing any one value.
arr.uniq!
puts arr

#What's the major difference between an Array and a Hash?
#Array is a list, where a hash is key/value paired list.

#Create a Hash using both Ruby syntax styles.
hash = {:name => "bob"}
hash = {name: "bob"}

#Suppose you have a hash:
h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
p h[:b]
#2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h
#3. Remove all key:value pairs whose value is less than 3.5
p h.delete_if {|k,v| v < 3.5}

#Can hash values be arrays? Can you have an array of hashes? (give examples)
#Yes to both! See below:
hash_of_arrays = {a:[1,2], b:[3,4]}
arr_of_hashes = [{a:1, b:2}, {c:3, d:4}]
p hash_of_arrays
p arr_of_hashes

#Look at several Rails/Ruby online API sources and say which one you like best and why.
#I have to use an API to fully understand whether I like it or not. I've learned not to judge an API "by it's cover".
#The closest I can get to fully answering this question is RSpec, simply because of TDD.

#Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts

#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]

#Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
p contacts

#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |e| e.start_with? "s"  }
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |e| e.start_with? "s", "w"  }
p arr

#Take the following array and turn it into a new array that consists of strings containing one word.
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
arr = a.map { |e| e.split }
arr = arr.flatten
p arr

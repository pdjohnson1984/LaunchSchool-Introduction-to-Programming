#Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select { |family| family == :sisters || family == :brothers }
arr = immediate_family.flatten
p arr

#Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
computer = {memory: 1, motherboard: 2, hard_drive: 3}
extra_parts = {monitor: 4, keyboard: 5, mouse: 6}

#merge! mutations the original hash
computer.merge(extra_parts)
p computer
computer.merge!(extra_parts)
p computer

#Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys.
#Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
test_hash = {one: 1, two: 2, three: 3, four: 4, five: 5}
test_hash.each_key { |key| p "#{key} is the key"}
test_hash.each_value { |value| p "#{value} is the value" }
test_hash.each { |key, value | p "#{key} is the key and #{value} is the value!" }

#Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]

#What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
test_hash = {one: 1, two: 2, three: 3, four: 4, five: 5}
p test_hash.has_value?(2)

#Write a program that prints out groups of words that are anagrams.
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams = {}
words.each do |word|
  key = word.split('').sort.join
  if anagrams.has_key?(key)
    anagrams[key].push(word)
  else
    anagrams[key] = [word]
  end
end

anagrams.each do |k, v|
  p v
end

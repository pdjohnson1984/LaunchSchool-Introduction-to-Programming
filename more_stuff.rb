#Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
def find_lab(word)
  if word =~ /lab/
    p "lab exists in #{word}!"
  else
    p "Cannot find lab in #{word}"
  end
end

find_lab("laboratory")
find_lab("experiment")
find_lab("Pans Labyrinth")
find_lab("elaborate")
find_lab("polar bear")

#Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

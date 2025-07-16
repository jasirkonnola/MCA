#Hint - Use str.upper() method

file = open("file2.txt","r")
contents = file.read()
new_contents=contents.upper()
file.close()

file = open("file2.txt","w")
file.write(new_contents)
file.close()

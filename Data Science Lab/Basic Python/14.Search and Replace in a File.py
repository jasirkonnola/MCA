# Hint - Use str.replace("old text","new text") method

file = open("text1.txt", "r")
contents= file.read()
new_contents = contents.replace("Morning","Night")
file.close()

file = open("text1.txt", "w")
file.write(new_contents)
file.close()

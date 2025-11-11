string = input ("Enter The String :")
if len (string)<1:
    print("Invalid")
elif len(string)==1:
    print("Latest String:",string)
else:
    first_char = string[0]
    last_char=string[-1]
    middle_part=string[1:-1]
    modified_string= last_char + middle_part + first_char
    print("Modified String:",modified_string)
line_with_consecutive_ones = []
file = open("New_file.txt", "r")
for line in file:
    if '11' in line:
        line_with_consecutive_ones.append(line.strip())

print(line_with_consecutive_ones)
print("Lines containinf two consecutive '1's: ")
for line in line_with_consecutive_ones:
    print(line)

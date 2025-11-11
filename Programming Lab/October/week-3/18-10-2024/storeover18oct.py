list=[]

size = int(input("Enter Number Of Integerrs To Be Added:"))
for i in range (size):
    integers = int(input(f"Enter Integer:{i+1}:"))
    list.append(integers)

for i in range(len (list)):
    if list[i]>100:
        list[i]='Over'

print("list=",list)
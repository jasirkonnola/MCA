list1=[]
while True :
    print("Enter an integer to the list: ")
    element = int(input())
    list1.append(element)
    print("Is it end of list?(y//n)")
    flag = input()
    if flag == "y" :
        break
print("The List = ",list1)
print("MAximum Value in this list: ", max(list1))
    

list1=[10,20,30,40]
# list is converted to set to make the elements unique
# and to perform set operations
set1=set(list1)
list2=[40,50,60]
set2=set(list2)

result= set1 & set2
# If there is no common element, then result = set()
if (result== set()) :
    print("False")
else :
    print("True : ",result)

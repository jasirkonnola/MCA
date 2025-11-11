text=input("enter the text:")
vowel_count=0

for i in 'aeiouAEIOU':
    if i in text:
        newstring =text.replace(i,'#')
        vowel_count += 1
print(vowel_count)
print(newstring)

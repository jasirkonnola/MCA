current_year = 2024
leap_years = []
end_year=int(input("enter the year:"))
for year in range(2024, end_year +1):
    if year % 4 == 0 and (year % 100 != 0 or year % 400 == 0):
        leap_years.append(year)
    

print(f"Current Year: {current_year}")
print("Next leap years:", leap_years)

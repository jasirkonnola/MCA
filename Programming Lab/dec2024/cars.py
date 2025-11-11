class Car:
    def details(self):
        print(f"Car Name: {self.company},
              Price: {self.price},
              Color: {self.color}")

# Creating instances of the Car class
car1 = Car()
car1.company = "Toyota"
car1.price = 200000
car1.color = "Black"

car2 = Car()
car2.company = "Ford"
car2.price = 30000
car2.color = "Blue"

car3 = Car()
car3.company = "BMW"
car3.price = 450000
car3.color = "Red"

# Displaying details of each car
car1.details()
car2.details()
car3.details()

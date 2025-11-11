class Fruits:
    def eat(self):
        print("we can eat fruits")

class Orange(Fruits):
    pass
    #def eat(self):
            #print("Orange is a sour fruit")

class Apple(Fruits):
    def eat(self):
        print("Apple is sweet")

class Mango(Fruits):
    def eat(self):
        print("Mango is sweet")

org1=Orange()
app1=Apple()
mag1=Mango()
org1.eat()
app1.eat()

mag1.eat()

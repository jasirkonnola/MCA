class Employee:
    basic = 0
    ta= 0
    da= 0
    def salary(self):
        print("Salary:", self.basic + self.ta + self.da)
emp1 = Employee()
emp1.basic= 20000
emp1.ta= 1500
emp1.da= 1000
emp1.salary()

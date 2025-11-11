class employee:
    def __init__(self,emp_id,emp_name,emp_salary):
        self.emp_id = emp_id
        self.emp_name = emp_name
        self.emp_salary = emp_salary

    def details(self):
        print(f"Employee id: {self.emp_id}\nName       : {self.emp_name}\nSalary     : {self.emp_salary}" "\n")
        

emp1=employee(101,"Ansar",29000)
emp2=employee(102,"Basil",24000)
emp3=employee(103,"Fasli",39000)

emp1.details()
#print()
emp2.details()
#print()
emp3.details()

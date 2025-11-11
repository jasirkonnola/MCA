class bank:
    def __init__(self,ac_no,name,actype):
        self.ac_no = ac_no
        self.name = name
        self.actype = actype
        self.balance = 0

        print("Helllo welcome to New Bank")

    def deposit(self):
        amount=float(input("Enter the amount for deposited:"))
        self.balance += amount

        print("Current Balance:",self.balance)

    def withdraw(self):
        amount=float(input("Enter the amount for withdraw:"))
        if self.balance >= amount:
            self.balance -= amount
            print("you withdraw:",amount)
        else:
            print("insufficient balance")


    def display(self):
        print("Account No     :",self.ac_no)
        print("Account Name   :",self.name)
        print("Account Type   :",self.actype)
        print("Account Balance:",self.balance)


s = bank(1234,"jasir","saving")
s.deposit()
s.withdraw()
s.display()
        

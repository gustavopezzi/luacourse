BankAccount = {
  account_number = 0,
  holder_name = "",
  balance = 0.0
}

function BankAccount:deposit(amount)
  self.balance = self.balance + amount
end

function BankAccount:withdraw(amount)
  self.balance = self.balance - amount
end

function BankAccount:new(t)
  t = t or {}
  setmetatable(t, self)
  self.__index = self
  return t
end

--------------------------------
-- Create an object
--------------------------------
johns_account = BankAccount:new({
  account_number = 12345,
  holder_name = "John Coltrane",
  balance = 0.0
})

johns_account:deposit(400.00)
johns_account:withdraw(50.00)

print("New account object...")
print(johns_account.balance)

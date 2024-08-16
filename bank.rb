class Bank
  @@balance = 0

  def credit(amt)
    if amt > 0
      @@balance += amt
    end
  end
  def debit(amt)
    if amt > 0 && (@@balance - amt) > 0
      @@balance -= amt
    end
  end

  def self.getBalance
      return @@balance
  end

  def getBalance
    return @@balance
  end
end

# creating object
b = Bank.new
b.credit(100)
b.credit(150)
b.debit(700) # should not do anything

# calling balance
#puts "Balance $#{Bank.getBalance()}"
puts "Balance $#{b.getBalance()}"
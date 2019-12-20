class Account
  @@account_id=0
  attr_accessor :balance
  def initialize
    @balance = 0.0
    @@account_id+=1
    @user_id=@@account_id
  end

  def withdraw_money
    print "Enter The Amount You Want To Withdraw: "
    withdraw_amount=gets.chomp.to_i
    if withdraw_amount>@balance
      print "Sorry You Don't Have Sufficient Balance!\n"
    else
      @balance-=withdraw_amount
      print "Your Balance: ",@balance,"\n"
    end
  end

  def deposit_money
    print "Enter The Amount You Want To Deposit: "
    deposit_amount=gets.chomp.to_i
    @balance += deposit_amount
  end

  def check_balance
    print "Your Balance Is: ",@balance,"\n"
  end
end

class SavingAccount < Account
  def initialize
    @rate_of_interest=0.04
    super
  end

  def calculate_interest
    print "Enter The Number Of Months: "
    months=gets.chomp.to_i
    print "\n"
    total_amount=@balance+(@balance*@rate_of_interest*(months/12.0))
    print "\nYour Amount After #{months} Months Will Be :#{total_amount}\n"
  end
end

class CurrentAccount < Account
  def initialize
    @rate_of_interest=0.08
    super
  end

  def calculate_interest
    print "Enter The Number Of Months: "
    months=gets.chomp.to_i
    print "\n"
    total_amount=@balance+(@balance*@rate_of_interest*(months/12.0))
    print "\nYour Amount After #{months} Months Will Be :#{total_amount}\n"
  end
end


print "********************WELCOME TO SBI********************\n"
print "Create Account :\n1.Current Account\n2.Saving Account\n"
account_type=gets.chomp.to_i

if account_type==1
  obj=CurrentAccount.new
else
  obj=SavingAccount.new
end

flag=true
while flag
  print "\n1.Withdraw Money\n"
  print "2.Deposit Money\n"
  print "3.Calculate Interest\n"
  print "4.Check Balance\n\n"

  user_choice=gets.to_i

  case user_choice
    when 1
      obj.withdraw_money
    when 2
      obj.deposit_money
    when 3
      obj.calculate_interest
    when 4
      obj.check_balance
    else
      print "Invalid Choice!!!\n"
  end

  print "Do You Want To Continue?[y/n]"
  choice=gets
  if choice=='n'
    flag=false
  end
end
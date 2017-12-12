require_relative 'transaction'
require_relative 'statement'


class Account
  attr_accessor :balance
  attr_reader :log
  def initialize()
    @balance = 0
    @log = []
  end

  def deposit(amount)
    @balance += amount
    @log << Transaction.new(amount,0,@balance)

  end

  def withdraw(amount)
    @balance -= amount
      @log << Transaction.new(0,amount,@balance)
  end

  def print_transactions
    Statement.new.header
    Statement.new.format_transaction(log[0])
    Statement.new.format_transaction(log[1])
    Statement.new.format_transaction(log[2])
  end
end

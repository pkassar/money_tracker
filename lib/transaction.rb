

class Transaction
attr_accessor :earning, :spending, :balance, :date
  def initialize(earning, spending, balance)
    @earning = earning
    @spending = spending
    @balance = balance
    @date = Time.now.strftime("%m/%d/%Y")
  end

end

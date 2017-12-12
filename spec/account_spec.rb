require 'account'

describe 'account' do
  describe "balance" do
    it "starts at 0" do
      account = Account.new()
      expect(account.balance).to equal(0)
    end

    it "balance increases" do
      account = Account.new
      account.deposit(10)
      expect(account.balance).to equal(10)
    end

    it "balance decreases" do
      account = Account.new
      account.deposit(100)
      account.withdraw(10)
      expect(account.balance).to equal(90)
    end
  end
end

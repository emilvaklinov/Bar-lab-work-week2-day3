require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class CustomerTest < MiniTest::Test

def setup
@pub = Pub.new("Rising sun", 100, @bar, 20)
@emily = Customer.new("Emily", 100, 33, 0)
@barry = Customer.new("Barry", 50, 39, 4)
@sam = Customer.new("Sam", 15, 16, 0)
@gin = Drink.new("Gin", 5, 5)
@rakia = Drink.new("Rakia", 3, 4)
end


def test_name
  assert_equal("Emily", @emily.name)
end

def test_wallet
  assert_equal(100, @emily.wallet)
end

  def test_customer_get_drink
  @emily.customer_pay_for_drink(@gin)
  assert_equal(95, @emily.wallet)
  assert_equal(5, @emily.drunkenness)
  end



end

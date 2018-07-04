require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Rising sun", 100, @bar, 20)
    @whiskey = Drink.new("Whiskey", 3, 4)
    @rakia = Drink.new("Rakia", 3, 4)
    @gin = Drink.new("Gin", 5, 5)
    @beer = Drink.new("Beer", 2, 3)
    @bar = [@whiskey, @rakia, @gin, @beer]
  end

end

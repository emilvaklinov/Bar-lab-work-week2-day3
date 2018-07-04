

class Customer

  attr_reader :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)

@name = name
@wallet = wallet
@age = age
@drunkenness = drunkenness

end

  def customer_pay_for_drink(drink)
  if @age >18 then
  @wallet -= drink.price
  @drunkenness += drink.units
end
  end



end

class Pub

  attr_reader :name, :till, :bar, :stock

  def initialize(name, till, bar, stock)

@name = name
@till = till
@bar = []
@stock = stock

end

def add_money_to_till(drink)
  @till += drink.price
end

def stock_level_add
  @stock += 1
end

def stock_level_reduce
  @stock -= 1
end
end

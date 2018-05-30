class Customer

  attr_reader(:name,:wallet,:drinks)

  def initialize(name,amount_in_wallet)
    @name = name
    @wallet = amount_in_wallet
    @drinks = []
  end

  def remove_cash(cash)
    return if @wallet < cash
    @wallet -= cash
  end

  def add_drink(drink)
    @drinks.push(drink)
  end

  def add_many_drinks(array_of_drinks)
    @drinks.concat(array_of_drinks)
  end

end

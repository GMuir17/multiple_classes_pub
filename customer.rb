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

  def buy_drinks(pub, type_of_drink, number_of_drinks)
    array_of_wanted_drinks = pub.remove_drink(type_of_drink, number_of_drinks)
    # remove_drink to be renamed create_order()
    add_many_drinks(array_of_wanted_drinks)

    cash_to_exchange = 0
    for drink in array_of_wanted_drinks
      cash_to_exchange += drink.price()
    end
    remove_cash(cash_to_exchange)
    pub.add_or_remove_cash(cash_to_exchange)
  end










end

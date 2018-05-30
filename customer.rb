class Customer

  attr_reader(:name,:wallet,:drinks)

  def initialize(name,amount_in_wallet)
    @name = name
    @wallet = amount_in_wallet
    @drinks = []
  end

  def remove_cash(cash)
    return false if @wallet < cash
    @wallet -= cash
  end

  def add_drink(drink)
    @drinks.push(drink)
  end

  def add_many_drinks(array_of_drinks)
    @drinks.concat(array_of_drinks)
  end

  def buy_drinks(pub, type_of_drink, number_of_drinks)
    cash_to_exchange = 0
    order_of_drinks = pub.create_order(type_of_drink, number_of_drinks)
    return if !order_of_drinks
    for drink in order_of_drinks
      cash_to_exchange += drink.price()
    end
    return if cash_to_exchange > @wallet
    add_many_drinks(order_of_drinks)
    pub.remove_many_drinks(order_of_drinks)
    remove_cash(cash_to_exchange)
    pub.add_or_remove_cash(cash_to_exchange)
  end










end

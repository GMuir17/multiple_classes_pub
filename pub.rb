class Pub

  attr_reader(:name, :till, :drinks)

  def initialize(name)
    @name = name
    @till = 0
    @drinks = []
  end

  def add_drink(drink)
    @drinks.push(drink)
  end

  def add_many_drinks(array_of_drinks)
    @drinks.concat(array_of_drinks)
  end

  def create_array_of_drinks_by_type(type_of_drink)
    array_of_drink_type = []
    for drink in @drinks
      if type_of_drink == drink.type()
        array_of_drink_type.push(drink)
      end
    end
    return array_of_drink_type
  end

  def create_order(type_of_drink, number_to_remove, customers_age=18)
    order_of_drinks = []
    array_of_drink_types = create_array_of_drinks_by_type(type_of_drink)
    return order_of_drinks if number_to_remove > array_of_drink_types.length() || customers_age < 18
    for drink in array_of_drink_types
      order_of_drinks.push(drink)
      return order_of_drinks if order_of_drinks.length() == number_to_remove
    end
  end

  def remove_many_drinks(array_of_drinks)
    for drink in array_of_drinks
      @drinks.delete(drink)
    end
  end

  def remove_order_from_stock(type_of_drink, number_to_remove)
    order_of_drinks = create_order(type_of_drink, number_to_remove)
    remove_many_drinks(order_of_drinks)
  end

  def add_or_remove_cash(cash)
    @till += cash
  end


end

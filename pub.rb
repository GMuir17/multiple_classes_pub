class Pub

  attr_reader(:name, :drinks)

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

  def remove_drink(type_of_drink, number_to_remove)
    array_of_wanted_drinks = []
    array_of_drink_types = create_array_of_drinks_by_type(type_of_drink)
    for drink in array_of_drink_types
      array_of_wanted_drinks.push(drink)
      if array_of_wanted_drinks.length() == number_to_remove
        for drink in array_of_wanted_drinks
          @drinks.delete(drink)
        end
        return
      end
    end
  end


end

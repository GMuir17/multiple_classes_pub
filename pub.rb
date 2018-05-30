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

  def remove_drink(drink_type,number_to_remove)
    count = 0
    array_of_wanted_drinks = []
    for drink in @drinks
      if drink_type == drink.type()
        array_of_wanted_drinks.push(drink)
        count += 1
      end
      if count == number_to_remove
        for drink in array_of_wanted_drinks
          @drinks.delete(drink)
        end
        return
      end
    end
  end

end

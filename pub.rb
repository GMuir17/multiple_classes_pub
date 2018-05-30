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


end

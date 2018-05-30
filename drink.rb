class Drink

  attr_reader(:type)

  def initialize(id_number, price, type)
    @id_number = id_number
    @price = price
    @type = type
  end

end

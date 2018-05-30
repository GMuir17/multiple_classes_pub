class Pub

  attr_reader(:name, :drinks)

  def initialize(name)
    @name = name
    @till = 0
    @drinks = []
  end

end

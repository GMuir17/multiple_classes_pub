class Pub

  attr_reader(:name)

  def initialize(name)
    @name = name
    @till = 0
    @drinks = []
  end

end

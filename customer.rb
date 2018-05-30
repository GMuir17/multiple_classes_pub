class Customer

  attr_reader(:name,:wallet,:drinks)

  def initialize(name,amount_in_wallet)
    @name = name
    @wallet = amount_in_wallet
    @drinks = []
  end
end

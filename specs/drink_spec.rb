require("minitest/autorun")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new(1,200,"beer")
  end

  def test_drink_has_name
    assert_equal("beer", @drink1.type())
  end

end

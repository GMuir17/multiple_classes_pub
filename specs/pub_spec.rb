require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new(1,200,"beer")
    @drink2 = Drink.new(2,200,"beer")

    @pub1 = Pub.new("Chanter")
  end

  def test_pub_has_name
    assert_equal("Chanter", @pub1.name())
  end

  def test_number_of_drinks__no_drinks
    assert_equal(0, @pub1.drinks().length())
  end

  def test_adding_drink_to_pub
    @pub1.add_drink(@drink1)
    assert_equal([@drink1], @pub1.drinks())
  end

  def test_adding_many_drinks
    drinks = [@drink1, @drink2]
    @pub1.add_many_drinks(drinks)
    assert_equal(2, @pub1.drinks().length())
  end

end

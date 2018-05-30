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

  def test_removes_type_drink__sufficient_beers
    drinks = [@drink1, @drink2]
    @pub1.add_many_drinks(drinks)
    @pub1.remove_drink("beer",1)
    assert_equal(1, @pub1.drinks().length())
  end

  def test_list_of_a_type_of_drink_in_pub__has_type
    drinks = [@drink1, @drink2]
    @pub1.add_many_drinks(drinks)
    array_of_beers = @pub1.create_array_of_drinks_by_type("beer")
    assert_equal(2, array_of_beers.length())
  end

  def test_add_cash_to_till__add
    @pub1.add_or_remove_cash(10)
    assert_equal(10, @pub1.till())
  end

  def test_add_cash_to_till__remove
    @pub1.add_or_remove_cash(-10)
    assert_equal(-10, @pub1.till())
  end
end

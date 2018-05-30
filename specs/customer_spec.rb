require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../pub.rb")

class CustomerTest < MiniTest::Test

  def setup
    drink1 = Drink.new(1,200,"beer")
    drink2 = Drink.new(2,200,"beer")
    @drink3 = Drink.new(3,200,"beer")

    @pub1 = Pub.new("Chanter")
    @drinks = [drink1, drink2]
    @pub1.add_many_drinks(@drinks)
    @customer1 = Customer.new("Gary", 20_000)
  end

  def test_customer_has_name
    assert_equal("Gary", @customer1.name())
  end

  def test_remove_cash_from_wallet__sufficient_funds
      @customer1.remove_cash(10_000)
      assert_equal(10_000, @customer1.wallet())
  end

  def test_remove_cash_from_wallet__insufficient_funds
      @customer1.remove_cash(30_000)
      assert_equal(20_000, @customer1.wallet())
  end

  def test_add_drink_to_customer
    @customer1.add_drink(@drink3)
    assert_equal(1, @customer1.drinks().length())
  end

  def test_add_many_drinks
    @customer1.add_many_drinks(@drinks)
    assert_equal(2, @customer1.drinks().length())
  end

  def test_buy_drinks__sufficient_drinks_and_cash
    @customer1.buy_drinks(@pub1, "beer", 2)
    assert_equal(19_600, @customer1.wallet())
    assert_equal(400, @pub1.till())
    assert_equal(2, @customer1.drinks().length())
    assert_equal(0, @pub1.drinks().length())
  end


end

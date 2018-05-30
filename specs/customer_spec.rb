require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../pub.rb")

class CustomerTest < MiniTest::Test

  def setup
    drink1 = Drink.new(1,200,"beer")
    drink2 = Drink.new(2,200,"beer")

    @pub1 = Pub.new("Chanter")
    drinks = [drink1, drink2]
    @pub1.add_many_drinks(drinks)
    @customer1 = Customer.new("Gary", 20)
  end

  def test_customer_has_name
    assert_equal("Gary", @customer1.name())
  end

  def test_remove_cash_from_wallet__sufficient_funds
      @customer1.remove_cash(10)
      assert_equal(10, @customer1.wallet())
  end

end

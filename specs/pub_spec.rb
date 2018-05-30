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


end

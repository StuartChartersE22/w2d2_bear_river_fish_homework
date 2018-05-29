require("minitest/autorun")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")
  end

  def test_bear_name
    assert_equal("Yogi", @bear1.name())
  end

  def test_bear_has_an_empty_stomach
    assert_equal(0,@bear1.amount_in_stomach())
  end

end

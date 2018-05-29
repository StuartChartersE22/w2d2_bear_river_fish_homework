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

  

end

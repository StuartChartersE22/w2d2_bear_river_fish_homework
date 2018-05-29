require("minitest/autorun")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Joe")
    @fish2 = Fish.new("Sarah")
    @river1 = River.new("Amazon")
  end

  def test_river_name
    assert_equal("Amazon",@river1.name())
  end

end

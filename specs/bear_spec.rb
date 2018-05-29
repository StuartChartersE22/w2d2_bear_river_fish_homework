require("minitest/autorun")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Joe")
    fish2 = Fish.new("Sarah")
    fishes = [fish1, fish2]
    @river1 = River.new("Amazon")
    @river1.add_many_fishes(fishes)
    @bear1 = Bear.new("Yogi")
  end

  def test_bear_name
    assert_equal("Yogi", @bear1.name())
  end

  def test_bear_has_an_empty_stomach
    assert_equal(0,@bear1.amount_in_stomach())
  end

  def test_bear_eats_fish
    removed_fish = @river1.remove_specific_fish("Joe")
    @bear1.eat(removed_fish)
    assert_equal(1,@bear1.amount_in_stomach())
  end

end

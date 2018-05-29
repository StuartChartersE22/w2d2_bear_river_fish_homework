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

  def test_number_of_fishes_in_river
    assert_equal(0, @river1.number_of_fishes())
  end

  def test_adding_fish_to_river
    @river1.add_fish(@fish1)
    assert_equal(1, @river1.number_of_fishes)
  end

  def test_adding_many_fishes
    fishes = [@fish1,@fish2]
    @river1.add_many_fishes(fishes)
    assert_equal(2, @river1.number_of_fishes())
  end

  def test_remove_specific_fish
    fishes = [@fish1,@fish2]
    @river1.add_many_fishes(fishes)
    removed_fish = @river1.remove_specific_fish("Joe")
    assert_equal(1, @river1.number_of_fishes())
    assert_equal("Joe", removed_fish.name())
  end

  def test_remove_a_fish
    fishes = [@fish1,@fish2]
    @river1.add_many_fishes(fishes)
    removed_fish = @river1.remove_fish()
    assert_equal(1, @river1.number_of_fishes())
    assert_equal(Fish, removed_fish.class())
  end

end

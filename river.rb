class River

  attr_reader(:name)
  ##remove comment if bear has method catch_and_eat_fish
  #attr_reader(:fishes)

  def initialize(name)
    @name = name
    @fishes = []
  end

  def number_of_fishes()
    return @fishes.length()
  end

  def add_fish(fish_to_add)
    @fishes.push(fish_to_add)
  end

  def add_many_fishes(array_of_fishes)
    @fishes.concat(array_of_fishes)
  end

  def remove_specific_fish(name)
    for fish in @fishes
      return @fishes.delete(fish) if fish.name() == name
    end
  end

  def remove_fish()
    random_order = @fishes.shuffle()
    removed_fish = random_order.pop()
    @fishes.delete(removed_fish)
    return removed_fish
  end

end

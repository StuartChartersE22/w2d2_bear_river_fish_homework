class Bear

  attr_reader(:name)

  def initialize(name)
    @name = name
    @stomach = []
  end

  def amount_in_stomach()
    return @stomach.length()
  end

  def eat(food)
    @stomach.push(food)
  end

  ##uncoment out if river has attr_reader(:fishes)
  # def catch_and_eat_fish(fishes)
  #   random_order = fishes.shuffle()
  #   fish_removed = random_order.pop()
  #   @stomach.push(fish_removed)
  #   return fish_removed
  # end

  def bear_catches_and_eats_fish(river)
    removed_fish = river.remove_fish()
    @stomach.push(removed_fish)
  end

end

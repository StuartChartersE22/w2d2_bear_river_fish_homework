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

  def catch_and_eat_fish(fishes)
    random_order = fishes.shuffle()
    fish_removed = random_order.pop()
    @stomach.push(random_order.pop())
    return fish_removed
  end

end

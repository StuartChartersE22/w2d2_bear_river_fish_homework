class River

  attr_reader(:name)

  def initialize(name)
    @name = name
    @fishes = []
  end

  def number_of_fishes()
    return @fishes.length()
  end

end

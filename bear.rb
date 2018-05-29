class Bear

  attr_reader(:name)

  def initialize(name)
    @name = name
    @stomach = []
  end

  def amount_in_stomach()
    return @stomach.length()
  end

end

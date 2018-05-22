class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_contents
    return @stomach
  end

  def take_fish(river)
    @stomach << river.get_fish
    river.lose_fish
  end

  def roar()
    return "Rwaaaaar!"
  end

  def food_count
    return @stomach.count()
  end
end

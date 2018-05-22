class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def lose_fish()
    @fish.pop()
  end

  def fish_count()
    return @fish.count()
  end

  def get_fish()
    index = (@fish.count()) -1
    return [@fish[index]]
  end

end

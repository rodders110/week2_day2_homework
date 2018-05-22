require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Trout")
    fish2 = Fish.new("Salmon")
    fish3 = Fish.new("Bass")
    @river = River.new("Amazon", [fish1, fish2, fish3])
  end

  def test_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_can_get_fish
    assert_equal("Trout", @river.get_fish(0))
  end

  def test_has_fish
    assert_equal(3, @river.fish.count())
  end

  def test_can_lose_fish
    @river.lose_fish
    assert_equal(2, @river.fish.count())
  end

  def test_can_count_fish
    assert_equal(3, @river.fish_count)
  end

  def test_can_get_fish
    fish = @river.get_fish
    assert_equal(1,fish.count())
  end


end

require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../fish")
require_relative("../river")


class BearTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Trout")
    fish2 = Fish.new("Salmon")
    fish3 = Fish.new("Bass")
    @river = River.new("Amazon", [fish1, fish2, fish3])
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_has_empty_stomach
    assert_equal([],@bear.stomach_contents())
  end

  def test_can_take_fish_from_river
    @bear.take_fish(@river)

    assert_equal(1, @bear.stomach_contents.count())
    assert_equal(2, @river.fish_count())
  end

  def test_can_roar
    assert_equal("Rwaaaaar!", @bear.roar)
  end

  def test_food_count
    @bear.take_fish(@river)

    assert_equal(1, @bear.food_count)
  end





end

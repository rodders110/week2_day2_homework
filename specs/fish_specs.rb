require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")


class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Trout")
  end

  def test_has_name
    assert_equal("Trout", @fish1.name)
  end





end

require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup
    @river_amazon = River.new("Amazon")
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Goldfish")
  end

  def test_river_has_name
    assert_equal("Amazon", @river_amazon.name)
  end

  def test_river_empty_of_fish
    assert_equal([], @river_amazon.fish_array)
  end

  def test_add_fish_to_river
    @river_amazon.add_fish(@fish1)
    @river_amazon.add_fish(@fish2)
    @river_amazon.add_fish(@fish3)
    assert_equal(3, @river_amazon.fish_array.count)
  end

end

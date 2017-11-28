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

end

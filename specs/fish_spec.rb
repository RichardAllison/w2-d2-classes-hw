require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
  end

  def test_fish_has_name
    assert_equal("Nemo", @fish1.name)
  end

end

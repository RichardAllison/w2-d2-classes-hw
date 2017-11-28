require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")
    @river = River.new("Volga")
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Goldfish")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_stomach_empty
    assert_equal([], @bear1.stomach)
  end

  def test_eat
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @bear1.eat(@river)
    @river.remove_fish()
    assert_equal(1, @bear1.stomach.count)
    
  end

end

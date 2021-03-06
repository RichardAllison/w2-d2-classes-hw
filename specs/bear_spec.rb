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
    @river.add_fish(@fish3)
    @bear1.eat(@river)
    assert_equal(1, @bear1.stomach.length)
    assert_equal(2, @river.fish_array.length)
  end

  def test_roar
    assert_equal("ROAR!", @bear1.roar)
  end

  def test_food_count
    @river.add_fish(@fish1)
    @bear1.eat(@river)
    assert_equal(1, @bear1.food_count)
  end

  def test_food_count__empty_stomach
    assert_equal(0, @bear1.food_count)
  end

  def test_food_count__multiple_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @bear1.eat(@river)
    @bear1.eat(@river)
    @bear1.eat(@river)
    assert_equal(3, @bear1.food_count)
  end

end

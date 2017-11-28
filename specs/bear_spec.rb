require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi")
    @river = River.new("Volga")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_stomach_empty
    assert_equal([], @bear1.stomach)
  end

end

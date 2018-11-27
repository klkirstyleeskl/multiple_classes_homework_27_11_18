require("minitest/autorun")
require("minitest/rg")
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Tweed")
    @fish_1 = Fish.new("Sally", "salmon")
    @fish_2 = Fish.new("Trevor", "trout")
    @fish_3 = Fish.new("Gordon", "grayling")
    @bear = Bear.new("Boo Boo", "Grizzly")
  end

  def test_create_river
    assert_equal(River, @river.class())
  end

  def test_river_name
    assert_equal("Tweed", @river.river_name)
  end

  def test_river_has_no_fish
    assert_equal(0, @river.populate())
  end

  def test_add_fish_to_river
    @river.add_new_fish(@fish_1)
    @river.add_new_fish(@fish_2)
    @river.add_new_fish(@fish_3)
    assert_equal(3, @river.populate())

  end

  def feed_empty_bear
    @river.feed_fish_to_bear(@fish1)
      assert_equal(2, @river.populate())
  end

  def test_bear_stomach_contents
    assert_equal(1, @bear.bear_feed())
  end


end

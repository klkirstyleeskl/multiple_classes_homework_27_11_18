require("minitest/autorun")
require("minitest/rg")
require_relative('../bear.rb')

class RiverBear < MiniTest::Test

  def setup
    @bear = Bear.new("Boo Boo", "Grizzly")
  end

  def test_create_bear
      assert_equal(Bear, @bear.class())
  end

  def test_bear_name
    assert_equal("Boo Boo", @bear.bear_name)
  end

  def test_bear_species
    assert_equal("Grizzly", @bear.bear_species)
  end

  def test_bear_is_empty
    assert_equal(0, @bear.bear_feed())
  end

end

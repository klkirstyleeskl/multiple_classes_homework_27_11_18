require("minitest/autorun")
require("minitest/rg")
require_relative('../fish.rb')

class Fish

  def stetup
    @fish_1 = Fish.new("Sally", "salmon")
    @fish_2 = Fish.new("Trevor", "trout")
    @fish_3 = Fish.new("Gordon", "grayling")
  end

  def test_create_fish
    assert_equal(Fish, @fish_1.class())
  end

  def test_fish_name
    assert_equal("Sally", @fish_1.name())
  end

  def test_fish_species
    assert_equal("trout", @fish_2.species())
  end

  



end

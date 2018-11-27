class River

  attr_reader :river_name

  def initialize(river_name)
    @river_name = river_name
    @river_population = []
  end

  def populate()
    return @river_population.length()
  end

  def add_new_fish(fish)
    @river_population << fish
  end

  def feed_fish_to_bear(fish)
    @bear_stomach << @river_population.delete_at(fish)
  end


  def bear_feed
    return @bear_stomach.length()
  end

end

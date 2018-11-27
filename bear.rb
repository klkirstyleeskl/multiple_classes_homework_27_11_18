class Bear

  attr_reader :bear_name, :bear_species

  def initialize(bear_name, bear_species)
    @bear_name = bear_name
    @bear_species = bear_species
    @bear_stomach = []
  end

  def bear_feed()
    return @bear_stomach.length
  end

end

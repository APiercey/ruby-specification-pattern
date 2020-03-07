class AngiospermsSpec < AbstractSpec
  attr_reader :both

  def initialize()
    seed_bearing  = PlantProductionSpec.new(Classifications::Products::SEEDS)
    spore_bearing = PlantProductionSpec.new(Classifications::Products::SPORES)
    flowering     = PlantFeatureSpec.new(Classifications::Organs::FLOWERS)

    @both = seed_bearing.or(spore_bearing)
                        .and(flowinerg)
  end

  def satisfies?(plant)
    @both.satisfies?(plant)
  end
end

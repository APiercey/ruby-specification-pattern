class GymnospermsSpec < AbstractSpec
  attr_reader :specs

  def initialize()
    seed_bearing = PlantProductionSpec.new(Classifications::Products::SEEDS)
    cone_bearing = PlantProductionSpec.new(Classifications::Products::CONES)
    flowering    = PlantFeatureSpec.new(Classifications::Organs::FLOWERS)

    @specs = seed_bearing.and(cone_bearing)
                        .not(flowering)
  end

  def satisfies?(plant)
    @specs.satisfies?(plant)
  end
end

class PlantFeatureSpec < AbstractSpec
  attr_reader :feature

  def initialize(feature)
    raise "Not a feature of a plant" unless Classifications::Features.classifies?(feature)

    @feature = feature
  end

  def satisfies?(plant)
    plant.features.include?(@feature)
  end
end

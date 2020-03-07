class PlantProductionSpec < AbstractSpec
  attr_reader :product
  def initialize(product)
    raise "Not a product of a plant" unless Classifications::Products.classifies?(product)

    @product = product
  end

  def satisfies?(plant)
    @product == plant.product
  end
end

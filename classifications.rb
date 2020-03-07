module Classifications
  module Products
    SEEDS = :seeds
    SPORES = :spores
    CONES = :cones

    def self.classifies?(product)
      self.constants.any?(product)
    end
  end

  module Organs
    FLOWERS = :flowers
    ROOTS = :roots
    TUBERS = :tubers
    RHIZOMES = :rhizomes
    OVARY = :ovary

    def self.classifies?(feature)
      self.constants.any?(feature)
    end
  end
end

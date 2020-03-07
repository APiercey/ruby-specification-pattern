class Apple
  def initialize(*args)

  end

  def features
    [Classifications::Features::FLOWERS]
  end

  def product
    Classifications::Products::SEEDS
  end

  def developing_organ
    Classifications::Organs::OVARY
  end
end

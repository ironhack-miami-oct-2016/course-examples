class Product
  attr_reader(:name, :price, :picture)

  def initialize(name, price, picture)
    @name = name
    @price = price
    @picture = picture
  end
end

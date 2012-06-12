class ProductFilter
  def by_color(products, color)
  	products.select { |product| product.color == color }
  end
  def by_size(products, size)
  	products.select { |product| product.size == size }
  end
  def by_color_and_size(products, color, size)
  	products.select { |product| product.color == color && product.size == size }
  end
end

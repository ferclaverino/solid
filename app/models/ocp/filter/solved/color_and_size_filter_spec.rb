module Ocp::Filter::Solved
	class ColorAndSizeFilterSpec
		attr_accessor :color
		attr_accessor :size

		def initialize(color, size)
			@color = color
			@size = size
		end

		def apply_to(products)
			products.select { |item| item.color == @color && item.size == @size }
		end
	end
end
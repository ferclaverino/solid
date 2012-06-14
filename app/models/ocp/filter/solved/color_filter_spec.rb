module Ocp::Filter::Solved
	class ColorFilterSpec
		attr_accessor :color

		def initialize(color)
			@color = color
		end

		def apply_to(products)
			products.select { |item| item.color == @color }
		end
	end
end
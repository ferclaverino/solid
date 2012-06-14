module Ocp::Filter::Solved
	class SizeFilterSpec
		attr_accessor :size

		def initialize(size)
			@size = size
		end
		
		def apply_to(products)
			products.select { |item| item.size == @size }
		end
	end
end
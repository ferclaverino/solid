module Ocp::Starbuzz::Solved
	class Mocha
		attr_reader :cost

		def initialize(beverage)
			@beverage = beverage
		end

		def cost
			@beverage.cost + 0.5
		end
	end
end
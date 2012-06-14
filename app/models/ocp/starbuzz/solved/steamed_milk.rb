module Ocp::Starbuzz::Solved
	class SteamedMilk
		attr_reader :cost

		def initialize(beverage)
			@beverage = beverage
		end

		def cost
			@beverage.cost + 1
		end
	end
end
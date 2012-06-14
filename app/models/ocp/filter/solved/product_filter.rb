module Ocp::Filter::Solved
	class ProductFilter
	  def by(products, spec)
	  	spec.apply_to(products)
	  end
	end
end
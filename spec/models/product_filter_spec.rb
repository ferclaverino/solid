require 'spec_helper'

describe ProductFilter do
	before(:each) do
		@products = [
			Product.new("Blue", "Small"),
			Product.new("Yellow", "Small"),
			Product.new("Yellow", "Medium"),
			Product.new("Red", "Large"),
			Product.new("Blue", "Large")
		]
		@productFilter = ProductFilter.new
	end
	it "can be instantiated" do
		@productFilter.should be_an_instance_of(ProductFilter)
	end
	describe "filter by blue" do
		it "return 2" do
			@productFilter.by_color(@products, "Blue").should have(2).items
		end
	end
	describe "filter by small" do
		it "return 2" do
			@productFilter.by_size(@products, "Small").should have(2).items
		end
	end
	describe "filter by blue and small" do
		it "return 1" do
			@productFilter.by_color_and_size(@products, "Blue", "Small").should have(1).items
		end
	end
end

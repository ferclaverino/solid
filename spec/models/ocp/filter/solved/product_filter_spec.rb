require 'spec_helper'

module Ocp::Filter::Solved
	describe ProductFilter do
		before(:each) do
			@products = [
				Product.new("Blue", "Small"),
				Product.new("Yellow", "Small"),
				Product.new("Yellow", "Medium"),
				Product.new("Red", "Large"),
				Product.new("Blue", "Large")
			]
			@product_filter = ProductFilter.new
		end
		it "can be instantiated" do
			@product_filter.should be_an_instance_of(ProductFilter)
		end
		describe "filter by blue" do
			it "return 2" do
				@product_filter.by(@products, ColorFilterSpec.new("Blue")).should have(2).items
			end
		end
		describe "filter by small" do
			it "return 2" do
				@product_filter.by(@products, SizeFilterSpec.new("Small")).should have(2).items
			end
		end
		describe "filter by blue and small" do
			it "return 1" do
				@product_filter.by(@products, ColorAndSizeFilterSpec.new("Blue", "Small")).should have(1).items
			end
		end
	end
end
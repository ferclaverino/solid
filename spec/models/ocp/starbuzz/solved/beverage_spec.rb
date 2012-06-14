require 'spec_helper'

module Ocp::Starbuzz::Solved
	describe Expresso do
		it "can be instantiated" do
			Expresso.new.should be_an_instance_of(Expresso)
		end
		it "cost 5" do
			Expresso.new.cost.should == 5
		end
	end

	describe "Expreso with mocha" do
		it "cost 5.5" do
			Mocha.new(Expresso.new).cost.should == 5.5
		end
	end

	describe "Expreso with steamed milk and mocha" do
		it "cost 6.5" do
			SteamedMilk.new(Mocha.new(Expresso.new)).cost.should == 6.5
		end
	end
end
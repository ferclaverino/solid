require 'spec_helper'

module Ocp::Starbuzz::Unsolved
	describe Expresso do
		it "can be instantiated" do
			Expresso.new.should be_an_instance_of(Expresso)
		end
		it "cost 5" do
			Expresso.new.cost.should == 5
		end
	end

	describe ExpressoWithMocha do
		it "can be instantiated" do
			ExpressoWithMocha.new.should be_an_instance_of(ExpressoWithMocha)
		end
		it "cost 5.5" do
			ExpressoWithMocha.new.cost.should == 5.5
		end
	end

	describe ExpressoWithSteamedMilkAndMocha do
		it "can be instantiated" do
			ExpressoWithSteamedMilkAndMocha.new.should be_an_instance_of(ExpressoWithSteamedMilkAndMocha)
		end
		it "cost 6.5" do
			ExpressoWithSteamedMilkAndMocha.new.cost.should == 6.5
		end
	end
end
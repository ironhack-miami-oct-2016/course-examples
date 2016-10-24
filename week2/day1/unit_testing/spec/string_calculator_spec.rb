# spec/string_calculator_spec.rb

 #      Go up one, outside of the spec/ folder
 #                 |
require_relative("../lib/string_calculator.rb")


RSpec.describe StringCalculator do
  describe "#add" do

    it "adds two numbers separated by commas" do
      the_calc = StringCalculator.new

      # p the_calculator.add("7,7")  ==  14
      expect(the_calc.add("7,7")).to  eq(14)


      # p the_calculator.add("8,4") == 12
      expect(the_calc.add("8,4")).to  eq(12)
    end

    it "returns the number for a single number" do
      # assertions
    end

    it "returns 0 for the empty string" do
      # assertions
    end

    it "returns 0 when no argument given" do
      # assertions
    end

    # etc.
  end
end

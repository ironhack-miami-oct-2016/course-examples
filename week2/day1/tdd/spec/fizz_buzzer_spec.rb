require_relative("../lib/fizz_buzzer.rb")


RSpec.describe FizzBuzzer do
  describe "#fizz_buzz" do
    let :my_fzbz do
      FizzBuzzer.new
    end

    it "returns the number as a string" do
      expect(my_fzbz.fizz_buzz(7)).to eq("7")
      expect(my_fzbz.fizz_buzz(11)).to eq("11")
      expect(my_fzbz.fizz_buzz(22)).to eq("22")
    end

    it "returns \"Fizz\" for multiples of 3" do
      expect(my_fzbz.fizz_buzz(3)).to eq("Fizz")
      expect(my_fzbz.fizz_buzz(12)).to eq("Fizz")
      expect(my_fzbz.fizz_buzz(99)).to eq("Fizz")
    end

    it "returns \"Buzz\" for multiples of 5" do
      expect(my_fzbz.fizz_buzz(10)).to eq("Buzz")
      expect(my_fzbz.fizz_buzz(25)).to eq("Buzz")
      expect(my_fzbz.fizz_buzz(550)).to eq("Buzz")
    end

    it "returns \"FizzBuzz\" for multiples of 3 and 5" do
      expect(my_fzbz.fizz_buzz(15)).to eq("FizzBuzz")
      expect(my_fzbz.fizz_buzz(135)).to eq("FizzBuzz")
      expect(my_fzbz.fizz_buzz(630)).to eq("FizzBuzz")
    end
  end
end

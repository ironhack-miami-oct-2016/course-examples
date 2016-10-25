# spec/lexiconomitron_spec.rb

require_relative("../lib/lexiconomitron.rb")


describe Lexiconomitron do

  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect( @lexi.eat_t("great scott!") ).to eq("grea sco!")
    end

    it "leaves words without t unchanged" do
      @lexi = Lexiconomitron.new
      expect( @lexi.eat_t("hello everybody") ).to eq("hello everybody")
    end
  end


  describe "#shazam" do
    it "reverses words, removes their T's and returns the first and last" do
      @lexi = Lexiconomitron.new
      words = ["Therefore", "I", "really", "love", "pizza"]

      expect( @lexi.shazam(words) ).to eq(["erofereh", "azzip"])
    end
  end


  describe "#oompa_loompa" do
    it "returns the words with 3 chars or less without the T's" do
      @lexi = Lexiconomitron.new
      words = ["If", "you", "want", "to", "be", "my", "lover"]

      expect( @lexi.oompa_loompa(words) ).to eq(["If", "you", "o", "be", "my"])
    end
  end

end


RSpec.describe PasswordChecker do
  describe "#check_password" do
    it "returns true for valid passwords" do
      checker = PasswordChecker.new

      expect( checker.check_password("nizar@example.com", "aB76*%cz#3") ).to eq(true)
      expect( checker.check_password("nizar@example.com", "uP8&$O20") ).to eq(true)
    end

    it "returns false for passwords shorter than 8 characters" do
      # Examples: "aB7*", "uP8&$"
    end

    it "returns false for passwords without letters" do
      # Examples: "5876*%62#3", "388&$920"
    end

    it "returns false for passwords without numbers" do
      # Examples: "aBphg*%cz#f", "uPB&$KZl"
    end

    it "returns false for passwords without symbols" do
      # Examples: "aB76vkcz33", "uP869O20"
    end

    it "returns false for passwords without uppercase letters" do
      # Examples: "ab76*%cz#3", "up8&$o20"
    end

    it "returns false for passwords without lowercase letters" do
      # Examples: "AB76*%CZ#3", "UP8&$O20"
    end

    # BONUS
    it "returns false for passwords with the email username" do
      # Examples: "aB7nizar6*%cz#3", "unizarP8&$O20"
    end

    it "returns false for passwords with the domain" do
      # Examples: "aB76*example%cz#3", "uP8&example$O20"
    end
  end
end

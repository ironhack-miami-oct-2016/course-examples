# spec/password_checker_spec.rb

require_relative("../lib/password_checker.rb")


RSpec.describe PasswordChecker do
  let(:the_checker) { PasswordChecker.new }

  describe "#check_password" do
    it "returns false for passwords with 7 characters or less" do
      expect( the_checker.check_password("nizar@example.com", "aZ1%") ).to eq(false)
      expect( the_checker.check_password("nizar@example.com", "abcZ1%$") ).to eq(false)
    end

    it "returns false for passwords without any letters" do
      expect( the_checker.check_password("nizar@example.com", "1234@&$%-.") ).to eq(false)
      expect( the_checker.check_password("nizar@example.com", "^*{}<999999") ).to eq(false)
    end

    it "returns false for passwords without uppercase letters" do
      expect( the_checker.check_password("nizar@example.com", "abcdoremi123%") ).to eq(false)
      expect( the_checker.check_password("nizar@example.com", "hello^*{}<99") ).to eq(false)
    end

    it "returns false for passwords without lowercase letters" do
      expect( the_checker.check_password("nizar@example.com", "ABCDOREMI123%") ).to eq(false)
      expect( the_checker.check_password("nizar@example.com", "HELLO^*{}<99") ).to eq(false)
    end

    it "returns false for passwords without numbers" do
      expect( the_checker.check_password("nizar@example.com", "abc^&*XYZ") ).to eq(false)
      expect( the_checker.check_password("nizar@example.com", "hello^*{}<ISITME") ).to eq(false)
    end

    it "returns false for passwords without special characters" do
      expect( the_checker.check_password("nizar@example.com", "aaaaaaBBBB57688") ).to eq(false)
      expect( the_checker.check_password("nizar@example.com", "hello000000ISITME") ).to eq(false)
    end

    it "returns false for passwords that contain the email name" do
      expect( the_checker.check_password("nizar@example.com", "nizar#1BEST$$") ).to eq(false)
      expect( the_checker.check_password("nizar@example.com", "HELLO^*34<nizar") ).to eq(false)
    end

    it "returns false for passwords that contain the email domain" do
      expect( the_checker.check_password("nizar@example.com", "example#1BEST$$") ).to eq(false)
      expect( the_checker.check_password("nizar@example.com", "HELLO^*34<example") ).to eq(false)
    end

    it "returns true for passwords that meet all criteria" do
      expect( the_checker.check_password("nizar@example.com", "ABCdoremi123%") ).to eq(true)
      expect( the_checker.check_password("nizar@example.com", "$abcZ16*") ).to eq(true)
    end
  end
end

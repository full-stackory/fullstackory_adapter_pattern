require "spec_helper"

describe SectionAAdapterPattern do
  it "outputs intro text when intro method is called" do
    test_class = SectionAAdapterPattern.new()

    def test_print
      puts <<-HEREDOC
        adaptee - an existing interface
        adapter - converts the original interface into the desired interface
        target - the domain-specific interface to be used in the system
      HEREDOC
    end

    expect(test_class.intro).to eq(test_print)
  end
end

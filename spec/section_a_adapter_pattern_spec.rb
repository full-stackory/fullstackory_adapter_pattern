require "spec_helper"

# these these should be green
describe SectionAAdapterPattern do
  it "outputs intro text when intro method is called" do
    section_a = SectionAAdapterPattern.new()

    def test_print
      puts <<-HEREDOC
        adaptee - an existing interface
        adapter - converts the original interface into the desired interface
        target - the domain-specific interface to be used in the system
      HEREDOC
    end

    expect(section_a.intro).to eq(test_print)
  end

  it "has an adapter which functions" do
    # TODO: add test here
    expect(true).to eq(true)
  end

  it "has an adaptee which functions" do
    # TODO: add test here
    expect(true).to eq(true)
  end

  it "has a target which functions" do
    # TODO: add test here
    expect(true).to eq(true)
  end

  it "is a client which utilizes the adapter pattern" do
    # TODO: add test here
    expect(true).to eq(true)
  end
end

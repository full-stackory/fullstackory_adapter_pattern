# these should be red 
require "spec_helper"

describe SectionCAdapterPattern do
  it "outputs intro text when intro method is called" do
    section_c = SectionCAdapterPattern.new()

    def test_print
      puts <<-HEREDOC
        some c intro text
      HEREDOC
    end
    expect(section_c.intro).to eq(test_print)
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

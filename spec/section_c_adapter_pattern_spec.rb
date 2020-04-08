# These should be red when you start - fill them in as you write the code
require "spec_helper"

describe SectionCAdapterPattern do
  it "outputs intro text when intro method is called" do
    section_c = SectionCAdapterPattern.new()

    def test_print
      puts <<-HEREDOC
        Now apply what you worked on in Section A and Section B
      HEREDOC
    end
    expect(section_c.intro).to eq(test_print)
  end

  it "has an adapter which functions" do
    # TODO: add test here
    expect(true).to eq(false)
  end

  it "has an adaptee which functions" do
    # TODO: add test here
    expect(true).to eq(false)
  end

  it "has a target which functions" do
    # TODO: add test here
    expect(true).to eq(false)
  end

  it "is a client which utilizes the adapter pattern" do
    # TODO: add test here
    expect(true).to eq(false)
  end
end

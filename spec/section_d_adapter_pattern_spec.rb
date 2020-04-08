 # Write tests below as you write the code
require "spec_helper"

describe SectionDAdapterPattern do
  it "outputs intro text when intro method is called" do
    section_d = SectionDAdapterPattern.new()

    def test_print
      puts <<-HEREDOC
        Now you need to slove a problem with your own code
      HEREDOC
    end
    expect(section_d.intro).to eq(test_print)
  end
end

require "spec_helper"

describe SectionDAdapterPattern do
  it "outputs intro text when intro method is called" do
    section_d = SectionDAdapterPattern.new()

    def test_print
      puts <<-HEREDOC
        section d intro text
      HEREDOC
    end
    expect(section_d.intro).to eq(test_print)
  end
end

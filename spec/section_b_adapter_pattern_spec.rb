require "spec_helper"

describe SectionBAdapterPattern do
  it "outputs intro text when intro method is called" do
    section_b = SectionBAdapterPattern.new()

    def test_print
      puts <<-HEREDOC
        A good reason to use this pattern:
        We protected ourselves from the dependency on a given gem/library.
        We are use that dependency but not directly.
        This make it east to change it later if we need to.
      HEREDOC
    end
    expect(section_b.intro).to eq(test_print)
  end
end

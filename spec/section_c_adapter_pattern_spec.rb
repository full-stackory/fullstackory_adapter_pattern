require "spec_helper"

describe SectionCAdapterPattern do
  it "does a thing" do
    section_c = SectionCAdapterPattern.new()
    expect(section_c.does_a_thing_again).to eq(true)
  end
end

require "spec_helper"

# these these should be green
describe SectionAAdapterPattern do
  it "outputs intro text when intro method is called" do
    section_a = SectionAAdapterPattern.new

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
    sd = Screwdriver.new
    sd_adapter = ScrewdriverAdapter.new(sd)
    expect(sd_adapter.use_device).to eq(true)
  end

  it "has an adaptee which functions" do
    sd = Screwdriver.new
    expect(sd.drive).to eq(true)
  end

  it "has a target which functions" do
    sd = Screwdriver.new
    sd_adapter = ScrewdriverAdapter.new(sd)
    d = Device.new(sd_adapter)
    expect(d.use_device).to eq(true)
  end

  it "is a client which utilizes the adapter pattern" do
    a = SectionAAdapterPattern.new
    expect(a.use_our_target_with_adapter).to eq(true)
  end
end

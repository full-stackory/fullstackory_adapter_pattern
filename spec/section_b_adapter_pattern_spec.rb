# these tests should be green
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

  it "has an adapter which functions" do
    d = FakeData.new
    fd_adapter = FakeDataAdapter.new(d)
    expect(fd_adapter.random_test_name.class).to eq(String)
    expect(fd_adapter.random_test_name).to include(" ")
    # recall that the name is random
    expect(fd_adapter.random_test_name).not_to eq(fd_adapter.random_test_name)
  end

  it "has an adaptee which functions" do
    fd = FakeData.new
    expect(fd.name.class).to eq(String)
    expect(fd.name).to include(" ")
    # recall that the name is random
    expect(fd.name).not_to eq(fd.name)
  end

  it "has a target which functions" do
    f_data = FakeData.new
    f_data_adapter = FakeDataAdapter.new(f_data)
    td = TestData.new(f_data_adapter)
    td.random_test_name
    expect(td.random_test_name.class).to eq(String)
    expect(td.random_test_name).to include(" ")
    # recall that the name is random
    expect(td.random_test_name).not_to eq(td.random_test_name)
  end

  it "is a client which utilizes the adapter pattern" do
    b = SectionBAdapterPattern.new
    expect(b.use_our_target_with_adapter.class).to eq(String)
    expect(b.use_our_target_with_adapter).to include(" ")
    # recall that the name is random
    expect(b.use_our_target_with_adapter).not_to eq(b.use_our_target_with_adapter)
  end
end

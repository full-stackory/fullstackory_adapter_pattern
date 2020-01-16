require "fullstackory_adapter_pattern/version"
require "faker"
# This is an exploring section about the adaptor pattern
# we have a more concrete example here.
class SectionBAdapterPattern
  def intro
    intro_text = <<-HEREDOC
      A good reason to use this pattern:
      We protected ourselves from the dependency on a given gem/library.
      We are use that dependency but not directly.
      This make it east to change it later if we need to.
    HEREDOC
    puts intro_text
  end

  def use_our_original_adaptee
    data = FakeData.new
    data.name
  end

  def use_our_adapter
    data = FakeData.new
    fake_data_adapter = FakeDataAdapter.new(data)
    fake_data_adapter.random_test_name
  end

  def use_our_target_with_adapter
    data = FakeData.new
    fake_data_adapter = FakeDataAdapter.new(data)
    test_data = TestData.new(fake_data_adapter)
    test_data.random_test_name
  end
end

# The FakeData class is the 'adaptee'
# we want to adapt the interface to a common interface.
class FakeData
  def name
    Faker::Name.unique.name
  end
end

# The Device class is the 'Target'
# we want to use this interface
class TestData
  def initialize(adapter)
    @adapter = adapter
  end

  def random_test_name
    @adapter.random_test_name
  end
end

# The FakeDataAdapter is the 'adapter'
class FakeDataAdapter
  def initialize(fake_name)
    @fake_name = fake_name
  end

  # the random_name method wraps the FakeData #name method
  def random_test_name
    @fake_name.name
  end
end

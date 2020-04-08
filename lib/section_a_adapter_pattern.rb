# Remember you can run bin/console to explore the code
# Recall you can create a new instance of the class  and call the methods
#  Example below:
# a1 = SectionAAdapterPattern.new; a1.intro

require "fullstackory_adapter_pattern/version"
# This is an intro to the adaptor pattern
# The adapter can provide an interface for different classes to work together
# We need an adaptee, an adapter, and a target
class SectionAAdapterPattern
  def intro
    intro_text = <<-HEREDOC
      adaptee - an existing interface
      adapter - converts the original interface into the desired interface
      target - the domain-specific interface to be used in the system
    HEREDOC
    puts intro_text
  end

  def use_our_original_adaptee
    screwdriver = Screwdriver.new
    screwdriver.drive
  end

  def use_our_adapter
    screwdriver = Screwdriver.new
    screwdriver_adapter = ScrewdriverAdapter.new(screwdriver)
    screwdriver_adapter.use_device
  end

  def use_our_target_with_adapter
    # Here in the client we instantiate a Screwdriver,
    # and pass it to a Screwdriver adapter
    # Then pass the Screwdriver adapter into our 'target', an instance of Device
    screwdriver = Screwdriver.new
    screwdriver_adapter = ScrewdriverAdapter.new(screwdriver)
    device = Device.new(screwdriver_adapter)

    # We can now use the Device and underneath a Screwdriver is driving
    device.use_device
  end
end

# The Screwdriver class is the 'adaptee'
# We want to adapt the interface to a common, 'Device' interface
class Screwdriver
  def drive
    # Code that drives a screw goes here
    # In this case we will only return true when drive is called
    true
  end
end

# The Device class is the 'Target'
# We want to use this interface
class Device
  def initialize(adapter)
    @adapter = adapter
  end

  def use_device
    @adapter.use_device
  end
end

# The ScrewdriverAdapter is the 'adapter'
class ScrewdriverAdapter
  def initialize(screwdriver)
    @screwdriver = screwdriver
  end

  # The use_device method wraps the Screwdriver #drive method
  def use_device
    @screwdriver.drive
  end
end

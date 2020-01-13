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
end

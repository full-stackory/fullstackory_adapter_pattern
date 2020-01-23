require "fullstackory_adapter_pattern/version"
# This is an exercise section
# we lay out the spec but you have to fill it all in
class SectionCAdapterPattern
  def intro
    intro_text = <<-HEREDOC
      some c intro text
    HEREDOC
    puts intro_text
  end

  def use_our_original_adaptee
    # code here
  end

  def use_our_adapter
    # code here
  end

  def use_our_target_with_adapter
    # code here
  end
end


# The A class is the 'adaptee'
class A
  def some_function
    # code here
  end
end

# The B class is the 'Target'
class B
  def initialize(adapter)
    # code here
  end

  def a_function
    # code here
  end
end

# The C is the 'adapter'
class C
  def initialize(arg)
    # code
  end

  def a_function
    # code
  end
end

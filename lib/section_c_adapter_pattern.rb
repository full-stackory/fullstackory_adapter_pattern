require "fullstackory_adapter_pattern/version"
# This is an exercise section
# we lay out the some skeleton code but you have to fill it all in
class SectionCAdapterPattern
  def intro
    intro_text = <<-HEREDOC
      Now apply what you worked on in Section A and Section B
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


# The X class is the 'adaptee'
class X
  def some_function
    # code here
  end
end

# The Y class is the 'Target'
class Y
  def initialize(adapter)
    # code here
  end

  def a_given_function
    # code here
  end
end

# The Z is the 'adapter'
class Z
  def initialize(arg)
    # code
  end

  def a_given_function
    # code
  end
end

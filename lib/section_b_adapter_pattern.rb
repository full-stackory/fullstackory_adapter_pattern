require "fullstackory_adapter_pattern/version"
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
end

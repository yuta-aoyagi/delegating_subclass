require "delegating_subclass/version"

# A subclass delegating some methods to the given object
module DelegatingSubclass
  # @param [Class] superclass the superclass
  # @return [Class] a subclass of +superclass+
  def self.of(superclass, *_names)
    Class.new superclass do
      define_method :initialize do |delegated, *rest|
        super(*rest)
        @delegated = delegated
      end
    end
  end
end

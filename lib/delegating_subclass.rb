require "delegating_subclass/version"
require "forwardable"

# A subclass delegating some methods to the given object
module DelegatingSubclass
  # @param [Class] superclass the superclass
  # @param [Array<#to_s>] names the method names to delegate
  # @return [Class] a subclass of +superclass+
  def self.of(superclass, *names)
    Class.new superclass do
      extend Forwardable

      def_delegators :@delegated, *names

      define_method :initialize do |delegated, *rest|
        super(*rest)
        @delegated = delegated
      end
    end
  end
end

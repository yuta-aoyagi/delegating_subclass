require "delegating_subclass"

class WithInitialize
  attr_reader :value

  def initialize(value)
    @value = value
  end
end

RSpec.describe DelegatingSubclass do
  it "has a version number" do
    expect(DelegatingSubclass::VERSION).not_to be nil
  end

  describe ".of" do
    let(:returned_class) { described_class.of WithInitialize, :foo }

    it "returns a class whose ancestors array includes the argument" do
      expect(returned_class.ancestors).to include(WithInitialize)
    end

    it "returns a class having initialize that passes its arguments to the " \
       "super's initialize except the first one" do
      obj = returned_class.new :unused_first_argument, :argument
      expect(obj.value).to eq(:argument)
    end
  end
end

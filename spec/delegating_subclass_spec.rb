require "delegating_subclass"

class WithInitialize
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
  end
end

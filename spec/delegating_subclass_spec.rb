require "delegating_subclass"

RSpec.describe DelegatingSubclass do
  it "has a version number" do
    expect(DelegatingSubclass::VERSION).not_to be nil
  end
end

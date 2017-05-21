require "bundler/setup"
require "delegating_subclass"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

require "bundler/setup"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
  end

  config.warnings = true
  config.profile_examples = 10
  config.order = :random
end

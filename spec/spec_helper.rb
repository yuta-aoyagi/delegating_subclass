begin
  require "simplecov"
  SimpleCov.start "test_frameworks"
rescue LoadError => e
  warn "failed to load SimpleCov (#{e.class}) #{e}"
  e.backtrace.each { |l| warn l }
end

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

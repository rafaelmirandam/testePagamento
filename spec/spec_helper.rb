require 'httparty'
require 'faker'
require_relative 'helpers'

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Helpers

end

class Moip
    include HTTParty
    base_uri 'https://sandbox.moip.com.br/v2/'
end
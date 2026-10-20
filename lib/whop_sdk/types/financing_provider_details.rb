# frozen_string_literal: true

module Whop_sdk
  module Types
    class FinancingProviderDetails < Internal::Types::Model
      field :dispute_rate, -> { Integer }, optional: false, nullable: true

      field :dispute_rate_limit, -> { Integer }, optional: false, nullable: true

      field :source_provider, -> { Whop_sdk::Types::FinancingProviderDetailsSourceProvider }, optional: false, nullable: true
    end
  end
end

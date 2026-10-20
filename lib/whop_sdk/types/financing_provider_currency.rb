# frozen_string_literal: true

module Whop_sdk
  module Types
    class FinancingProviderCurrency < Internal::Types::Model
      field :currency, -> { Whop_sdk::Types::FinancingProviderCurrencyCurrency }, optional: false, nullable: false

      field :max_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true
    end
  end
end

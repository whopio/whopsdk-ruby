# frozen_string_literal: true

module Whop_sdk
  module Types
    class FinancingProvider < Internal::Types::Model
      field :action, -> { Whop_sdk::Types::FinancingProviderAction }, optional: false, nullable: true

      field :currencies, -> { Internal::Types::Array[Whop_sdk::Types::FinancingProviderCurrency] }, optional: false, nullable: false

      field :details, -> { Whop_sdk::Types::FinancingProviderDetails }, optional: false, nullable: true

      field :provider, -> { Whop_sdk::Types::FinancingProviderProvider }, optional: false, nullable: false

      field :provider_reviewed_at, -> { String }, optional: false, nullable: true

      field :reason, -> { Whop_sdk::Types::FinancingProviderReason }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::FinancingProviderStatus }, optional: false, nullable: false
    end
  end
end

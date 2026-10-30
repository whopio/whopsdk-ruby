# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountProcessingOfferLevel < Internal::Types::Model
      field :level, -> { Integer }, optional: false, nullable: false

      field :minimum_spend, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :processing_rate_percentage, -> { Integer }, optional: false, nullable: false

      field :regional_rates, -> { Internal::Types::Array[Whop_sdk::Types::AccountProcessingOfferRegionalRate] }, optional: false, nullable: false
    end
  end
end

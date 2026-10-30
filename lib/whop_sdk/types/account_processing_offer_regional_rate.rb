# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountProcessingOfferRegionalRate < Internal::Types::Model
      field :processing_rate_percentage, -> { Integer }, optional: false, nullable: false

      field :region, -> { Whop_sdk::Types::AccountProcessingOfferRegionalRateRegion }, optional: false, nullable: false
    end
  end
end

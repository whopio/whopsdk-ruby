# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountLevel < Internal::Types::Model
      field :boosted, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :current, -> { Integer }, optional: false, nullable: false

      field :levels, -> { Internal::Types::Array[Whop_sdk::Types::AccountProcessingOfferLevel] }, optional: false, nullable: false

      field :monthly_ads_spend, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :monthly_card_spend, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :monthly_qualifying_spend, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :monthly_trading_volume, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :points, -> { Integer }, optional: false, nullable: false

      field :points_by_source, -> { Whop_sdk::Types::OwnerLevelPoints }, optional: false, nullable: false

      field :points_to_next, -> { Integer }, optional: false, nullable: true

      field :processing_rate_percentage, -> { Integer }, optional: false, nullable: false

      field :resets_at, -> { String }, optional: false, nullable: false
    end
  end
end

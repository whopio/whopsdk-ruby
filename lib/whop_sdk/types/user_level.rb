# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserLevel < Internal::Types::Model
      field :applied_level, -> { Integer }, optional: false, nullable: false

      field :levels, -> { Internal::Types::Array[Whop_sdk::Types::AccountProcessingOfferLevel] }, optional: false, nullable: true

      field :monthly_ads_spend, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :monthly_card_spend, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :monthly_qualifying_spend, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :monthly_trading_volume, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :points, -> { Integer }, optional: false, nullable: true

      field :points_by_source, -> { Whop_sdk::Types::OwnerLevelPoints }, optional: false, nullable: true

      field :points_to_next, -> { Integer }, optional: false, nullable: true

      field :resets_at, -> { String }, optional: false, nullable: true
    end
  end
end

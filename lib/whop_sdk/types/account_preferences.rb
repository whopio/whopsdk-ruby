# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountPreferences < Internal::Types::Model
      field :ads_agreement, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :ads_payment_methods, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :ads_reporting_currency, -> { String }, optional: false, nullable: false

      field :ads_scheduling_timezone, -> { String }, optional: false, nullable: false

      field :ads_triple_whale_integration, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :cards_auto_top_up, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :dispute_fighter_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end

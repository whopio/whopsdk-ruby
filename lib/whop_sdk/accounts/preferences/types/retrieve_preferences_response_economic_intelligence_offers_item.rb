# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class RetrievePreferencesResponseEconomicIntelligenceOffersItem < Internal::Types::Model
          field :duration, -> { Integer }, optional: false, nullable: false

          field :duration_unit, -> { Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponseEconomicIntelligenceOffersItemDurationUnit }, optional: false, nullable: false

          field :fee_percentage, -> { Integer }, optional: false, nullable: false

          field :key, -> { Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponseEconomicIntelligenceOffersItemKey }, optional: false, nullable: false

          field :recommended, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end

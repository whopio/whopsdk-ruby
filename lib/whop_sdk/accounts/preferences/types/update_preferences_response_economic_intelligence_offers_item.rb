# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesResponseEconomicIntelligenceOffersItem < Internal::Types::Model
          field :duration_days, -> { Integer }, optional: false, nullable: false

          field :fee_percentage, -> { Integer }, optional: false, nullable: false

          field :recommended, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end

# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # The account's last Economic Intelligence period, once it has ended. `null` while Economic Intelligence is on,
        # or when it has never been on.
        class RetrievePreferencesResponseEconomicIntelligencePreviousPeriod < Internal::Types::Model
          field :ended_at, -> { String }, optional: false, nullable: false

          field :fee_percentage, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end

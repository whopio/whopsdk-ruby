# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesRequestAdsPaymentMethodsPrimary < Internal::Types::Model
          field :id, -> { String }, optional: true, nullable: false

          field :type, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsPaymentMethodsPrimaryType }, optional: false, nullable: false
        end
      end
    end
  end
end

# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # How the account pays for Whop Ads spend. `primary` is charged first; `backup` covers the charge when the
        # primary fails.
        class UpdatePreferencesRequestAdsPaymentMethods < Internal::Types::Model
          field :backup, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsPaymentMethodsBackup }, optional: true, nullable: false

          field :primary, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsPaymentMethodsPrimary }, optional: false, nullable: false
        end
      end
    end
  end
end

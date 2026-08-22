# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # How the account pays for Whop Ads spend. `primary` is charged first; `backup` covers the charge when the
        # primary fails. `null` until ads billing has been configured.
        class RetrievePreferencesResponseAdsPaymentMethods < Internal::Types::Model
          field :backup, -> { Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponseAdsPaymentMethodsBackup }, optional: false, nullable: true

          field :primary, -> { Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponseAdsPaymentMethodsPrimary }, optional: false, nullable: true
        end
      end
    end
  end
end

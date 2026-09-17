# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # How the account pays for Whop Ads spend. Requires `primary`; `backup` is optional and covers the charge when
        # the primary fails. Configuring a `card` requires a user token; account API keys can configure only
        # `platform_balance` sources.
        class UpdatePreferencesRequestAdsPaymentMethods < Internal::Types::Model
          field :backup, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsPaymentMethodsBackup }, optional: true, nullable: false

          field :primary, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsPaymentMethodsPrimary }, optional: false, nullable: false
        end
      end
    end
  end
end

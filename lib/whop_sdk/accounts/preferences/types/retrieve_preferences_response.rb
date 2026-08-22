# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class RetrievePreferencesResponse < Internal::Types::Model
          field :ads_agreement, -> { Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponseAdsAgreement }, optional: false, nullable: false

          field :ads_payment_methods, -> { Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponseAdsPaymentMethods }, optional: false, nullable: true

          field :ads_reporting_currency, -> { String }, optional: false, nullable: false

          field :ads_scheduling_timezone, -> { String }, optional: false, nullable: false

          field :ads_triple_whale_integration, -> { Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponseAdsTripleWhaleIntegration }, optional: false, nullable: false

          field :cards_auto_top_up, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :dispute_fighter_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end

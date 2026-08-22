# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :ads_payment_methods, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsPaymentMethods }, optional: true, nullable: false

          field :ads_reporting_currency, -> { String }, optional: true, nullable: false

          field :ads_scheduling_timezone, -> { String }, optional: true, nullable: false

          field :ads_triple_whale_integration, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsTripleWhaleIntegration }, optional: true, nullable: false

          field :cards_auto_top_up, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :dispute_fighter_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
        end
      end
    end
  end
end

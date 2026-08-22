# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # The account's Triple Whale integration, which pushes Whop ad spend to Triple Whale's Data-In API so it reports
        # as a `whop` channel.
        class UpdatePreferencesResponseAdsTripleWhaleIntegration < Internal::Types::Model
          field :masked_api_key, -> { String }, optional: false, nullable: true

          field :shop_domain, -> { String }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponseAdsTripleWhaleIntegrationStatus }, optional: false, nullable: false
        end
      end
    end
  end
end

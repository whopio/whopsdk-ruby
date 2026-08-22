# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # Connects or disconnects the Triple Whale integration. Requires a connected Shopify store, since Triple Whale
        # keys spend records by Shopify shop.
        class UpdatePreferencesRequestAdsTripleWhaleIntegration < Internal::Types::Model
          field :api_key, -> { String }, optional: false, nullable: true
        end
      end
    end
  end
end

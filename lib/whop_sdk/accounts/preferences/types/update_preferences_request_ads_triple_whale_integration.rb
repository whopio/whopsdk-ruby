# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # Connects or disconnects the Triple Whale integration. Requires the `ad_campaign:create` scope. Connecting
        # requires a shop domain to report spend against — either an explicit `shop_domain` (required for any merchant
        # without a connected Shopify store, e.g. WooCommerce, a custom checkout, or a white-label platform's merchant)
        # or a Shopify store connected on the Fulfillment page.
        class UpdatePreferencesRequestAdsTripleWhaleIntegration < Internal::Types::Model
          field :api_key, -> { String }, optional: false, nullable: true

          field :shop_domain, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end

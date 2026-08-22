# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        module RetrievePreferencesResponseAdsTripleWhaleIntegrationStatus
          extend Whop_sdk::Internal::Types::Enum

          CONNECTED = "connected"
          NOT_CONNECTED = "not_connected"
          REQUIRES_SHOPIFY_STORE = "requires_shopify_store"
        end
      end
    end
  end
end

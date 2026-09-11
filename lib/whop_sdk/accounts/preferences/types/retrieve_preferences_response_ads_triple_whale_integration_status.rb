# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        module RetrievePreferencesResponseAdsTripleWhaleIntegrationStatus
          extend Whop_sdk::Internal::Types::Enum

          CONNECTED = "connected"
          NOT_CONNECTED = "not_connected"
          REQUIRES_SHOP_DOMAIN = "requires_shop_domain"
        end
      end
    end
  end
end

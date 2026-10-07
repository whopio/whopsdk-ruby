# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # Connects or disconnects the Triple Whale integration, or changes the shop it reports to. Requires the
        # `ad_campaign:create` scope on your API key. Connecting requires a `shop_domain` to report spend against.
        class UpdatePreferencesRequestAdsTripleWhaleIntegration < Internal::Types::Model
          field :api_key, -> { String }, optional: true, nullable: false

          field :shop_domain, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end

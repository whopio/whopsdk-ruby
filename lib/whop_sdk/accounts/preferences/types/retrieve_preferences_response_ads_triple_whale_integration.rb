# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # The account's Triple Whale integration, which pushes Whop ad spend to Triple Whale's Data-In API so it reports
        # as a `whop` channel. Available to any Triple Whale customer — Shopify, WooCommerce, a custom checkout, or no
        # connected store — by setting `shop_domain` explicitly; Shopify merchants may instead rely on a connected
        # store's domain. Requires the `ad_campaign:create` scope. Once connected, ad click-through URLs Whop serves
        # carry `tw_source=whop` and `tw_adid=<ad id>` query parameters so Triple Whale's pixel attributes conversions
        # back to the originating ad — no destination URL changes are needed.
        class RetrievePreferencesResponseAdsTripleWhaleIntegration < Internal::Types::Model
          field :masked_api_key, -> { String }, optional: false, nullable: true

          field :shop_domain, -> { String }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponseAdsTripleWhaleIntegrationStatus }, optional: false, nullable: false
        end
      end
    end
  end
end

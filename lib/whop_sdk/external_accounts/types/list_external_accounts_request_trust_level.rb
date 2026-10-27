# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      module ListExternalAccountsRequestTrustLevel
        extend Whop_sdk::Internal::Types::Enum

        OAUTH = "oauth"
        API_KEY = "api_key"
        VERIFIED = "verified"
        AUTHORIZED = "authorized"
        CLAIMED = "claimed"
        SCRAPED = "scraped"
      end
    end
  end
end

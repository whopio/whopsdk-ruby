# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      module ListSocialAccountsRequestTrustLevel
        extend Whop_sdk::Internal::Types::Enum

        OAUTH = "oauth"
        VERIFIED = "verified"
        AUTHORIZED = "authorized"
        CLAIMED = "claimed"
        SCRAPED = "scraped"
      end
    end
  end
end

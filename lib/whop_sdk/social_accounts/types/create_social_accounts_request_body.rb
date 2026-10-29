# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class CreateSocialAccountsRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :platform

        member -> { Whop_sdk::SocialAccounts::Types::CreateSocialAccountsRequestBodyFacebook }, key: "FACEBOOK"

        member -> { Whop_sdk::SocialAccounts::Types::CreateSocialAccountsRequestBodyTiktok }, key: "TIKTOK"

        member -> { Whop_sdk::SocialAccounts::Types::CreateSocialAccountsRequestBodyKlaviyo }, key: "KLAVIYO"

        member -> { Whop_sdk::SocialAccounts::Types::CreateSocialAccountsRequestBodyAimerce }, key: "AIMERCE"
      end
    end
  end
end

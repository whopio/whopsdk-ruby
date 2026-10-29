# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      class CreateExternalAccountsRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :platform

        member -> { Whop_sdk::ExternalAccounts::Types::CreateExternalAccountsRequestBodyFacebook }, key: "FACEBOOK"

        member -> { Whop_sdk::ExternalAccounts::Types::CreateExternalAccountsRequestBodyTiktok }, key: "TIKTOK"

        member -> { Whop_sdk::ExternalAccounts::Types::CreateExternalAccountsRequestBodyKlaviyo }, key: "KLAVIYO"

        member -> { Whop_sdk::ExternalAccounts::Types::CreateExternalAccountsRequestBodyAimerce }, key: "AIMERCE"
      end
    end
  end
end

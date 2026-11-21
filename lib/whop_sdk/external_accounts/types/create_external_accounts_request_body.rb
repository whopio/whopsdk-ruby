# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      class CreateExternalAccountsRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :platform

        member -> { Whop_sdk::Types::CreateAimerceExternalAccount }, key: "AIMERCE"

        member -> { Whop_sdk::Types::CreateFacebookExternalAccount }, key: "FACEBOOK"

        member -> { Whop_sdk::Types::CreateKlaviyoExternalAccount }, key: "KLAVIYO"

        member -> { Whop_sdk::Types::CreateTiktokExternalAccount }, key: "TIKTOK"
      end
    end
  end
end

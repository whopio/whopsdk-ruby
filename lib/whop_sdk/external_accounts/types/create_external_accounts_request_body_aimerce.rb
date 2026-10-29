# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      # Connects the account's Aimerce shop with an API key and turns on the Aimerce tracking pixel. Requires the
      # `company:manage_checkout` scope instead of `social_account:create`.
      class CreateExternalAccountsRequestBodyAimerce < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_key, -> { String }, optional: false, nullable: false
      end
    end
  end
end

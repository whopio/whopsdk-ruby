# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      # Connects the account's existing Klaviyo account with a private API key.
      class CreateSocialAccountsRequestBodyKlaviyo < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_key, -> { String }, optional: false, nullable: false
      end
    end
  end
end

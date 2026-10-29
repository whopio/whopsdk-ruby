# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      # Connects the account's existing Klaviyo account with a private API key.
      class CreateExternalAccountsRequestBodyKlaviyo < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_key, -> { String }, optional: false, nullable: false
      end
    end
  end
end

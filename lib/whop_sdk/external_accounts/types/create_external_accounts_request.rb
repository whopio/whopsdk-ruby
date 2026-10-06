# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      class CreateExternalAccountsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::ExternalAccounts::Types::CreateExternalAccountsRequestPlatform }, optional: false, nullable: false
      end
    end
  end
end

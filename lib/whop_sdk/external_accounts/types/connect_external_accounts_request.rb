# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      class ConnectExternalAccountsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::ExternalAccounts::Types::ConnectExternalAccountsRequestPlatform }, optional: false, nullable: false

        field :redirect_url, -> { String }, optional: false, nullable: false
      end
    end
  end
end

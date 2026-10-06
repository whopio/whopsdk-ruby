# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      class ListExternalAccountsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestPlatform }, optional: true, nullable: false

        field :trust_level, -> { Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestTrustLevel }, optional: true, nullable: false

        field :verified, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :scopes, -> { Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestScopesItem }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestDirection }, optional: true, nullable: false
      end
    end
  end
end

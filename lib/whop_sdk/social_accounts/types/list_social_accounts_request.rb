# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class ListSocialAccountsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::SocialAccounts::Types::ListSocialAccountsRequestPlatform }, optional: true, nullable: false

        field :verified, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :scopes, -> { Whop_sdk::SocialAccounts::Types::ListSocialAccountsRequestScopesItem }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::SocialAccounts::Types::ListSocialAccountsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::SocialAccounts::Types::ListSocialAccountsRequestDirection }, optional: true, nullable: false
      end
    end
  end
end

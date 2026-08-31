# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class ConnectSocialAccountsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::SocialAccounts::Types::ConnectSocialAccountsRequestPlatform }, optional: false, nullable: false

        field :redirect_url, -> { String }, optional: false, nullable: false

        field :scopes, -> { Internal::Types::Array[Whop_sdk::SocialAccounts::Types::ConnectSocialAccountsRequestScopesItem] }, optional: true, nullable: false
      end
    end
  end
end

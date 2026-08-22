# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class CreateSocialAccountsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::SocialAccounts::Types::CreateSocialAccountsRequestPlatform }, optional: false, nullable: false
      end
    end
  end
end

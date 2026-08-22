# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class PostsSocialAccountsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::SocialAccountPost] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::SocialAccounts::Types::PostsSocialAccountsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end

# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class PostsSocialAccountsResponsePageInfo < Internal::Types::Model
        field :end_cursor, -> { String }, optional: false, nullable: true

        field :has_next_page, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end

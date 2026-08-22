# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class ConnectSocialAccountsResponse < Internal::Types::Model
        field :authorize_url, -> { String }, optional: false, nullable: false
      end
    end
  end
end

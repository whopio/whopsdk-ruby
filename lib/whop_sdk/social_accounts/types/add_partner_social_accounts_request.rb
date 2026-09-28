# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class AddPartnerSocialAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :username, -> { String }, optional: false, nullable: false
      end
    end
  end
end

# frozen_string_literal: true

module Whop_sdk
  module SocialAccounts
    module Types
      class LeadFormsSocialAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end

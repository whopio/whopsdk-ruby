# frozen_string_literal: true

module Whop_sdk
  module PayoutAccounts
    module Types
      class RetrievePayoutAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end

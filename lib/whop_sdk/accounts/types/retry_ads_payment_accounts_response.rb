# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class RetryAdsPaymentAccountsResponse < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :queued, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end

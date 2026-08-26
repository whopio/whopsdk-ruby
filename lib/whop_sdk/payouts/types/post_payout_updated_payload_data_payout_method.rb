# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # The saved payout method used. Requires payout:destination:read; null without it.
      class PostPayoutUpdatedPayloadDataPayoutMethod < Internal::Types::Model
        field :nickname, -> { String }, optional: false, nullable: true

        field :supported_payout_method, -> { Whop_sdk::Payouts::Types::PostPayoutUpdatedPayloadDataPayoutMethodSupportedPayoutMethod }, optional: false, nullable: true
      end
    end
  end
end

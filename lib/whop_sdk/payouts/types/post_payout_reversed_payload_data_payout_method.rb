# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # The saved payout method used. Requires payout:destination:read; null without it.
      class PostPayoutReversedPayloadDataPayoutMethod < Internal::Types::Model
        field :nickname, -> { String }, optional: false, nullable: true

        field :supported_payout_method, -> { Whop_sdk::Payouts::Types::PostPayoutReversedPayloadDataPayoutMethodSupportedPayoutMethod }, optional: false, nullable: true

        field :type, -> { Whop_sdk::Payouts::Types::PostPayoutReversedPayloadDataPayoutMethodType }, optional: false, nullable: false
      end
    end
  end
end

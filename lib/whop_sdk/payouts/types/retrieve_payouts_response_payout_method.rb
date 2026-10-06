# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # Payout method display details. The nickname requires payout:destination:read on the owning ledger; otherwise it
      # is null.
      class RetrievePayoutsResponsePayoutMethod < Internal::Types::Model
        field :nickname, -> { String }, optional: false, nullable: true

        field :supported_payout_method, -> { Whop_sdk::Payouts::Types::RetrievePayoutsResponsePayoutMethodSupportedPayoutMethod }, optional: false, nullable: true
      end
    end
  end
end

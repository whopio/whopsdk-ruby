# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # Why the payout ended without paying, or why it reversed after settlement. Present on failed, canceled, denied,
      # and reversed payouts; `null` otherwise.
      class RetrievePayoutsResponseFailure < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: true

        field :funds_returned_at, -> { String }, optional: false, nullable: true

        field :message, -> { String }, optional: false, nullable: true
      end
    end
  end
end

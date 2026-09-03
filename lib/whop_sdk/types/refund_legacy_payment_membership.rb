# frozen_string_literal: true

module Whop_sdk
  module Types
    # The membership attached to this payment.
    class RefundLegacyPaymentMembership < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::MembershipStatus }, optional: false, nullable: false
    end
  end
end

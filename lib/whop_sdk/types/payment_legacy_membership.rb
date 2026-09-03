# frozen_string_literal: true

module Whop_sdk
  module Types
    # The membership attached to this payment.
    class PaymentLegacyMembership < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :phone_number, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::MembershipStatus }, optional: false, nullable: false
    end
  end
end

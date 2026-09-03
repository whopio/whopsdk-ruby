# frozen_string_literal: true

module Whop_sdk
  module Types
    module RefundReason
      extend Whop_sdk::Internal::Types::Enum

      DUPLICATE = "duplicate"
      FRAUDULENT = "fraudulent"
      REQUESTED_BY_CUSTOMER = "requested_by_customer"
      EXPIRED_UNCAPTURED_CHARGE = "expired_uncaptured_charge"
    end
  end
end

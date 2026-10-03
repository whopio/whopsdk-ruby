# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentQuoteTaxStatus
      extend Whop_sdk::Internal::Types::Enum

      CALCULATED = "calculated"
      NOT_APPLICABLE = "not_applicable"
      UNAVAILABLE = "unavailable"
    end
  end
end

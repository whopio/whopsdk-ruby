# frozen_string_literal: true

module Whop_sdk
  module Types
    module CardFundingTypes
      extend Whop_sdk::Internal::Types::Enum

      CREDIT = "credit"
      DEBIT = "debit"
      PREPAID = "prepaid"
    end
  end
end

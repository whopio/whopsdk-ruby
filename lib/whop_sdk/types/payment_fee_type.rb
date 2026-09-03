# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentFeeType
      extend Whop_sdk::Internal::Types::Enum

      WHOP_FEE = "whop_fee"
      PROCESSING_FEE = "processing_fee"
      AFFILIATE_PROGRAM_FEE = "affiliate_program_fee"
      OTHER_FEE = "other_fee"
    end
  end
end

# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountReserveTypeType
      extend Whop_sdk::Internal::Types::Enum

      REGULAR = "regular"
      BNPL = "bnpl"
      SEQURA = "sequra"
      FRAUD_HOLD = "fraud_hold"
      PRESHIPMENT_HOLD = "preshipment_hold"
    end
  end
end

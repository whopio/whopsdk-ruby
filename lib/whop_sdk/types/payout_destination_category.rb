# frozen_string_literal: true

module Whop_sdk
  module Types
    module PayoutDestinationCategory
      extend Whop_sdk::Internal::Types::Enum

      CRYPTO = "crypto"
      RTP = "rtp"
      NEXT_DAY_BANK = "next_day_bank"
      BANK_WIRE = "bank_wire"
      DIGITAL_WALLET = "digital_wallet"
      UNKNOWN = "unknown"
    end
  end
end

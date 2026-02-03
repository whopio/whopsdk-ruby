# frozen_string_literal: true

module WhopSDK
  module Models
    # The category of a payout destination.
    module PayoutDestinationCategory
      extend WhopSDK::Internal::Type::Enum

      CRYPTO = :crypto
      RTP = :rtp
      NEXT_DAY_BANK = :next_day_bank
      BANK_WIRE = :bank_wire
      DIGITAL_WALLET = :digital_wallet
      UNKNOWN = :unknown

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

# frozen_string_literal: true

module WhopSDK
  module Models
    # The types of fee markups that can be configured
    module FeeMarkupType
      extend WhopSDK::Internal::Type::Enum

      CRYPTO_WITHDRAWAL_MARKUP = :crypto_withdrawal_markup
      RTP_WITHDRAWAL_MARKUP = :rtp_withdrawal_markup
      NEXT_DAY_BANK_WITHDRAWAL_MARKUP = :next_day_bank_withdrawal_markup
      BANK_WIRE_WITHDRAWAL_MARKUP = :bank_wire_withdrawal_markup
      DIGITAL_WALLET_WITHDRAWAL_MARKUP = :digital_wallet_withdrawal_markup

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end

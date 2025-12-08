# typed: strong

module WhopSDK
  module Models
    # The types of fee markups that can be configured
    module FeeMarkupType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::FeeMarkupType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CRYPTO_WITHDRAWAL_MARKUP =
        T.let(:crypto_withdrawal_markup, WhopSDK::FeeMarkupType::TaggedSymbol)
      RTP_WITHDRAWAL_MARKUP =
        T.let(:rtp_withdrawal_markup, WhopSDK::FeeMarkupType::TaggedSymbol)
      NEXT_DAY_BANK_WITHDRAWAL_MARKUP =
        T.let(
          :next_day_bank_withdrawal_markup,
          WhopSDK::FeeMarkupType::TaggedSymbol
        )
      BANK_WIRE_WITHDRAWAL_MARKUP =
        T.let(
          :bank_wire_withdrawal_markup,
          WhopSDK::FeeMarkupType::TaggedSymbol
        )
      DIGITAL_WALLET_WITHDRAWAL_MARKUP =
        T.let(
          :digital_wallet_withdrawal_markup,
          WhopSDK::FeeMarkupType::TaggedSymbol
        )

      sig { override.returns(T::Array[WhopSDK::FeeMarkupType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

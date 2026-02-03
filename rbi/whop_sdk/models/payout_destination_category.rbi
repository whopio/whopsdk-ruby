# typed: strong

module WhopSDK
  module Models
    # The category of a payout destination.
    module PayoutDestinationCategory
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::PayoutDestinationCategory) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CRYPTO = T.let(:crypto, WhopSDK::PayoutDestinationCategory::TaggedSymbol)
      RTP = T.let(:rtp, WhopSDK::PayoutDestinationCategory::TaggedSymbol)
      NEXT_DAY_BANK =
        T.let(:next_day_bank, WhopSDK::PayoutDestinationCategory::TaggedSymbol)
      BANK_WIRE =
        T.let(:bank_wire, WhopSDK::PayoutDestinationCategory::TaggedSymbol)
      DIGITAL_WALLET =
        T.let(:digital_wallet, WhopSDK::PayoutDestinationCategory::TaggedSymbol)
      UNKNOWN =
        T.let(:unknown, WhopSDK::PayoutDestinationCategory::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::PayoutDestinationCategory::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

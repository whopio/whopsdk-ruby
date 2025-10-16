# typed: strong

module WhopSDK
  module Models
    # The friendly status of a receipt
    module FriendlyReceiptStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::FriendlyReceiptStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AUTO_REFUNDED =
        T.let(:auto_refunded, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      REFUNDED = T.let(:refunded, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      PARTIALLY_REFUNDED =
        T.let(:partially_refunded, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      DISPUTE_WARNING =
        T.let(:dispute_warning, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      OPEN_RESOLUTION =
        T.let(:open_resolution, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      OPEN_DISPUTE =
        T.let(:open_dispute, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      FAILED = T.let(:failed, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      PRICE_TOO_LOW =
        T.let(:price_too_low, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      SUCCEEDED =
        T.let(:succeeded, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      DRAFTED = T.let(:drafted, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      UNCOLLECTIBLE =
        T.let(:uncollectible, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      UNRESOLVED =
        T.let(:unresolved, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      PAST_DUE = T.let(:past_due, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      PENDING = T.let(:pending, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      INCOMPLETE =
        T.let(:incomplete, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::FriendlyReceiptStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

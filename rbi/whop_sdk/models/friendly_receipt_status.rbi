# typed: strong

module WhopSDK
  module Models
    # The friendly status of a receipt
    module FriendlyReceiptStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::FriendlyReceiptStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SUCCEEDED =
        T.let(:succeeded, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      PENDING = T.let(:pending, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      FAILED = T.let(:failed, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      PAST_DUE = T.let(:past_due, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      PRICE_TOO_LOW =
        T.let(:price_too_low, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      UNCOLLECTIBLE =
        T.let(:uncollectible, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      REFUNDED = T.let(:refunded, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      AUTO_REFUNDED =
        T.let(:auto_refunded, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      PARTIALLY_REFUNDED =
        T.let(:partially_refunded, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      DISPUTE_WARNING =
        T.let(:dispute_warning, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      DISPUTE_NEEDS_RESPONSE =
        T.let(
          :dispute_needs_response,
          WhopSDK::FriendlyReceiptStatus::TaggedSymbol
        )
      DISPUTE_WARNING_NEEDS_RESPONSE =
        T.let(
          :dispute_warning_needs_response,
          WhopSDK::FriendlyReceiptStatus::TaggedSymbol
        )
      RESOLUTION_NEEDS_RESPONSE =
        T.let(
          :resolution_needs_response,
          WhopSDK::FriendlyReceiptStatus::TaggedSymbol
        )
      DISPUTE_UNDER_REVIEW =
        T.let(
          :dispute_under_review,
          WhopSDK::FriendlyReceiptStatus::TaggedSymbol
        )
      DISPUTE_WARNING_UNDER_REVIEW =
        T.let(
          :dispute_warning_under_review,
          WhopSDK::FriendlyReceiptStatus::TaggedSymbol
        )
      RESOLUTION_UNDER_REVIEW =
        T.let(
          :resolution_under_review,
          WhopSDK::FriendlyReceiptStatus::TaggedSymbol
        )
      DISPUTE_WON =
        T.let(:dispute_won, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      DISPUTE_WARNING_CLOSED =
        T.let(
          :dispute_warning_closed,
          WhopSDK::FriendlyReceiptStatus::TaggedSymbol
        )
      RESOLUTION_WON =
        T.let(:resolution_won, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      DISPUTE_LOST =
        T.let(:dispute_lost, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      DISPUTE_CLOSED =
        T.let(:dispute_closed, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      RESOLUTION_LOST =
        T.let(:resolution_lost, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      DRAFTED = T.let(:drafted, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      INCOMPLETE =
        T.let(:incomplete, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      UNRESOLVED =
        T.let(:unresolved, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      OPEN_DISPUTE =
        T.let(:open_dispute, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)
      OPEN_RESOLUTION =
        T.let(:open_resolution, WhopSDK::FriendlyReceiptStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::FriendlyReceiptStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

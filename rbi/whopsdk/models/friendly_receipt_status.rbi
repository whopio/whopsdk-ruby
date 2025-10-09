# typed: strong

module Whopsdk
  module Models
    # The friendly status of a receipt
    module FriendlyReceiptStatus
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Whopsdk::FriendlyReceiptStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AUTO_REFUNDED =
        T.let(:auto_refunded, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      REFUNDED = T.let(:refunded, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      PARTIALLY_REFUNDED =
        T.let(:partially_refunded, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      DISPUTE_WARNING =
        T.let(:dispute_warning, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      OPEN_RESOLUTION =
        T.let(:open_resolution, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      OPEN_DISPUTE =
        T.let(:open_dispute, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      FAILED = T.let(:failed, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      PRICE_TOO_LOW =
        T.let(:price_too_low, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      SUCCEEDED =
        T.let(:succeeded, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      DRAFTED = T.let(:drafted, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      UNCOLLECTIBLE =
        T.let(:uncollectible, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      UNRESOLVED =
        T.let(:unresolved, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      PAST_DUE = T.let(:past_due, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      PENDING = T.let(:pending, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      INCOMPLETE =
        T.let(:incomplete, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, Whopsdk::FriendlyReceiptStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::FriendlyReceiptStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

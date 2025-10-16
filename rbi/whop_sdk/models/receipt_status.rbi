# typed: strong

module WhopSDK
  module Models
    # The status of a receipt
    module ReceiptStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ReceiptStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFT = T.let(:draft, WhopSDK::ReceiptStatus::TaggedSymbol)
      OPEN = T.let(:open, WhopSDK::ReceiptStatus::TaggedSymbol)
      PAID = T.let(:paid, WhopSDK::ReceiptStatus::TaggedSymbol)
      PENDING = T.let(:pending, WhopSDK::ReceiptStatus::TaggedSymbol)
      UNCOLLECTIBLE =
        T.let(:uncollectible, WhopSDK::ReceiptStatus::TaggedSymbol)
      UNRESOLVED = T.let(:unresolved, WhopSDK::ReceiptStatus::TaggedSymbol)
      VOID = T.let(:void, WhopSDK::ReceiptStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::ReceiptStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

# typed: strong

module Whopsdk
  module Models
    # The status of a receipt
    module ReceiptStatus
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::ReceiptStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFT = T.let(:draft, Whopsdk::ReceiptStatus::TaggedSymbol)
      OPEN = T.let(:open, Whopsdk::ReceiptStatus::TaggedSymbol)
      PAID = T.let(:paid, Whopsdk::ReceiptStatus::TaggedSymbol)
      PENDING = T.let(:pending, Whopsdk::ReceiptStatus::TaggedSymbol)
      UNCOLLECTIBLE =
        T.let(:uncollectible, Whopsdk::ReceiptStatus::TaggedSymbol)
      UNRESOLVED = T.let(:unresolved, Whopsdk::ReceiptStatus::TaggedSymbol)
      VOID = T.let(:void, Whopsdk::ReceiptStatus::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::ReceiptStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

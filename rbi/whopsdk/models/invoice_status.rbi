# typed: strong

module Whopsdk
  module Models
    # The different statuses an invoice can be in
    module InvoiceStatus
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::InvoiceStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      OPEN = T.let(:open, Whopsdk::InvoiceStatus::TaggedSymbol)
      PAID = T.let(:paid, Whopsdk::InvoiceStatus::TaggedSymbol)
      PAST_DUE = T.let(:past_due, Whopsdk::InvoiceStatus::TaggedSymbol)
      VOID = T.let(:void, Whopsdk::InvoiceStatus::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::InvoiceStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

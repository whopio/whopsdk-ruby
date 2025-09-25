# typed: strong

module Whopsdk
  module Models
    # The method of collection for an invoice.
    module CollectionMethod
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::CollectionMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SEND_INVOICE =
        T.let(:send_invoice, Whopsdk::CollectionMethod::TaggedSymbol)
      CHARGE_AUTOMATICALLY =
        T.let(:charge_automatically, Whopsdk::CollectionMethod::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::CollectionMethod::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

# typed: strong

module WhopSDK
  module Models
    # The method of collection for an invoice.
    module CollectionMethod
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CollectionMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SEND_INVOICE =
        T.let(:send_invoice, WhopSDK::CollectionMethod::TaggedSymbol)
      CHARGE_AUTOMATICALLY =
        T.let(:charge_automatically, WhopSDK::CollectionMethod::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::CollectionMethod::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

# typed: strong

module WhopSDK
  module Models
    # The type of tax inclusivity applied to the receipt, for determining whether the
    # tax is included in the final price, or paid on top.
    module ReceiptTaxBehavior
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ReceiptTaxBehavior) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EXCLUSIVE = T.let(:exclusive, WhopSDK::ReceiptTaxBehavior::TaggedSymbol)
      INCLUSIVE = T.let(:inclusive, WhopSDK::ReceiptTaxBehavior::TaggedSymbol)
      UNSPECIFIED =
        T.let(:unspecified, WhopSDK::ReceiptTaxBehavior::TaggedSymbol)
      UNABLE_TO_COLLECT =
        T.let(:unable_to_collect, WhopSDK::ReceiptTaxBehavior::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::ReceiptTaxBehavior::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

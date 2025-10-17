# typed: strong

module WhopSDK
  module Models
    # Whether or not the tax is included in a plan's price (or if it hasn't been set
    # up)
    module TaxType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::TaxType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INCLUSIVE = T.let(:inclusive, WhopSDK::TaxType::TaggedSymbol)
      EXCLUSIVE = T.let(:exclusive, WhopSDK::TaxType::TaggedSymbol)
      UNSPECIFIED = T.let(:unspecified, WhopSDK::TaxType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::TaxType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

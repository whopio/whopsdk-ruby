# typed: strong

module WhopSDK
  module Models
    # The different border-radius styles available for checkout pages.
    module CheckoutShape
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CheckoutShape) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ROUNDED = T.let(:rounded, WhopSDK::CheckoutShape::TaggedSymbol)
      PILL = T.let(:pill, WhopSDK::CheckoutShape::TaggedSymbol)
      RECTANGULAR = T.let(:rectangular, WhopSDK::CheckoutShape::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::CheckoutShape::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

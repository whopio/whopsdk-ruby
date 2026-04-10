# typed: strong

module WhopSDK
  module Models
    # The different font families available for checkout pages.
    module CheckoutFont
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CheckoutFont) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SYSTEM = T.let(:system, WhopSDK::CheckoutFont::TaggedSymbol)
      ROBOTO = T.let(:roboto, WhopSDK::CheckoutFont::TaggedSymbol)
      OPEN_SANS = T.let(:open_sans, WhopSDK::CheckoutFont::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::CheckoutFont::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

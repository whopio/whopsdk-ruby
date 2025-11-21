# typed: strong

module WhopSDK
  module Models
    # The different modes a checkout can be set to.
    module CheckoutModes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CheckoutModes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PAYMENT = T.let(:payment, WhopSDK::CheckoutModes::TaggedSymbol)
      SETUP = T.let(:setup, WhopSDK::CheckoutModes::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::CheckoutModes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

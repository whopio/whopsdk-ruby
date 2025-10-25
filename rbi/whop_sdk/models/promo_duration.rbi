# typed: strong

module WhopSDK
  module Models
    # The duration setting for the promo code
    module PromoDuration
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::PromoDuration) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      FOREVER = T.let(:forever, WhopSDK::PromoDuration::TaggedSymbol)
      ONCE = T.let(:once, WhopSDK::PromoDuration::TaggedSymbol)
      REPEATING = T.let(:repeating, WhopSDK::PromoDuration::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::PromoDuration::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

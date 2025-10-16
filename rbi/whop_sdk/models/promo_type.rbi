# typed: strong

module WhopSDK
  module Models
    # The type of promo code used to discount a plan
    module PromoType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::PromoType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PERCENTAGE = T.let(:percentage, WhopSDK::PromoType::TaggedSymbol)
      FLAT_AMOUNT = T.let(:flat_amount, WhopSDK::PromoType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::PromoType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

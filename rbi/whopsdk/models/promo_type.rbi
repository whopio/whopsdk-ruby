# typed: strong

module Whopsdk
  module Models
    # The type of promo code used to discount a plan
    module PromoType
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::PromoType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PERCENTAGE = T.let(:percentage, Whopsdk::PromoType::TaggedSymbol)
      FLAT_AMOUNT = T.let(:flat_amount, Whopsdk::PromoType::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::PromoType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

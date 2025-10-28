# typed: strong

module WhopSDK
  module Models
    # Statuses for promo codes
    module PromoCodeStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::PromoCodeStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, WhopSDK::PromoCodeStatus::TaggedSymbol)
      INACTIVE = T.let(:inactive, WhopSDK::PromoCodeStatus::TaggedSymbol)
      ARCHIVED = T.let(:archived, WhopSDK::PromoCodeStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::PromoCodeStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

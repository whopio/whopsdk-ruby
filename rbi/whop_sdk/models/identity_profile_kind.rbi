# typed: strong

module WhopSDK
  module Models
    # The kind of identity profile (individual vs business).
    module IdentityProfileKind
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::IdentityProfileKind) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INDIVIDUAL =
        T.let(:individual, WhopSDK::IdentityProfileKind::TaggedSymbol)
      BUSINESS = T.let(:business, WhopSDK::IdentityProfileKind::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::IdentityProfileKind::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

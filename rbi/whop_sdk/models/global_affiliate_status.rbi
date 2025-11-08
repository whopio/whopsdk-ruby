# typed: strong

module WhopSDK
  module Models
    # The different statuses of the global affiliate program for a product.
    module GlobalAffiliateStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::GlobalAffiliateStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ENABLED = T.let(:enabled, WhopSDK::GlobalAffiliateStatus::TaggedSymbol)
      DISABLED = T.let(:disabled, WhopSDK::GlobalAffiliateStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::GlobalAffiliateStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

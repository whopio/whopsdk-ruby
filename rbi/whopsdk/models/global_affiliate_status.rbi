# typed: strong

module Whopsdk
  module Models
    # The different statuses of the global affiliate program for an access pass.
    module GlobalAffiliateStatus
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Whopsdk::GlobalAffiliateStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ENABLED = T.let(:enabled, Whopsdk::GlobalAffiliateStatus::TaggedSymbol)
      DISABLED = T.let(:disabled, Whopsdk::GlobalAffiliateStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::GlobalAffiliateStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

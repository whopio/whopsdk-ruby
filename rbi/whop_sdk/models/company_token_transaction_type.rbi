# typed: strong

module WhopSDK
  module Models
    # The type of token transaction
    module CompanyTokenTransactionType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::CompanyTokenTransactionType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ADD = T.let(:add, WhopSDK::CompanyTokenTransactionType::TaggedSymbol)
      SUBTRACT =
        T.let(:subtract, WhopSDK::CompanyTokenTransactionType::TaggedSymbol)
      TRANSFER =
        T.let(:transfer, WhopSDK::CompanyTokenTransactionType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::CompanyTokenTransactionType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

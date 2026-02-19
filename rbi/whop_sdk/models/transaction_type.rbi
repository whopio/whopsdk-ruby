# typed: strong

module WhopSDK
  module Models
    # The type of token transaction
    module TransactionType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::TransactionType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ADD = T.let(:add, WhopSDK::TransactionType::TaggedSymbol)
      SUBTRACT = T.let(:subtract, WhopSDK::TransactionType::TaggedSymbol)
      TRANSFER = T.let(:transfer, WhopSDK::TransactionType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::TransactionType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

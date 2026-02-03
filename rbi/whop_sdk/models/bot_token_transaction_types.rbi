# typed: strong

module WhopSDK
  module Models
    # The type of token transaction
    module BotTokenTransactionTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::BotTokenTransactionTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ADD = T.let(:add, WhopSDK::BotTokenTransactionTypes::TaggedSymbol)
      SUBTRACT =
        T.let(:subtract, WhopSDK::BotTokenTransactionTypes::TaggedSymbol)
      TRANSFER =
        T.let(:transfer, WhopSDK::BotTokenTransactionTypes::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::BotTokenTransactionTypes::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

# typed: strong

module WhopSDK
  module Models
    # The types of withdrawals
    module WithdrawalTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WithdrawalTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REGULAR = T.let(:regular, WhopSDK::WithdrawalTypes::TaggedSymbol)
      CLAWBACK = T.let(:clawback, WhopSDK::WithdrawalTypes::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::WithdrawalTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

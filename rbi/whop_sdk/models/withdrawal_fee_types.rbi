# typed: strong

module WhopSDK
  module Models
    # The different fee types for a withdrawal.
    module WithdrawalFeeTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WithdrawalFeeTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EXCLUSIVE = T.let(:exclusive, WhopSDK::WithdrawalFeeTypes::TaggedSymbol)
      INCLUSIVE = T.let(:inclusive, WhopSDK::WithdrawalFeeTypes::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::WithdrawalFeeTypes::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

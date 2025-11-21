# typed: strong

module WhopSDK
  module Models
    # The different speeds of withdrawals
    module WithdrawalSpeeds
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WithdrawalSpeeds) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      STANDARD = T.let(:standard, WhopSDK::WithdrawalSpeeds::TaggedSymbol)
      INSTANT = T.let(:instant, WhopSDK::WithdrawalSpeeds::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::WithdrawalSpeeds::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

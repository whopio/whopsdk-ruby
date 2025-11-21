# typed: strong

module WhopSDK
  module Models
    # The status of a withdrawal request
    module WithdrawalStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WithdrawalStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REQUESTED = T.let(:requested, WhopSDK::WithdrawalStatus::TaggedSymbol)
      AWAITING_PAYMENT =
        T.let(:awaiting_payment, WhopSDK::WithdrawalStatus::TaggedSymbol)
      IN_TRANSIT = T.let(:in_transit, WhopSDK::WithdrawalStatus::TaggedSymbol)
      COMPLETED = T.let(:completed, WhopSDK::WithdrawalStatus::TaggedSymbol)
      FAILED = T.let(:failed, WhopSDK::WithdrawalStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, WhopSDK::WithdrawalStatus::TaggedSymbol)
      DENIED = T.let(:denied, WhopSDK::WithdrawalStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::WithdrawalStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

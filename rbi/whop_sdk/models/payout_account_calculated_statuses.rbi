# typed: strong

module WhopSDK
  module Models
    # The granular calculated statuses reflecting payout account KYC and withdrawal
    # readiness.
    module PayoutAccountCalculatedStatuses
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::PayoutAccountCalculatedStatuses) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CONNECTED =
        T.let(
          :connected,
          WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol
        )
      DISABLED =
        T.let(:disabled, WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol)
      ACTION_REQUIRED =
        T.let(
          :action_required,
          WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol
        )
      PENDING_VERIFICATION =
        T.let(
          :pending_verification,
          WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol
        )
      VERIFICATION_FAILED =
        T.let(
          :verification_failed,
          WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol
        )
      NOT_STARTED =
        T.let(
          :not_started,
          WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[WhopSDK::PayoutAccountCalculatedStatuses::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end

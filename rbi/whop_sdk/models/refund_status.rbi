# typed: strong

module WhopSDK
  module Models
    # The different statuses for a Refund object
    module RefundStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::RefundStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, WhopSDK::RefundStatus::TaggedSymbol)
      REQUIRES_ACTION =
        T.let(:requires_action, WhopSDK::RefundStatus::TaggedSymbol)
      SUCCEEDED = T.let(:succeeded, WhopSDK::RefundStatus::TaggedSymbol)
      FAILED = T.let(:failed, WhopSDK::RefundStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, WhopSDK::RefundStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::RefundStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

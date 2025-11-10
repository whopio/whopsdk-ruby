# typed: strong

module WhopSDK
  module Models
    # The possible statuses of a dispute
    module DisputeStatuses
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::DisputeStatuses) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      WARNING_NEEDS_RESPONSE =
        T.let(:warning_needs_response, WhopSDK::DisputeStatuses::TaggedSymbol)
      WARNING_UNDER_REVIEW =
        T.let(:warning_under_review, WhopSDK::DisputeStatuses::TaggedSymbol)
      WARNING_CLOSED =
        T.let(:warning_closed, WhopSDK::DisputeStatuses::TaggedSymbol)
      NEEDS_RESPONSE =
        T.let(:needs_response, WhopSDK::DisputeStatuses::TaggedSymbol)
      UNDER_REVIEW =
        T.let(:under_review, WhopSDK::DisputeStatuses::TaggedSymbol)
      WON = T.let(:won, WhopSDK::DisputeStatuses::TaggedSymbol)
      LOST = T.let(:lost, WhopSDK::DisputeStatuses::TaggedSymbol)
      CLOSED = T.let(:closed, WhopSDK::DisputeStatuses::TaggedSymbol)
      OTHER = T.let(:other, WhopSDK::DisputeStatuses::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::DisputeStatuses::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

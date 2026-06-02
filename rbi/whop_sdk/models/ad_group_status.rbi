# typed: strong

module WhopSDK
  module Models
    # The status of an external ad group.
    module AdGroupStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AdGroupStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, WhopSDK::AdGroupStatus::TaggedSymbol)
      PAUSED = T.let(:paused, WhopSDK::AdGroupStatus::TaggedSymbol)
      INACTIVE = T.let(:inactive, WhopSDK::AdGroupStatus::TaggedSymbol)
      IN_REVIEW = T.let(:in_review, WhopSDK::AdGroupStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, WhopSDK::AdGroupStatus::TaggedSymbol)
      FLAGGED = T.let(:flagged, WhopSDK::AdGroupStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::AdGroupStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end

# typed: strong

module WhopSDK
  module Models
    # The status of an external ad.
    module ExternalAdStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ExternalAdStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, WhopSDK::ExternalAdStatus::TaggedSymbol)
      PAUSED = T.let(:paused, WhopSDK::ExternalAdStatus::TaggedSymbol)
      INACTIVE = T.let(:inactive, WhopSDK::ExternalAdStatus::TaggedSymbol)
      IN_REVIEW = T.let(:in_review, WhopSDK::ExternalAdStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, WhopSDK::ExternalAdStatus::TaggedSymbol)
      FLAGGED = T.let(:flagged, WhopSDK::ExternalAdStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::ExternalAdStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

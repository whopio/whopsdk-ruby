# typed: strong

module WhopSDK
  module Models
    # The status of an ad campaign.
    module AdCampaignStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AdCampaignStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, WhopSDK::AdCampaignStatus::TaggedSymbol)
      PAUSED = T.let(:paused, WhopSDK::AdCampaignStatus::TaggedSymbol)
      PAYMENT_FAILED =
        T.let(:payment_failed, WhopSDK::AdCampaignStatus::TaggedSymbol)
      DRAFT = T.let(:draft, WhopSDK::AdCampaignStatus::TaggedSymbol)
      IN_REVIEW = T.let(:in_review, WhopSDK::AdCampaignStatus::TaggedSymbol)
      FLAGGED = T.let(:flagged, WhopSDK::AdCampaignStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::AdCampaignStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end

# typed: strong

module WhopSDK
  module Models
    class AdListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AdListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for this ad.
      sig { returns(String) }
      attr_accessor :id

      # When the ad was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this ad is running on (e.g., meta, tiktok).
      sig { returns(WhopSDK::AdCampaignPlatform::TaggedSymbol) }
      attr_accessor :platform

      # Current delivery status of the ad.
      sig { returns(WhopSDK::ExternalAdStatus::TaggedSymbol) }
      attr_accessor :status

      # The display title of the ad. Falls back to the creative set caption when unset.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # When the ad was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An ad belonging to an ad group.
      sig do
        params(
          id: String,
          created_at: Time,
          platform: WhopSDK::AdCampaignPlatform::OrSymbol,
          status: WhopSDK::ExternalAdStatus::OrSymbol,
          title: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad.
        id:,
        # When the ad was created.
        created_at:,
        # The external ad platform this ad is running on (e.g., meta, tiktok).
        platform:,
        # Current delivery status of the ad.
        status:,
        # The display title of the ad. Falls back to the creative set caption when unset.
        title:,
        # When the ad was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            platform: WhopSDK::AdCampaignPlatform::TaggedSymbol,
            status: WhopSDK::ExternalAdStatus::TaggedSymbol,
            title: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end

# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#retrieve
    class Ad < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad belongs to.
      #
      #   @return [WhopSDK::Models::Ad::AdCampaign]
      required :ad_campaign, -> { WhopSDK::Ad::AdCampaign }

      # @!attribute ad_group
      #   The parent ad group this ad belongs to.
      #
      #   @return [WhopSDK::Models::Ad::AdGroup]
      required :ad_group, -> { WhopSDK::Ad::AdGroup }

      # @!attribute created_at
      #   When the ad was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute platform
      #   The external ad platform this ad is running on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignPlatform]
      required :platform, enum: -> { WhopSDK::AdCampaignPlatform }

      # @!attribute status
      #   Current delivery status of the ad.
      #
      #   @return [Symbol, WhopSDK::Models::ExternalAdStatus]
      required :status, enum: -> { WhopSDK::ExternalAdStatus }

      # @!attribute title
      #   The display title of the ad. Falls back to the creative set caption when unset.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   When the ad was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, ad_campaign:, ad_group:, created_at:, platform:, status:, title:, updated_at:)
      #   An ad belonging to an ad group.
      #
      #   @param id [String] The unique identifier for this ad.
      #
      #   @param ad_campaign [WhopSDK::Models::Ad::AdCampaign] The ad campaign this ad belongs to.
      #
      #   @param ad_group [WhopSDK::Models::Ad::AdGroup] The parent ad group this ad belongs to.
      #
      #   @param created_at [Time] When the ad was created.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignPlatform] The external ad platform this ad is running on (e.g., meta, tiktok).
      #
      #   @param status [Symbol, WhopSDK::Models::ExternalAdStatus] Current delivery status of the ad.
      #
      #   @param title [String, nil] The display title of the ad. Falls back to the creative set caption when unset.
      #
      #   @param updated_at [Time] When the ad was last updated.

      # @see WhopSDK::Models::Ad#ad_campaign
      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for this ad campaign.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ad campaign this ad belongs to.
        #
        #   @param id [String] The unique identifier for this ad campaign.
      end

      # @see WhopSDK::Models::Ad#ad_group
      class AdGroup < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for this ad group.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The parent ad group this ad belongs to.
        #
        #   @param id [String] The unique identifier for this ad group.
      end
    end
  end
end

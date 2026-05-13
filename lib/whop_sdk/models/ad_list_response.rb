# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#list
    class AdListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad.
      #
      #   @return [String]
      required :id, String

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

      # @!method initialize(id:, created_at:, platform:, status:, title:, updated_at:)
      #   An ad belonging to an ad group.
      #
      #   @param id [String] The unique identifier for this ad.
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
    end
  end
end

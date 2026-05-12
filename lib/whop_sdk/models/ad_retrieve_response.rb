# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#retrieve
    class AdRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad belongs to.
      #
      #   @return [WhopSDK::Models::AdRetrieveResponse::AdCampaign]
      required :ad_campaign, -> { WhopSDK::Models::AdRetrieveResponse::AdCampaign }

      # @!attribute ad_group
      #   The parent ad group this ad belongs to.
      #
      #   @return [WhopSDK::Models::AdRetrieveResponse::AdGroup]
      required :ad_group, -> { WhopSDK::Models::AdRetrieveResponse::AdGroup }

      # @!attribute created_at
      #   When the ad was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute platform
      #   The external ad platform this ad is running on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdRetrieveResponse::Platform]
      required :platform, enum: -> { WhopSDK::Models::AdRetrieveResponse::Platform }

      # @!attribute status
      #   Current delivery status of the ad.
      #
      #   @return [Symbol, WhopSDK::Models::AdRetrieveResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AdRetrieveResponse::Status }

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
      #   @param ad_campaign [WhopSDK::Models::AdRetrieveResponse::AdCampaign] The ad campaign this ad belongs to.
      #
      #   @param ad_group [WhopSDK::Models::AdRetrieveResponse::AdGroup] The parent ad group this ad belongs to.
      #
      #   @param created_at [Time] When the ad was created.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdRetrieveResponse::Platform] The external ad platform this ad is running on (e.g., meta, tiktok).
      #
      #   @param status [Symbol, WhopSDK::Models::AdRetrieveResponse::Status] Current delivery status of the ad.
      #
      #   @param title [String, nil] The display title of the ad. Falls back to the creative set caption when unset.
      #
      #   @param updated_at [Time] When the ad was last updated.

      # @see WhopSDK::Models::AdRetrieveResponse#ad_campaign
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

      # @see WhopSDK::Models::AdRetrieveResponse#ad_group
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

      # The external ad platform this ad is running on (e.g., meta, tiktok).
      #
      # @see WhopSDK::Models::AdRetrieveResponse#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta
        TIKTOK = :tiktok

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current delivery status of the ad.
      #
      # @see WhopSDK::Models::AdRetrieveResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        INACTIVE = :inactive
        IN_REVIEW = :in_review
        REJECTED = :rejected
        FLAGGED = :flagged

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

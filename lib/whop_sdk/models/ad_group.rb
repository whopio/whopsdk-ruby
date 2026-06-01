# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#retrieve
    class AdGroup < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad group.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad group belongs to.
      #
      #   @return [WhopSDK::Models::AdGroup::AdCampaign]
      required :ad_campaign, -> { WhopSDK::AdGroup::AdCampaign }

      # @!attribute budget
      #   Budget amount in dollars.
      #
      #   @return [Float, nil]
      required :budget, Float, nil?: true

      # @!attribute budget_type
      #   The budget type for an ad campaign or ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdBudgetType, nil]
      required :budget_type, enum: -> { WhopSDK::AdBudgetType }, nil?: true

      # @!attribute created_at
      #   When the ad group was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute platform
      #   The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignPlatform]
      required :platform, enum: -> { WhopSDK::AdCampaignPlatform }

      # @!attribute status
      #   Current operational status of the ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupStatus]
      required :status, enum: -> { WhopSDK::AdGroupStatus }

      # @!attribute title
      #   Human-readable name shown on the external platform.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   When the ad group was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, ad_campaign:, budget:, budget_type:, created_at:, platform:, status:, title:, updated_at:)
      #   An ad group (ad set) belonging to an ad campaign.
      #
      #   @param id [String] The unique identifier for this ad group.
      #
      #   @param ad_campaign [WhopSDK::Models::AdGroup::AdCampaign] The ad campaign this ad group belongs to.
      #
      #   @param budget [Float, nil] Budget amount in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdBudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param created_at [Time] When the ad group was created.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignPlatform] The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupStatus] Current operational status of the ad group.
      #
      #   @param title [String, nil] Human-readable name shown on the external platform.
      #
      #   @param updated_at [Time] When the ad group was last updated.

      # @see WhopSDK::Models::AdGroup#ad_campaign
      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for this ad campaign.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ad campaign this ad group belongs to.
        #
        #   @param id [String] The unique identifier for this ad campaign.
      end
    end
  end
end

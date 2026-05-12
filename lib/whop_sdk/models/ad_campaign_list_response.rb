# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#list
    class AdCampaignListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad campaign.
      #
      #   @return [String]
      required :id, String

      # @!attribute budget
      #   Total budget in dollars.
      #
      #   @return [Float, nil]
      required :budget, Float, nil?: true

      # @!attribute budget_type
      #   The budget type for an ad campaign or ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignListResponse::BudgetType, nil]
      required :budget_type, enum: -> { WhopSDK::Models::AdCampaignListResponse::BudgetType }, nil?: true

      # @!attribute created_at
      #   When the ad campaign was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute platform
      #   The external ad platform this campaign is running on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignListResponse::Platform]
      required :platform, enum: -> { WhopSDK::Models::AdCampaignListResponse::Platform }

      # @!attribute status
      #   Current status of the campaign (active, paused, or inactive).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AdCampaignListResponse::Status }

      # @!attribute title
      #   The campaign name shown in the Whop dashboard.
      #
      #   @return [String]
      required :title, String

      # @!attribute total_spend
      #   Total amount spent in dollars.
      #
      #   @return [Float]
      required :total_spend, Float

      # @!attribute updated_at
      #   When the ad campaign was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, budget:, budget_type:, created_at:, platform:, status:, title:, total_spend:, updated_at:)
      #   An advertising campaign running on an external platform or within Whop.
      #
      #   @param id [String] The unique identifier for this ad campaign.
      #
      #   @param budget [Float, nil] Total budget in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdCampaignListResponse::BudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param created_at [Time] When the ad campaign was created.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignListResponse::Platform] The external ad platform this campaign is running on (e.g., meta, tiktok).
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignListResponse::Status] Current status of the campaign (active, paused, or inactive).
      #
      #   @param title [String] The campaign name shown in the Whop dashboard.
      #
      #   @param total_spend [Float] Total amount spent in dollars.
      #
      #   @param updated_at [Time] When the ad campaign was last updated.

      # The budget type for an ad campaign or ad group.
      #
      # @see WhopSDK::Models::AdCampaignListResponse#budget_type
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        LIFETIME = :lifetime

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The external ad platform this campaign is running on (e.g., meta, tiktok).
      #
      # @see WhopSDK::Models::AdCampaignListResponse#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta
        TIKTOK = :tiktok

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current status of the campaign (active, paused, or inactive).
      #
      # @see WhopSDK::Models::AdCampaignListResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        PAYMENT_FAILED = :payment_failed
        DRAFT = :draft
        IN_REVIEW = :in_review
        FLAGGED = :flagged

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

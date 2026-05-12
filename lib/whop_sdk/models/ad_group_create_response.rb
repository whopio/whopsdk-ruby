# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#create
    class AdGroupCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad group.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad group belongs to.
      #
      #   @return [WhopSDK::Models::AdGroupCreateResponse::AdCampaign]
      required :ad_campaign, -> { WhopSDK::Models::AdGroupCreateResponse::AdCampaign }

      # @!attribute budget
      #   Budget amount in dollars.
      #
      #   @return [Float, nil]
      required :budget, Float, nil?: true

      # @!attribute budget_type
      #   The budget type for an ad campaign or ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupCreateResponse::BudgetType, nil]
      required :budget_type, enum: -> { WhopSDK::Models::AdGroupCreateResponse::BudgetType }, nil?: true

      # @!attribute created_at
      #   When the ad group was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute platform
      #   The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupCreateResponse::Platform]
      required :platform, enum: -> { WhopSDK::Models::AdGroupCreateResponse::Platform }

      # @!attribute status
      #   Current operational status of the ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupCreateResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AdGroupCreateResponse::Status }

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
      #   @param ad_campaign [WhopSDK::Models::AdGroupCreateResponse::AdCampaign] The ad campaign this ad group belongs to.
      #
      #   @param budget [Float, nil] Budget amount in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdGroupCreateResponse::BudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param created_at [Time] When the ad group was created.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdGroupCreateResponse::Platform] The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupCreateResponse::Status] Current operational status of the ad group.
      #
      #   @param title [String, nil] Human-readable name shown on the external platform.
      #
      #   @param updated_at [Time] When the ad group was last updated.

      # @see WhopSDK::Models::AdGroupCreateResponse#ad_campaign
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

      # The budget type for an ad campaign or ad group.
      #
      # @see WhopSDK::Models::AdGroupCreateResponse#budget_type
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        LIFETIME = :lifetime

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      # @see WhopSDK::Models::AdGroupCreateResponse#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta
        TIKTOK = :tiktok

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current operational status of the ad group.
      #
      # @see WhopSDK::Models::AdGroupCreateResponse#status
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

# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#list
    class AdGroupListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad group.
      #
      #   @return [String]
      required :id, String

      # @!attribute budget
      #   Budget amount in dollars.
      #
      #   @return [Float, nil]
      required :budget, Float, nil?: true

      # @!attribute budget_type
      #   The budget type for an ad campaign or ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupListResponse::BudgetType, nil]
      required :budget_type, enum: -> { WhopSDK::Models::AdGroupListResponse::BudgetType }, nil?: true

      # @!attribute created_at
      #   When the ad group was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute platform
      #   The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupListResponse::Platform]
      required :platform, enum: -> { WhopSDK::Models::AdGroupListResponse::Platform }

      # @!attribute status
      #   Current operational status of the ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AdGroupListResponse::Status }

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

      # @!method initialize(id:, budget:, budget_type:, created_at:, platform:, status:, title:, updated_at:)
      #   An ad group (ad set) belonging to an ad campaign.
      #
      #   @param id [String] The unique identifier for this ad group.
      #
      #   @param budget [Float, nil] Budget amount in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdGroupListResponse::BudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param created_at [Time] When the ad group was created.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdGroupListResponse::Platform] The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupListResponse::Status] Current operational status of the ad group.
      #
      #   @param title [String, nil] Human-readable name shown on the external platform.
      #
      #   @param updated_at [Time] When the ad group was last updated.

      # The budget type for an ad campaign or ad group.
      #
      # @see WhopSDK::Models::AdGroupListResponse#budget_type
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        LIFETIME = :lifetime

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      # @see WhopSDK::Models::AdGroupListResponse#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta
        TIKTOK = :tiktok

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Current operational status of the ad group.
      #
      # @see WhopSDK::Models::AdGroupListResponse#status
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

# frozen_string_literal: true

module WhopSDK
  module Models
    class AdCampaignUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #
      #   @return [WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data]
      required :data, -> { WhopSDK::AdCampaignUpdatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"ad_campaign.updated"]
      required :type, const: :"ad_campaign.updated"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"ad_campaign.updated")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignUpdatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"ad_campaign.updated"] The webhook event type

      # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the ad campaign, prefixed `adcamp_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute budget_amount
        #   The campaign's budget, in the ad account's currency. `null` when each ad group
        #   sets its own budget instead.
        #
        #   @return [Float, nil]
        required :budget_amount, Float, nil?: true

        # @!attribute budget_optimization
        #   Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
        #   individually (`ad_group`).
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization, nil]
        required :budget_optimization,
                 enum: -> { WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization },
                 nil?: true

        # @!attribute budget_type
        #   Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
        #   run (`lifetime`).
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::BudgetType, nil]
        required :budget_type,
                 enum: -> {
                   WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetType
                 },
                 nil?: true

        # @!attribute created_at
        #   When the campaign was created, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute delivery_status
        #   Whether the campaign's ads are delivering right now, and if not, why. When
        #   several states apply at once, the highest-precedence one is returned.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus]
        required :delivery_status, enum: -> { WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus }

        # @!attribute issues
        #
        #   @return [Array<WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Issue>]
        required :issues,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue] }

        # @!attribute objective
        #   The goal the campaign optimizes toward.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Objective, nil]
        required :objective, enum: -> { WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective }, nil?: true

        # @!attribute optimization_goal
        #   The event the campaign optimizes for when a single goal is set campaign-wide.
        #   `null` when each ad group sets its own optimization_goal.
        #
        #   @return [String, nil]
        required :optimization_goal, String, nil?: true

        # @!attribute platform
        #   The ad network the campaign runs on.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Platform]
        required :platform, enum: -> { WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Platform }

        # @!attribute special_ad_categories
        #
        #   @return [Array<Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory>]
        required :special_ad_categories,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory] }

        # @!attribute status
        #   The lifecycle status of the ad campaign.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status }

        # @!attribute title
        #   Display name of the ad campaign.
        #
        #   @return [String]
        required :title, String

        # @!attribute updated_at
        #   When the campaign was last updated, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :updated_at, String

        # @!attribute bid_type
        #   How delivery bids in the ad auction: `minimum_cost` gets the most results for
        #   the budget, `average_target` holds an average cost per result, and
        #   `maximum_target` never bids above a cap.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::BidType, nil]
        optional :bid_type, enum: -> { WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType }, nil?: true

        # @!method initialize(id:, budget_amount:, budget_optimization:, budget_type:, created_at:, delivery_status:, issues:, objective:, optimization_goal:, platform:, special_ad_categories:, status:, title:, updated_at:, bid_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Unique identifier for the ad campaign, prefixed `adcamp_`.
        #
        #   @param budget_amount [Float, nil] The campaign's budget, in the ad account's currency. `null` when each ad group s
        #
        #   @param budget_optimization [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization, nil] Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
        #
        #   @param budget_type [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::BudgetType, nil] Whether `budget_amount` is spent per day (`daily`) or over the campaign's full r
        #
        #   @param created_at [String] When the campaign was created, as an ISO 8601 timestamp.
        #
        #   @param delivery_status [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus] Whether the campaign's ads are delivering right now, and if not, why. When sever
        #
        #   @param issues [Array<WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Issue>]
        #
        #   @param objective [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Objective, nil] The goal the campaign optimizes toward.
        #
        #   @param optimization_goal [String, nil] The event the campaign optimizes for when a single goal is set campaign-wide. `n
        #
        #   @param platform [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Platform] The ad network the campaign runs on.
        #
        #   @param special_ad_categories [Array<Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory>]
        #
        #   @param status [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Status] The lifecycle status of the ad campaign.
        #
        #   @param title [String] Display name of the ad campaign.
        #
        #   @param updated_at [String] When the campaign was last updated, as an ISO 8601 timestamp.
        #
        #   @param bid_type [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::BidType, nil] How delivery bids in the ad auction: `minimum_cost` gets the most results for th

        # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
        # individually (`ad_group`).
        #
        # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data#budget_optimization
        module BudgetOptimization
          extend WhopSDK::Internal::Type::Enum

          AD_CAMPAIGN = :ad_campaign
          AD_GROUP = :ad_group

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
        # run (`lifetime`).
        #
        # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data#budget_type
        module BudgetType
          extend WhopSDK::Internal::Type::Enum

          DAILY = :daily
          LIFETIME = :lifetime

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the campaign's ads are delivering right now, and if not, why. When
        # several states apply at once, the highest-precedence one is returned.
        #
        # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data#delivery_status
        module DeliveryStatus
          extend WhopSDK::Internal::Type::Enum

          PAYMENT_FAILED = :payment_failed
          ALL_ADS_REJECTED = :all_ads_rejected
          DRAFT = :draft
          NO_AD_GROUPS = :no_ad_groups
          NO_ADS = :no_ads
          PAUSED = :paused
          PROCESSING = :processing
          ISSUES = :issues
          SCHEDULED = :scheduled
          COMPLETED = :completed
          AD_GROUPS_OFF = :ad_groups_off
          ACTIVE = :active

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Issue < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the issue.
          #
          #   @return [String]
          required :id, String

          # @!attribute message
          #   A description of what the issue is and how it can be resolved.
          #
          #   @return [String]
          required :message, String

          # @!attribute resource_id
          #   The ID of the campaign, ad group, or ad the issue is attached to.
          #
          #   @return [String, nil]
          required :resource_id, String, nil?: true

          # @!attribute resource_type
          #   The type of resource the issue is attached to.
          #
          #   @return [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType]
          required :resource_type, enum: -> { WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType }

          # @!method initialize(id:, message:, resource_id:, resource_type:)
          #   Open issues affecting the campaign and its descendant ad groups and ads.
          #
          #   @param id [String] Unique identifier for the issue.
          #
          #   @param message [String] A description of what the issue is and how it can be resolved.
          #
          #   @param resource_id [String, nil] The ID of the campaign, ad group, or ad the issue is attached to.
          #
          #   @param resource_type [Symbol, WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType] The type of resource the issue is attached to.

          # The type of resource the issue is attached to.
          #
          # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data::Issue#resource_type
          module ResourceType
            extend WhopSDK::Internal::Type::Enum

            AD_CAMPAIGN = :ad_campaign
            AD_GROUP = :ad_group
            AD = :ad

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The goal the campaign optimizes toward.
        #
        # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data#objective
        module Objective
          extend WhopSDK::Internal::Type::Enum

          AWARENESS = :awareness
          TRAFFIC = :traffic
          ENGAGEMENT = :engagement
          LEADS = :leads
          SALES = :sales

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The ad network the campaign runs on.
        #
        # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data#platform
        module Platform
          extend WhopSDK::Internal::Type::Enum

          META = :meta
          TIKTOK = :tiktok

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Regulated categories the campaign is declared under. Ads in these categories are
        # subject to extra targeting restrictions. Empty when none apply.
        module SpecialAdCategory
          extend WhopSDK::Internal::Type::Enum

          HOUSING = :housing
          EMPLOYMENT = :employment
          FINANCIAL_PRODUCTS = :financial_products
          POLITICS = :politics

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The lifecycle status of the ad campaign.
        #
        # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          PAUSED = :paused
          INACTIVE = :inactive
          STALE = :stale
          PENDING_REFUND = :pending_refund
          PAYMENT_FAILED = :payment_failed
          DRAFT = :draft
          IN_REVIEW = :in_review
          FLAGGED = :flagged
          IMPORTING = :importing
          IMPORTED = :imported
          DUPLICATING = :duplicating

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # How delivery bids in the ad auction: `minimum_cost` gets the most results for
        # the budget, `average_target` holds an average cost per result, and
        # `maximum_target` never bids above a cap.
        #
        # @see WhopSDK::Models::AdCampaignUpdatedWebhookEvent::Data#bid_type
        module BidType
          extend WhopSDK::Internal::Type::Enum

          MINIMUM_COST = :minimum_cost
          AVERAGE_TARGET = :average_target
          MAXIMUM_TARGET = :maximum_target

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

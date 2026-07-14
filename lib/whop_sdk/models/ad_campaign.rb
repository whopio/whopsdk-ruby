# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#create
    class AdCampaign < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the ad campaign.
      #
      #   @return [String]
      required :id, String

      # @!attribute added_to_carts
      #   Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @return [Float]
      required :added_to_carts, Float

      # @!attribute bid_type
      #   The bidding strategy the campaign uses.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaign::BidType, nil]
      required :bid_type, enum: -> { WhopSDK::AdCampaign::BidType }, nil?: true

      # @!attribute budget_amount
      #   The campaign budget in USD. Null when budget is set at the ad group level (ABO).
      #
      #   @return [Float, nil]
      required :budget_amount, Float, nil?: true

      # @!attribute budget_optimization
      #   Which level owns the budget — the campaign (CBO) or each ad group (ABO).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaign::BudgetOptimization, nil]
      required :budget_optimization, enum: -> { WhopSDK::AdCampaign::BudgetOptimization }, nil?: true

      # @!attribute budget_type
      #   Whether the budget is spent per day or over the campaign's lifetime.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaign::BudgetType, nil]
      required :budget_type, enum: -> { WhopSDK::AdCampaign::BudgetType }, nil?: true

      # @!attribute click_through_rate
      #   Clicks divided by impressions, between 0 and 1.
      #
      #   @return [Float]
      required :click_through_rate, Float

      # @!attribute clicks
      #   The number of clicks.
      #
      #   @return [Float]
      required :clicks, Float

      # @!attribute completed_registrations
      #   Whop pixel-attributed complete-registration events, last-click.
      #
      #   @return [Float]
      required :completed_registrations, Float

      # @!attribute contacts
      #   Whop pixel-attributed contact events, last-click.
      #
      #   @return [Float]
      required :contacts, Float

      # @!attribute cost_per_added_to_cart
      #   Spend divided by attributed add-to-cart events; null when they are not the goal
      #   and none are attributed.
      #
      #   @return [Float, nil]
      required :cost_per_added_to_cart, Float, nil?: true

      # @!attribute cost_per_click
      #   Spend divided by clicks; 0 when there are no clicks.
      #
      #   @return [Float]
      required :cost_per_click, Float

      # @!attribute cost_per_completed_registration
      #   Spend divided by attributed complete-registration events; null when they are not
      #   the goal and none are attributed.
      #
      #   @return [Float, nil]
      required :cost_per_completed_registration, Float, nil?: true

      # @!attribute cost_per_contact
      #   Spend divided by attributed contact events; null when contacts are not the goal
      #   and none are attributed.
      #
      #   @return [Float, nil]
      required :cost_per_contact, Float, nil?: true

      # @!attribute cost_per_lead
      #   Spend divided by attributed leads; null when leads are not a goal and none are
      #   attributed.
      #
      #   @return [Float, nil]
      required :cost_per_lead, Float, nil?: true

      # @!attribute cost_per_mille
      #   Spend per 1,000 impressions; 0 when there are no impressions.
      #
      #   @return [Float]
      required :cost_per_mille, Float

      # @!attribute cost_per_purchase
      #   Spend divided by attributed purchases; null when purchases are not a goal and
      #   none are attributed.
      #
      #   @return [Float, nil]
      required :cost_per_purchase, Float, nil?: true

      # @!attribute cost_per_result
      #   Spend divided by Whop pixel-attributed results; null when nothing
      #   Whop-attributable is being optimized for.
      #
      #   @return [Float, nil]
      required :cost_per_result, Float, nil?: true

      # @!attribute cost_per_schedule
      #   Spend divided by attributed schedule events; null when schedules are not the
      #   goal and none are attributed.
      #
      #   @return [Float, nil]
      required :cost_per_schedule, Float, nil?: true

      # @!attribute cost_per_submitted_application
      #   Spend divided by attributed submit-application events; null when they are not
      #   the goal and none are attributed.
      #
      #   @return [Float, nil]
      required :cost_per_submitted_application, Float, nil?: true

      # @!attribute cost_per_viewed_content
      #   Spend divided by attributed view-content events; null when they are not the goal
      #   and none are attributed.
      #
      #   @return [Float, nil]
      required :cost_per_viewed_content, Float, nil?: true

      # @!attribute created_at
      #   When the campaign was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute custom_conversions
      #   Whop pixel-attributed custom (merchant-defined) conversion events, last-click,
      #   across all custom event names.
      #
      #   @return [Float]
      required :custom_conversions, Float

      # @!attribute custom_event_counts
      #   Whop pixel-attributed custom conversions broken out by merchant-defined event
      #   name, last-click, as a { event_name => count } map over the stats window. Empty
      #   when no named custom events are attributed. Custom events fired without a name
      #   are counted in custom_conversions but omitted here, so these values sum to at
      #   most custom_conversions.
      #
      #   @return [Object]
      required :custom_event_counts, WhopSDK::Internal::Type::Unknown

      # @!attribute delivery_status
      #   The current delivery state, mirroring the Delivery column in the ads dashboard.
      #   When several states apply at once, the highest-precedence one is returned.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaign::DeliveryStatus]
      required :delivery_status, enum: -> { WhopSDK::AdCampaign::DeliveryStatus }

      # @!attribute frequency
      #   Platform-reported impressions divided by reach.
      #
      #   @return [Float, nil]
      required :frequency, Float, nil?: true

      # @!attribute impressions
      #   The number of impressions.
      #
      #   @return [Float]
      required :impressions, Float

      # @!attribute issues
      #
      #   @return [Array<WhopSDK::Models::AdCampaign::Issue>]
      required :issues, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue] }

      # @!attribute leads
      #   Whop pixel-attributed leads, last-click.
      #
      #   @return [Float]
      required :leads, Float

      # @!attribute objective
      #   The goal the campaign optimizes toward.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaign::Objective, nil]
      required :objective, enum: -> { WhopSDK::AdCampaign::Objective }, nil?: true

      # @!attribute optimization_goal
      #   The specific event the campaign optimizes for. If the campaign is CBO, then all
      #   ad groups will have the same optimization goal, which will be returned here.
      #
      #   @return [String, nil]
      required :optimization_goal, String, nil?: true

      # @!attribute platform
      #   The ad network the campaign runs on.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaign::Platform]
      required :platform, enum: -> { WhopSDK::AdCampaign::Platform }

      # @!attribute purchase_value
      #   USD value of pixel-attributed purchases.
      #
      #   @return [Float]
      required :purchase_value, Float

      # @!attribute purchases
      #   Whop pixel-attributed purchases, last-click.
      #
      #   @return [Float]
      required :purchases, Float

      # @!attribute reach
      #   The number of unique people who saw this.
      #
      #   @return [Float]
      required :reach, Float

      # @!attribute result_event
      #   The Whop pixel conversion event whose attributed count represents results — the
      #   optimization goal, or the highest-volume attributed event for campaigns that
      #   budget per ad group. Null when the goal isn't a Whop-attributed event.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaign::ResultEvent, nil]
      required :result_event, enum: -> { WhopSDK::AdCampaign::ResultEvent }, nil?: true

      # @!attribute result_event_name
      #   The merchant-defined event name when result_event is custom; null for the
      #   standard events.
      #
      #   @return [String, nil]
      required :result_event_name, String, nil?: true

      # @!attribute results
      #   The Whop pixel-attributed count behind result_event. When a campaign's ad groups
      #   optimize different goals there is no single result_event (it is null), and this
      #   is instead the sum of each ad group's own attributed results. Null when nothing
      #   Whop-attributable is being optimized for.
      #
      #   @return [Float, nil]
      required :results, Float, nil?: true

      # @!attribute return_on_ad_spend
      #   Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
      #   there is no spend.
      #
      #   @return [Float]
      required :return_on_ad_spend, Float

      # @!attribute schedules
      #   Whop pixel-attributed schedule events, last-click.
      #
      #   @return [Float]
      required :schedules, Float

      # @!attribute special_ad_categories
      #
      #   @return [Array<Symbol, WhopSDK::Models::AdCampaign::SpecialAdCategory>]
      required :special_ad_categories,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaign::SpecialAdCategory] }

      # @!attribute spend
      #   The amount charged, in spend_currency.
      #
      #   @return [Float]
      required :spend, Float

      # @!attribute spend_currency
      #   The ISO 4217 currency code of all monetary metrics.
      #
      #   @return [String, nil]
      required :spend_currency, String, nil?: true

      # @!attribute status
      #   The lifecycle status of the ad campaign.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaign::Status]
      required :status, enum: -> { WhopSDK::AdCampaign::Status }

      # @!attribute submitted_applications
      #   Whop pixel-attributed submit-application events, last-click.
      #
      #   @return [Float]
      required :submitted_applications, Float

      # @!attribute title
      #   The title of the ad campaign.
      #
      #   @return [String]
      required :title, String

      # @!attribute unique_click_through_rate
      #   Unique clicks divided by impressions, between 0 and 1.
      #
      #   @return [Float, nil]
      required :unique_click_through_rate, Float, nil?: true

      # @!attribute unique_clicks
      #   The number of unique clicks.
      #
      #   @return [Float]
      required :unique_clicks, Float

      # @!attribute updated_at
      #   When the campaign was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute viewed_contents
      #   Whop pixel-attributed view-content events, last-click.
      #
      #   @return [Float]
      required :viewed_contents, Float

      # @!method initialize(id:, added_to_carts:, bid_type:, budget_amount:, budget_optimization:, budget_type:, click_through_rate:, clicks:, completed_registrations:, contacts:, cost_per_added_to_cart:, cost_per_click:, cost_per_completed_registration:, cost_per_contact:, cost_per_lead:, cost_per_mille:, cost_per_purchase:, cost_per_result:, cost_per_schedule:, cost_per_submitted_application:, cost_per_viewed_content:, created_at:, custom_conversions:, custom_event_counts:, delivery_status:, frequency:, impressions:, issues:, leads:, objective:, optimization_goal:, platform:, purchase_value:, purchases:, reach:, result_event:, result_event_name:, results:, return_on_ad_spend:, schedules:, special_ad_categories:, spend:, spend_currency:, status:, submitted_applications:, title:, unique_click_through_rate:, unique_clicks:, updated_at:, viewed_contents:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaign} for more details.
      #
      #   @param id [String] Unique identifier for the ad campaign.
      #
      #   @param added_to_carts [Float] Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @param bid_type [Symbol, WhopSDK::Models::AdCampaign::BidType, nil] The bidding strategy the campaign uses.
      #
      #   @param budget_amount [Float, nil] The campaign budget in USD. Null when budget is set at the ad group level (ABO).
      #
      #   @param budget_optimization [Symbol, WhopSDK::Models::AdCampaign::BudgetOptimization, nil] Which level owns the budget — the campaign (CBO) or each ad group (ABO).
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdCampaign::BudgetType, nil] Whether the budget is spent per day or over the campaign's lifetime.
      #
      #   @param click_through_rate [Float] Clicks divided by impressions, between 0 and 1.
      #
      #   @param clicks [Float] The number of clicks.
      #
      #   @param completed_registrations [Float] Whop pixel-attributed complete-registration events, last-click.
      #
      #   @param contacts [Float] Whop pixel-attributed contact events, last-click.
      #
      #   @param cost_per_added_to_cart [Float, nil] Spend divided by attributed add-to-cart events; null when they are not the goal
      #
      #   @param cost_per_click [Float] Spend divided by clicks; 0 when there are no clicks.
      #
      #   @param cost_per_completed_registration [Float, nil] Spend divided by attributed complete-registration events; null when they are not
      #
      #   @param cost_per_contact [Float, nil] Spend divided by attributed contact events; null when contacts are not the goal
      #
      #   @param cost_per_lead [Float, nil] Spend divided by attributed leads; null when leads are not a goal and none are a
      #
      #   @param cost_per_mille [Float] Spend per 1,000 impressions; 0 when there are no impressions.
      #
      #   @param cost_per_purchase [Float, nil] Spend divided by attributed purchases; null when purchases are not a goal and no
      #
      #   @param cost_per_result [Float, nil] Spend divided by Whop pixel-attributed results; null when nothing Whop-attributa
      #
      #   @param cost_per_schedule [Float, nil] Spend divided by attributed schedule events; null when schedules are not the goa
      #
      #   @param cost_per_submitted_application [Float, nil] Spend divided by attributed submit-application events; null when they are not th
      #
      #   @param cost_per_viewed_content [Float, nil] Spend divided by attributed view-content events; null when they are not the goal
      #
      #   @param created_at [String] When the campaign was created, as an ISO 8601 timestamp.
      #
      #   @param custom_conversions [Float] Whop pixel-attributed custom (merchant-defined) conversion events, last-click, a
      #
      #   @param custom_event_counts [Object] Whop pixel-attributed custom conversions broken out by merchant-defined event na
      #
      #   @param delivery_status [Symbol, WhopSDK::Models::AdCampaign::DeliveryStatus] The current delivery state, mirroring the Delivery column in the ads dashboard.
      #
      #   @param frequency [Float, nil] Platform-reported impressions divided by reach.
      #
      #   @param impressions [Float] The number of impressions.
      #
      #   @param issues [Array<WhopSDK::Models::AdCampaign::Issue>]
      #
      #   @param leads [Float] Whop pixel-attributed leads, last-click.
      #
      #   @param objective [Symbol, WhopSDK::Models::AdCampaign::Objective, nil] The goal the campaign optimizes toward.
      #
      #   @param optimization_goal [String, nil] The specific event the campaign optimizes for. If the campaign is CBO, then all
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaign::Platform] The ad network the campaign runs on.
      #
      #   @param purchase_value [Float] USD value of pixel-attributed purchases.
      #
      #   @param purchases [Float] Whop pixel-attributed purchases, last-click.
      #
      #   @param reach [Float] The number of unique people who saw this.
      #
      #   @param result_event [Symbol, WhopSDK::Models::AdCampaign::ResultEvent, nil] The Whop pixel conversion event whose attributed count represents results — the
      #
      #   @param result_event_name [String, nil] The merchant-defined event name when result_event is custom; null for the standa
      #
      #   @param results [Float, nil] The Whop pixel-attributed count behind result_event. When a campaign's ad groups
      #
      #   @param return_on_ad_spend [Float] Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
      #
      #   @param schedules [Float] Whop pixel-attributed schedule events, last-click.
      #
      #   @param special_ad_categories [Array<Symbol, WhopSDK::Models::AdCampaign::SpecialAdCategory>]
      #
      #   @param spend [Float] The amount charged, in spend_currency.
      #
      #   @param spend_currency [String, nil] The ISO 4217 currency code of all monetary metrics.
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaign::Status] The lifecycle status of the ad campaign.
      #
      #   @param submitted_applications [Float] Whop pixel-attributed submit-application events, last-click.
      #
      #   @param title [String] The title of the ad campaign.
      #
      #   @param unique_click_through_rate [Float, nil] Unique clicks divided by impressions, between 0 and 1.
      #
      #   @param unique_clicks [Float] The number of unique clicks.
      #
      #   @param updated_at [String] When the campaign was last updated, as an ISO 8601 timestamp.
      #
      #   @param viewed_contents [Float] Whop pixel-attributed view-content events, last-click.

      # The bidding strategy the campaign uses.
      #
      # @see WhopSDK::Models::AdCampaign#bid_type
      module BidType
        extend WhopSDK::Internal::Type::Enum

        MINIMUM_COST = :minimum_cost
        AVERAGE_TARGET = :average_target
        MAXIMUM_TARGET = :maximum_target

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Which level owns the budget — the campaign (CBO) or each ad group (ABO).
      #
      # @see WhopSDK::Models::AdCampaign#budget_optimization
      module BudgetOptimization
        extend WhopSDK::Internal::Type::Enum

        AD_CAMPAIGN = :ad_campaign
        AD_GROUP = :ad_group

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether the budget is spent per day or over the campaign's lifetime.
      #
      # @see WhopSDK::Models::AdCampaign#budget_type
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        LIFETIME = :lifetime

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current delivery state, mirroring the Delivery column in the ads dashboard.
      # When several states apply at once, the highest-precedence one is returned.
      #
      # @see WhopSDK::Models::AdCampaign#delivery_status
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
        #   @return [Symbol, WhopSDK::Models::AdCampaign::Issue::ResourceType]
        required :resource_type, enum: -> { WhopSDK::AdCampaign::Issue::ResourceType }

        # @!method initialize(id:, message:, resource_id:, resource_type:)
        #   Open issues affecting the campaign and its descendant ad groups and ads.
        #
        #   @param id [String] Unique identifier for the issue.
        #
        #   @param message [String] A description of what the issue is and how it can be resolved.
        #
        #   @param resource_id [String, nil] The ID of the campaign, ad group, or ad the issue is attached to.
        #
        #   @param resource_type [Symbol, WhopSDK::Models::AdCampaign::Issue::ResourceType] The type of resource the issue is attached to.

        # The type of resource the issue is attached to.
        #
        # @see WhopSDK::Models::AdCampaign::Issue#resource_type
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
      # @see WhopSDK::Models::AdCampaign#objective
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
      # @see WhopSDK::Models::AdCampaign#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The Whop pixel conversion event whose attributed count represents results — the
      # optimization goal, or the highest-volume attributed event for campaigns that
      # budget per ad group. Null when the goal isn't a Whop-attributed event.
      #
      # @see WhopSDK::Models::AdCampaign#result_event
      module ResultEvent
        extend WhopSDK::Internal::Type::Enum

        PURCHASE = :purchase
        LEAD = :lead
        SCHEDULE = :schedule
        SUBMIT_APPLICATION = :submit_application
        CONTACT = :contact
        COMPLETE_REGISTRATION = :complete_registration
        VIEW_CONTENT = :view_content
        ADD_TO_CART = :add_to_cart
        CUSTOM = :custom

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
      # @see WhopSDK::Models::AdCampaign#status
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

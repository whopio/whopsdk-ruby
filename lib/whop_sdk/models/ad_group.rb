# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#create
    class AdGroup < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the ad group.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad group belongs to, an object with an id.
      #
      #   @return [WhopSDK::Models::AdGroup::AdCampaign]
      required :ad_campaign, -> { WhopSDK::AdGroup::AdCampaign }

      # @!attribute added_to_carts
      #   Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @return [Float]
      required :added_to_carts, Float

      # @!attribute audiences
      #   Saved-audience targeting: { include, exclude } arrays of audience IDs.
      #
      #   @return [Object]
      required :audiences, WhopSDK::Internal::Type::Unknown

      # @!attribute bid_type
      #   Bid strategy.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::BidType, nil]
      required :bid_type, enum: -> { WhopSDK::AdGroup::BidType }, nil?: true

      # @!attribute budget_amount
      #   Ad-set budget; null when the campaign owns budget (CBO).
      #
      #   @return [Float, nil]
      required :budget_amount, Float, nil?: true

      # @!attribute budget_type
      #   Whether the budget is daily or lifetime.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::BudgetType, nil]
      required :budget_type, enum: -> { WhopSDK::AdGroup::BudgetType }, nil?: true

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

      # @!attribute conversion_event
      #   The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      #   @return [Symbol, String, WhopSDK::Models::AdGroup::ConversionEvent, nil]
      required :conversion_event, union: -> { WhopSDK::AdGroup::ConversionEvent }, nil?: true

      # @!attribute conversion_location
      #   Where results happen: website, profile (IG/FB), messaging (DM), on_ad
      #   (engagement), or the lead destinations (instant_forms,
      #   instant_forms_and_messenger, website_and_instant_forms).
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::ConversionLocation, nil]
      required :conversion_location, enum: -> { WhopSDK::AdGroup::ConversionLocation }, nil?: true

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
      #   When the ad group was created, ISO 8601.
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
      #   @return [Symbol, WhopSDK::Models::AdGroup::DeliveryStatus]
      required :delivery_status, enum: -> { WhopSDK::AdGroup::DeliveryStatus }

      # @!attribute demographics
      #   Demographic targeting: automatic (Advantage+), age range, gender.
      #
      #   @return [Object]
      required :demographics, WhopSDK::Internal::Type::Unknown

      # @!attribute desired_cost_per_result
      #   Target/cap cost for average_target / maximum_target.
      #
      #   @return [Float, nil]
      required :desired_cost_per_result, Float, nil?: true

      # @!attribute devices
      #   Device targeting: platforms and operating systems.
      #
      #   @return [Object]
      required :devices, WhopSDK::Internal::Type::Unknown

      # @!attribute dynamic_creative
      #   Whether ads within this ad group have their creatives and copy dynamically AB
      #   tested.
      #
      #   @return [Boolean]
      required :dynamic_creative, WhopSDK::Internal::Type::Boolean

      # @!attribute ends_at
      #   Schedule end, ISO 8601.
      #
      #   @return [String, nil]
      required :ends_at, String, nil?: true

      # @!attribute frequency
      #   Platform-reported impressions divided by reach.
      #
      #   @return [Float, nil]
      required :frequency, Float, nil?: true

      # @!attribute frequency_cap
      #   Impression cap; only valid for reach optimization.
      #
      #   @return [Object, nil]
      required :frequency_cap, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute impressions
      #   The number of impressions.
      #
      #   @return [Float]
      required :impressions, Float

      # @!attribute issues
      #
      #   @return [Array<WhopSDK::Models::AdGroup::Issue>]
      required :issues, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue] }

      # @!attribute languages
      #
      #   @return [Array<String>]
      required :languages, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute leads
      #   Whop pixel-attributed leads, last-click.
      #
      #   @return [Float]
      required :leads, Float

      # @!attribute message_apps
      #
      #   @return [Array<String>]
      required :message_apps, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute minimum_daily_spend
      #   Daily spend floor within the budget.
      #
      #   @return [Float, nil]
      required :minimum_daily_spend, Float, nil?: true

      # @!attribute optimization_goal
      #   What the ad group optimizes for.
      #
      #   @return [String, nil]
      required :optimization_goal, String, nil?: true

      # @!attribute placements
      #
      #   @return [Array<Object>]
      required :placements, WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]

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

      # @!attribute regions
      #   Geo targeting: include/exclude countries, regions (ISO 3166-2 states, e.g.
      #   US-CA), cities, zips, and custom_locations (pin + radius: { latitude, longitude,
      #   radius, distance_unit, name }).
      #
      #   @return [Object]
      required :regions, WhopSDK::Internal::Type::Unknown

      # @!attribute result_event
      #   The Whop pixel conversion event whose attributed count represents results — the
      #   optimization goal, or the highest-volume attributed event for campaigns that
      #   budget per ad group. Null when the goal isn't a Whop-attributed event.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::ResultEvent, nil]
      required :result_event, enum: -> { WhopSDK::AdGroup::ResultEvent }, nil?: true

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

      # @!attribute starts_at
      #   Schedule start, ISO 8601.
      #
      #   @return [String, nil]
      required :starts_at, String, nil?: true

      # @!attribute status
      #   Delivery status of the ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::Status]
      required :status, enum: -> { WhopSDK::AdGroup::Status }

      # @!attribute submitted_applications
      #   Whop pixel-attributed submit-application events, last-click.
      #
      #   @return [Float]
      required :submitted_applications, Float

      # @!attribute title
      #   The display title of the ad group.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

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
      #   When the ad group was last updated, ISO 8601.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute viewed_contents
      #   Whop pixel-attributed view-content events, last-click.
      #
      #   @return [Float]
      required :viewed_contents, Float

      # @!method initialize(id:, ad_campaign:, added_to_carts:, audiences:, bid_type:, budget_amount:, budget_type:, click_through_rate:, clicks:, completed_registrations:, contacts:, conversion_event:, conversion_location:, cost_per_added_to_cart:, cost_per_click:, cost_per_completed_registration:, cost_per_contact:, cost_per_lead:, cost_per_mille:, cost_per_purchase:, cost_per_result:, cost_per_schedule:, cost_per_submitted_application:, cost_per_viewed_content:, created_at:, custom_conversions:, custom_event_counts:, delivery_status:, demographics:, desired_cost_per_result:, devices:, dynamic_creative:, ends_at:, frequency:, frequency_cap:, impressions:, issues:, languages:, leads:, message_apps:, minimum_daily_spend:, optimization_goal:, placements:, purchase_value:, purchases:, reach:, regions:, result_event:, result_event_name:, results:, return_on_ad_spend:, schedules:, spend:, spend_currency:, starts_at:, status:, submitted_applications:, title:, unique_click_through_rate:, unique_clicks:, updated_at:, viewed_contents:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::AdGroup}
      #   for more details.
      #
      #   @param id [String] Unique identifier for the ad group.
      #
      #   @param ad_campaign [WhopSDK::Models::AdGroup::AdCampaign] The ad campaign this ad group belongs to, an object with an id.
      #
      #   @param added_to_carts [Float] Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @param audiences [Object] Saved-audience targeting: { include, exclude } arrays of audience IDs.
      #
      #   @param bid_type [Symbol, WhopSDK::Models::AdGroup::BidType, nil] Bid strategy.
      #
      #   @param budget_amount [Float, nil] Ad-set budget; null when the campaign owns budget (CBO).
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdGroup::BudgetType, nil] Whether the budget is daily or lifetime.
      #
      #   @param click_through_rate [Float] Clicks divided by impressions, between 0 and 1.
      #
      #   @param clicks [Float] The number of clicks.
      #
      #   @param completed_registrations [Float] Whop pixel-attributed complete-registration events, last-click.
      #
      #   @param contacts [Float] Whop pixel-attributed contact events, last-click.
      #
      #   @param conversion_event [Symbol, String, WhopSDK::Models::AdGroup::ConversionEvent, nil] The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      #   @param conversion_location [Symbol, WhopSDK::Models::AdGroup::ConversionLocation, nil] Where results happen: website, profile (IG/FB), messaging (DM), on_ad (engagemen
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
      #   @param created_at [String] When the ad group was created, ISO 8601.
      #
      #   @param custom_conversions [Float] Whop pixel-attributed custom (merchant-defined) conversion events, last-click, a
      #
      #   @param custom_event_counts [Object] Whop pixel-attributed custom conversions broken out by merchant-defined event na
      #
      #   @param delivery_status [Symbol, WhopSDK::Models::AdGroup::DeliveryStatus] The current delivery state, mirroring the Delivery column in the ads dashboard.
      #
      #   @param demographics [Object] Demographic targeting: automatic (Advantage+), age range, gender.
      #
      #   @param desired_cost_per_result [Float, nil] Target/cap cost for average_target / maximum_target.
      #
      #   @param devices [Object] Device targeting: platforms and operating systems.
      #
      #   @param dynamic_creative [Boolean] Whether ads within this ad group have their creatives and copy dynamically AB te
      #
      #   @param ends_at [String, nil] Schedule end, ISO 8601.
      #
      #   @param frequency [Float, nil] Platform-reported impressions divided by reach.
      #
      #   @param frequency_cap [Object, nil] Impression cap; only valid for reach optimization.
      #
      #   @param impressions [Float] The number of impressions.
      #
      #   @param issues [Array<WhopSDK::Models::AdGroup::Issue>]
      #
      #   @param languages [Array<String>]
      #
      #   @param leads [Float] Whop pixel-attributed leads, last-click.
      #
      #   @param message_apps [Array<String>]
      #
      #   @param minimum_daily_spend [Float, nil] Daily spend floor within the budget.
      #
      #   @param optimization_goal [String, nil] What the ad group optimizes for.
      #
      #   @param placements [Array<Object>]
      #
      #   @param purchase_value [Float] USD value of pixel-attributed purchases.
      #
      #   @param purchases [Float] Whop pixel-attributed purchases, last-click.
      #
      #   @param reach [Float] The number of unique people who saw this.
      #
      #   @param regions [Object] Geo targeting: include/exclude countries, regions (ISO 3166-2 states, e.g. US-CA
      #
      #   @param result_event [Symbol, WhopSDK::Models::AdGroup::ResultEvent, nil] The Whop pixel conversion event whose attributed count represents results — the
      #
      #   @param result_event_name [String, nil] The merchant-defined event name when result_event is custom; null for the standa
      #
      #   @param results [Float, nil] The Whop pixel-attributed count behind result_event. When a campaign's ad groups
      #
      #   @param return_on_ad_spend [Float] Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
      #
      #   @param schedules [Float] Whop pixel-attributed schedule events, last-click.
      #
      #   @param spend [Float] The amount charged, in spend_currency.
      #
      #   @param spend_currency [String, nil] The ISO 4217 currency code of all monetary metrics.
      #
      #   @param starts_at [String, nil] Schedule start, ISO 8601.
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroup::Status] Delivery status of the ad group.
      #
      #   @param submitted_applications [Float] Whop pixel-attributed submit-application events, last-click.
      #
      #   @param title [String, nil] The display title of the ad group.
      #
      #   @param unique_click_through_rate [Float, nil] Unique clicks divided by impressions, between 0 and 1.
      #
      #   @param unique_clicks [Float] The number of unique clicks.
      #
      #   @param updated_at [String] When the ad group was last updated, ISO 8601.
      #
      #   @param viewed_contents [Float] Whop pixel-attributed view-content events, last-click.

      # @see WhopSDK::Models::AdGroup#ad_campaign
      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The referenced entity's id.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ad campaign this ad group belongs to, an object with an id.
        #
        #   @param id [String] The referenced entity's id.
      end

      # Bid strategy.
      #
      # @see WhopSDK::Models::AdGroup#bid_type
      module BidType
        extend WhopSDK::Internal::Type::Enum

        MINIMUM_COST = :minimum_cost
        AVERAGE_TARGET = :average_target
        MAXIMUM_TARGET = :maximum_target

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether the budget is daily or lifetime.
      #
      # @see WhopSDK::Models::AdGroup#budget_type
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        LIFETIME = :lifetime

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      # @see WhopSDK::Models::AdGroup#conversion_event
      module ConversionEvent
        extend WhopSDK::Internal::Type::Union

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::PURCHASE }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::ADD_TO_CART }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::INITIATED_CHECKOUT }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::ADD_PAYMENT_INFO }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::COMPLETE_REGISTRATION }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::LEAD }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::CONTENT_VIEW }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::SEARCH }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::CONTACT }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::CUSTOMIZE_PRODUCT }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::DONATE }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::FIND_LOCATION }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::SCHEDULE }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::START_TRIAL }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::SUBMIT_APPLICATION }

        variant const: -> { WhopSDK::Models::AdGroup::ConversionEvent::SUBSCRIBE }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(WhopSDK::AdGroup::ConversionEvent::TaggedSymbol, String) }
        end

        # @!group

        PURCHASE = :purchase
        ADD_TO_CART = :add_to_cart
        INITIATED_CHECKOUT = :initiated_checkout
        ADD_PAYMENT_INFO = :add_payment_info
        COMPLETE_REGISTRATION = :complete_registration
        LEAD = :lead
        CONTENT_VIEW = :content_view
        SEARCH = :search
        CONTACT = :contact
        CUSTOMIZE_PRODUCT = :customize_product
        DONATE = :donate
        FIND_LOCATION = :find_location
        SCHEDULE = :schedule
        START_TRIAL = :start_trial
        SUBMIT_APPLICATION = :submit_application
        SUBSCRIBE = :subscribe

        # @!endgroup
      end

      # Where results happen: website, profile (IG/FB), messaging (DM), on_ad
      # (engagement), or the lead destinations (instant_forms,
      # instant_forms_and_messenger, website_and_instant_forms).
      #
      # @see WhopSDK::Models::AdGroup#conversion_location
      module ConversionLocation
        extend WhopSDK::Internal::Type::Enum

        WEBSITE = :website
        PROFILE = :profile
        MESSAGING = :messaging
        ON_AD = :on_ad
        INSTANT_FORMS = :instant_forms
        INSTANT_FORMS_AND_MESSENGER = :instant_forms_and_messenger
        WEBSITE_AND_INSTANT_FORMS = :website_and_instant_forms

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current delivery state, mirroring the Delivery column in the ads dashboard.
      # When several states apply at once, the highest-precedence one is returned.
      #
      # @see WhopSDK::Models::AdGroup#delivery_status
      module DeliveryStatus
        extend WhopSDK::Internal::Type::Enum

        ALL_ADS_REJECTED = :all_ads_rejected
        REJECTED = :rejected
        DRAFT = :draft
        NO_ADS = :no_ads
        CAMPAIGN_PAUSED = :campaign_paused
        PAUSED = :paused
        PROCESSING = :processing
        ISSUES = :issues
        SCHEDULED = :scheduled
        COMPLETED = :completed
        ADS_OFF = :ads_off
        LEARNING_LIMITED = :learning_limited
        LEARNING = :learning
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
        #   @return [Symbol, WhopSDK::Models::AdGroup::Issue::ResourceType]
        required :resource_type, enum: -> { WhopSDK::AdGroup::Issue::ResourceType }

        # @!method initialize(id:, message:, resource_id:, resource_type:)
        #   Open issues affecting this ad group and its descendant ads. Empty when there are
        #   none.
        #
        #   @param id [String] Unique identifier for the issue.
        #
        #   @param message [String] A description of what the issue is and how it can be resolved.
        #
        #   @param resource_id [String, nil] The ID of the campaign, ad group, or ad the issue is attached to.
        #
        #   @param resource_type [Symbol, WhopSDK::Models::AdGroup::Issue::ResourceType] The type of resource the issue is attached to.

        # The type of resource the issue is attached to.
        #
        # @see WhopSDK::Models::AdGroup::Issue#resource_type
        module ResourceType
          extend WhopSDK::Internal::Type::Enum

          AD_CAMPAIGN = :ad_campaign
          AD_GROUP = :ad_group
          AD = :ad

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The Whop pixel conversion event whose attributed count represents results — the
      # optimization goal, or the highest-volume attributed event for campaigns that
      # budget per ad group. Null when the goal isn't a Whop-attributed event.
      #
      # @see WhopSDK::Models::AdGroup#result_event
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

      # Delivery status of the ad group.
      #
      # @see WhopSDK::Models::AdGroup#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

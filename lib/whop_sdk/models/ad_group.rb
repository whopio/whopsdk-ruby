# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#retrieve
    class AdGroup < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the ad group, prefixed `adgrp_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad group belongs to.
      #
      #   @return [WhopSDK::Models::AdGroup::AdCampaign]
      required :ad_campaign, -> { WhopSDK::AdGroup::AdCampaign }

      # @!attribute added_to_cart_value
      #   USD value attributed to add-to-cart events. Sums the value sent with each event,
      #   normalized to USD; events without a value contribute 0.
      #
      #   @return [Float]
      required :added_to_cart_value, Float

      # @!attribute added_to_carts
      #   Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @return [Float]
      required :added_to_carts, Float

      # @!attribute audiences
      #   Saved audiences this ad group delivers to or excludes.
      #
      #   @return [WhopSDK::Models::AdGroup::Audiences]
      required :audiences, -> { WhopSDK::AdGroup::Audiences }

      # @!attribute bid_type
      #   How delivery bids are set in the ad auction. Target-based strategies use
      #   `desired_cost_per_result`.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::BidType, nil]
      required :bid_type, enum: -> { WhopSDK::AdGroup::BidType }, nil?: true

      # @!attribute budget_amount
      #   This ad group's budget, in the ad account's currency. `null` when the budget is
      #   set on the campaign instead.
      #
      #   @return [Float, nil]
      required :budget_amount, Float, nil?: true

      # @!attribute budget_type
      #   Whether `budget_amount` is spent per day (`daily`) or over the ad group's full
      #   run (`lifetime`).
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

      # @!attribute completed_registration_value
      #   USD value attributed to complete-registration events. Sums the value sent with
      #   each event, normalized to USD; events without a value contribute 0.
      #
      #   @return [Float]
      required :completed_registration_value, Float

      # @!attribute completed_registrations
      #   Whop pixel-attributed complete-registration events, last-click.
      #
      #   @return [Float]
      required :completed_registrations, Float

      # @!attribute contact_value
      #   USD value attributed to contact events. Sums the value sent with each event,
      #   normalized to USD; events without a value contribute 0.
      #
      #   @return [Float]
      required :contact_value, Float

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

      # @!attribute cost_per_unique_click
      #   Spend divided by unique clicks; null when there are no unique clicks.
      #
      #   @return [Float, nil]
      required :cost_per_unique_click, Float, nil?: true

      # @!attribute cost_per_viewed_content
      #   Spend divided by attributed view-content events; null when they are not the goal
      #   and none are attributed.
      #
      #   @return [Float, nil]
      required :cost_per_viewed_content, Float, nil?: true

      # @!attribute created_at
      #   When the ad group was created, as an ISO 8601 timestamp.
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
      #   Whop pixel-attributed custom conversions, keyed by your event name with its
      #   last-click count as the value. Empty when no named custom events are attributed.
      #   Custom events fired without a name are counted in custom_conversions but omitted
      #   here, so these values sum to at most custom_conversions.
      #
      #   @return [Object]
      required :custom_event_counts, WhopSDK::Internal::Type::Unknown

      # @!attribute custom_event_values
      #   Conversion value attributed to each custom event, keyed by event name like
      #   custom_event_counts. Sums the value passed to whop.track, normalized to USD;
      #   events fired without a value contribute 0.
      #
      #   @return [Object]
      required :custom_event_values, WhopSDK::Internal::Type::Unknown

      # @!attribute delivery_status
      #   Whether ads in this ad group are delivering right now, and if not, why. When
      #   several states apply at once, the highest-precedence one is returned.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::DeliveryStatus]
      required :delivery_status, enum: -> { WhopSDK::AdGroup::DeliveryStatus }

      # @!attribute demographics
      #   Age, gender, and automatic-audience targeting.
      #
      #   @return [WhopSDK::Models::AdGroup::Demographics]
      required :demographics, -> { WhopSDK::AdGroup::Demographics }

      # @!attribute desired_cost_per_result
      #   Cost per result to aim for (`average_target`) or never exceed
      #   (`maximum_target`). `null` for `minimum_cost` bidding.
      #
      #   @return [Float, nil]
      required :desired_cost_per_result, Float, nil?: true

      # @!attribute detailed_targeting
      #   Interest, behavior, and demographic targeting, using categories from the ad
      #   platform's targeting taxonomy. Entries across interests, behaviors, and
      #   demographics are OR'd together (anyone matching any entry is reached), matching
      #   Ads Manager's detailed-targeting box. Can't be combined with automatic audience
      #   targeting. Special ad category campaigns are limited to approved interests.
      #
      #   @return [WhopSDK::Models::AdGroup::DetailedTargeting]
      required :detailed_targeting, -> { WhopSDK::AdGroup::DetailedTargeting }

      # @!attribute devices
      #   Device platforms and operating systems targeted.
      #
      #   @return [WhopSDK::Models::AdGroup::Devices]
      required :devices, -> { WhopSDK::AdGroup::Devices }

      # @!attribute ends_at
      #   When the ad group stops delivering, as an ISO 8601 timestamp. `null` when it
      #   runs until paused.
      #
      #   @return [String, nil]
      required :ends_at, String, nil?: true

      # @!attribute frequency
      #   Platform-reported impressions divided by reach.
      #
      #   @return [Float, nil]
      required :frequency, Float, nil?: true

      # @!attribute frequency_cap
      #   Cap on how often one person sees ads from this ad group. Only available on
      #   campaigns with the `awareness` objective; `null` when uncapped.
      #
      #   @return [WhopSDK::Models::AdGroup::FrequencyCap, nil]
      required :frequency_cap, -> { WhopSDK::AdGroup::FrequencyCap }, nil?: true

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

      # @!attribute lead_value
      #   USD value attributed to lead events. Sums the value sent with each event,
      #   normalized to USD; events without a value contribute 0.
      #
      #   @return [Float]
      required :lead_value, Float

      # @!attribute leads
      #   Whop pixel-attributed leads, last-click.
      #
      #   @return [Float]
      required :leads, Float

      # @!attribute link_clicks
      #   Clicks on links in the ad that lead to your destination, as reported by the ad
      #   platform. A subset of clicks, which also counts likes, comments, and other
      #   interactions with the ad.
      #
      #   @return [Float]
      required :link_clicks, Float

      # @!attribute optimization_goal
      #   The result the ad group's delivery is optimized to get the most of.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::OptimizationGoal, nil]
      required :optimization_goal, enum: -> { WhopSDK::AdGroup::OptimizationGoal }, nil?: true

      # @!attribute placements
      #
      #   @return [Array<WhopSDK::Models::AdGroup::Placement>]
      required :placements, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Placement] }

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
      #   Locations targeted and excluded.
      #
      #   @return [WhopSDK::Models::AdGroup::Regions]
      required :regions, -> { WhopSDK::AdGroup::Regions }

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

      # @!attribute schedule_value
      #   USD value attributed to schedule events. Sums the value sent with each event,
      #   normalized to USD; events without a value contribute 0.
      #
      #   @return [Float]
      required :schedule_value, Float

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
      #   When the ad group starts delivering, as an ISO 8601 timestamp. `null` when it
      #   starts as soon as it's active.
      #
      #   @return [String, nil]
      required :starts_at, String, nil?: true

      # @!attribute status
      #   Whether the ad group is enabled. `active` and `paused` are set by you;
      #   `rejected` means it failed ad review; `duplicating` is a copy still being filled
      #   in.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::Status]
      required :status, enum: -> { WhopSDK::AdGroup::Status }

      # @!attribute submitted_application_value
      #   USD value attributed to submit-application events. Sums the value sent with each
      #   event, normalized to USD; events without a value contribute 0.
      #
      #   @return [Float]
      required :submitted_application_value, Float

      # @!attribute submitted_applications
      #   Whop pixel-attributed submit-application events, last-click.
      #
      #   @return [Float]
      required :submitted_applications, Float

      # @!attribute title
      #   Display name of the ad group.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute unique_click_through_rate
      #   Unique clicks divided by impressions, between 0 and 1.
      #
      #   @return [Float, nil]
      required :unique_click_through_rate, Float, nil?: true

      # @!attribute unique_clicks
      #   People who clicked, reported by the Whop pixel, counted once per person.
      #
      #   @return [Float]
      required :unique_clicks, Float

      # @!attribute updated_at
      #   When the ad group was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute viewed_content_value
      #   USD value attributed to view-content events. Sums the value sent with each
      #   event, normalized to USD; events without a value contribute 0.
      #
      #   @return [Float]
      required :viewed_content_value, Float

      # @!attribute viewed_contents
      #   Whop pixel-attributed view-content events, last-click.
      #
      #   @return [Float]
      required :viewed_contents, Float

      # @!attribute conversion_location
      #   Where the outcome being optimized for occurs, such as a website visit,
      #   social-profile visit, messaging conversation, ad interaction, or lead-form
      #   submission.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroup::ConversionLocation, nil]
      optional :conversion_location, enum: -> { WhopSDK::AdGroup::ConversionLocation }, nil?: true

      # @!attribute dynamic_creative
      #   Whether the ad platform automatically mixes and matches this ad group's
      #   creatives and copy to find the best-performing combinations.
      #
      #   @return [Boolean, nil]
      optional :dynamic_creative, WhopSDK::Internal::Type::Boolean

      # @!attribute message_apps
      #
      #   @return [Array<Symbol, WhopSDK::Models::AdGroup::MessageApp>, nil]
      optional :message_apps, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroup::MessageApp] }

      # @!attribute minimum_daily_spend
      #   Minimum the ad group tries to spend each day. `null` when no floor is set.
      #
      #   @return [Float, nil]
      optional :minimum_daily_spend, Float, nil?: true

      # @!method initialize(id:, ad_campaign:, added_to_cart_value:, added_to_carts:, audiences:, bid_type:, budget_amount:, budget_type:, click_through_rate:, clicks:, completed_registration_value:, completed_registrations:, contact_value:, contacts:, conversion_event:, cost_per_added_to_cart:, cost_per_click:, cost_per_completed_registration:, cost_per_contact:, cost_per_lead:, cost_per_mille:, cost_per_purchase:, cost_per_result:, cost_per_schedule:, cost_per_submitted_application:, cost_per_unique_click:, cost_per_viewed_content:, created_at:, custom_conversions:, custom_event_counts:, custom_event_values:, delivery_status:, demographics:, desired_cost_per_result:, detailed_targeting:, devices:, ends_at:, frequency:, frequency_cap:, impressions:, issues:, languages:, lead_value:, leads:, link_clicks:, optimization_goal:, placements:, purchase_value:, purchases:, reach:, regions:, result_event:, result_event_name:, results:, return_on_ad_spend:, schedule_value:, schedules:, spend:, spend_currency:, starts_at:, status:, submitted_application_value:, submitted_applications:, title:, unique_click_through_rate:, unique_clicks:, updated_at:, viewed_content_value:, viewed_contents:, conversion_location: nil, dynamic_creative: nil, message_apps: nil, minimum_daily_spend: nil)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::AdGroup}
      #   for more details.
      #
      #   @param id [String] Unique identifier for the ad group, prefixed `adgrp_`.
      #
      #   @param ad_campaign [WhopSDK::Models::AdGroup::AdCampaign] The ad campaign this ad group belongs to.
      #
      #   @param added_to_cart_value [Float] USD value attributed to add-to-cart events. Sums the value sent with each event,
      #
      #   @param added_to_carts [Float] Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @param audiences [WhopSDK::Models::AdGroup::Audiences] Saved audiences this ad group delivers to or excludes.
      #
      #   @param bid_type [Symbol, WhopSDK::Models::AdGroup::BidType, nil] How delivery bids are set in the ad auction. Target-based strategies use `desire
      #
      #   @param budget_amount [Float, nil] This ad group's budget, in the ad account's currency. `null` when the budget is
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdGroup::BudgetType, nil] Whether `budget_amount` is spent per day (`daily`) or over the ad group's full r
      #
      #   @param click_through_rate [Float] Clicks divided by impressions, between 0 and 1.
      #
      #   @param clicks [Float] The number of clicks.
      #
      #   @param completed_registration_value [Float] USD value attributed to complete-registration events. Sums the value sent with e
      #
      #   @param completed_registrations [Float] Whop pixel-attributed complete-registration events, last-click.
      #
      #   @param contact_value [Float] USD value attributed to contact events. Sums the value sent with each event, nor
      #
      #   @param contacts [Float] Whop pixel-attributed contact events, last-click.
      #
      #   @param conversion_event [Symbol, String, WhopSDK::Models::AdGroup::ConversionEvent, nil] The pixel event optimized for. A standard event, or any custom pixel event name.
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
      #   @param cost_per_unique_click [Float, nil] Spend divided by unique clicks; null when there are no unique clicks.
      #
      #   @param cost_per_viewed_content [Float, nil] Spend divided by attributed view-content events; null when they are not the goal
      #
      #   @param created_at [String] When the ad group was created, as an ISO 8601 timestamp.
      #
      #   @param custom_conversions [Float] Whop pixel-attributed custom (merchant-defined) conversion events, last-click, a
      #
      #   @param custom_event_counts [Object] Whop pixel-attributed custom conversions, keyed by your event name with its last
      #
      #   @param custom_event_values [Object] Conversion value attributed to each custom event, keyed by event name like custo
      #
      #   @param delivery_status [Symbol, WhopSDK::Models::AdGroup::DeliveryStatus] Whether ads in this ad group are delivering right now, and if not, why. When sev
      #
      #   @param demographics [WhopSDK::Models::AdGroup::Demographics] Age, gender, and automatic-audience targeting.
      #
      #   @param desired_cost_per_result [Float, nil] Cost per result to aim for (`average_target`) or never exceed (`maximum_target`)
      #
      #   @param detailed_targeting [WhopSDK::Models::AdGroup::DetailedTargeting] Interest, behavior, and demographic targeting, using categories from the ad plat
      #
      #   @param devices [WhopSDK::Models::AdGroup::Devices] Device platforms and operating systems targeted.
      #
      #   @param ends_at [String, nil] When the ad group stops delivering, as an ISO 8601 timestamp. `null` when it run
      #
      #   @param frequency [Float, nil] Platform-reported impressions divided by reach.
      #
      #   @param frequency_cap [WhopSDK::Models::AdGroup::FrequencyCap, nil] Cap on how often one person sees ads from this ad group. Only available on campa
      #
      #   @param impressions [Float] The number of impressions.
      #
      #   @param issues [Array<WhopSDK::Models::AdGroup::Issue>]
      #
      #   @param languages [Array<String>]
      #
      #   @param lead_value [Float] USD value attributed to lead events. Sums the value sent with each event, normal
      #
      #   @param leads [Float] Whop pixel-attributed leads, last-click.
      #
      #   @param link_clicks [Float] Clicks on links in the ad that lead to your destination, as reported by the ad p
      #
      #   @param optimization_goal [Symbol, WhopSDK::Models::AdGroup::OptimizationGoal, nil] The result the ad group's delivery is optimized to get the most of.
      #
      #   @param placements [Array<WhopSDK::Models::AdGroup::Placement>]
      #
      #   @param purchase_value [Float] USD value of pixel-attributed purchases.
      #
      #   @param purchases [Float] Whop pixel-attributed purchases, last-click.
      #
      #   @param reach [Float] The number of unique people who saw this.
      #
      #   @param regions [WhopSDK::Models::AdGroup::Regions] Locations targeted and excluded.
      #
      #   @param result_event [Symbol, WhopSDK::Models::AdGroup::ResultEvent, nil] The Whop pixel conversion event whose attributed count represents results — the
      #
      #   @param result_event_name [String, nil] The merchant-defined event name when result_event is custom; null for the standa
      #
      #   @param results [Float, nil] The Whop pixel-attributed count behind result_event. When a campaign's ad groups
      #
      #   @param return_on_ad_spend [Float] Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
      #
      #   @param schedule_value [Float] USD value attributed to schedule events. Sums the value sent with each event, no
      #
      #   @param schedules [Float] Whop pixel-attributed schedule events, last-click.
      #
      #   @param spend [Float] The amount charged, in spend_currency.
      #
      #   @param spend_currency [String, nil] The ISO 4217 currency code of all monetary metrics.
      #
      #   @param starts_at [String, nil] When the ad group starts delivering, as an ISO 8601 timestamp. `null` when it st
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroup::Status] Whether the ad group is enabled. `active` and `paused` are set by you; `rejected
      #
      #   @param submitted_application_value [Float] USD value attributed to submit-application events. Sums the value sent with each
      #
      #   @param submitted_applications [Float] Whop pixel-attributed submit-application events, last-click.
      #
      #   @param title [String, nil] Display name of the ad group.
      #
      #   @param unique_click_through_rate [Float, nil] Unique clicks divided by impressions, between 0 and 1.
      #
      #   @param unique_clicks [Float] People who clicked, reported by the Whop pixel, counted once per person.
      #
      #   @param updated_at [String] When the ad group was last updated, as an ISO 8601 timestamp.
      #
      #   @param viewed_content_value [Float] USD value attributed to view-content events. Sums the value sent with each event
      #
      #   @param viewed_contents [Float] Whop pixel-attributed view-content events, last-click.
      #
      #   @param conversion_location [Symbol, WhopSDK::Models::AdGroup::ConversionLocation, nil] Where the outcome being optimized for occurs, such as a website visit, social-pr
      #
      #   @param dynamic_creative [Boolean] Whether the ad platform automatically mixes and matches this ad group's creative
      #
      #   @param message_apps [Array<Symbol, WhopSDK::Models::AdGroup::MessageApp>]
      #
      #   @param minimum_daily_spend [Float, nil] Minimum the ad group tries to spend each day. `null` when no floor is set.

      # @see WhopSDK::Models::AdGroup#ad_campaign
      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The referenced entity's id.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ad campaign this ad group belongs to.
        #
        #   @param id [String] The referenced entity's id.
      end

      # @see WhopSDK::Models::AdGroup#audiences
      class Audiences < WhopSDK::Internal::Type::BaseModel
        # @!attribute exclude
        #
        #   @return [Array<String>]
        required :exclude, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute include
        #
        #   @return [Array<String>]
        required :include, WhopSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(exclude:, include:)
        #   Saved audiences this ad group delivers to or excludes.
        #
        #   @param exclude [Array<String>]
        #   @param include [Array<String>]
      end

      # How delivery bids are set in the ad auction. Target-based strategies use
      # `desired_cost_per_result`.
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

      # Whether `budget_amount` is spent per day (`daily`) or over the ad group's full
      # run (`lifetime`).
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

      # Whether ads in this ad group are delivering right now, and if not, why. When
      # several states apply at once, the highest-precedence one is returned.
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

      # @see WhopSDK::Models::AdGroup#demographics
      class Demographics < WhopSDK::Internal::Type::BaseModel
        # @!attribute automatic
        #   Whether automatic audience targeting is on (Advantage+ on Meta). When `true`,
        #   the platform can deliver beyond the ages, genders, and detailed targeting you
        #   set, treating them as suggestions.
        #
        #   @return [Boolean]
        required :automatic, WhopSDK::Internal::Type::Boolean

        # @!attribute gender
        #   Gender targeted.
        #
        #   @return [Symbol, WhopSDK::Models::AdGroup::Demographics::Gender]
        required :gender, enum: -> { WhopSDK::AdGroup::Demographics::Gender }

        # @!attribute maximum_age
        #   Oldest age targeted. `null` when no maximum is set.
        #
        #   @return [Float, nil]
        required :maximum_age, Float, nil?: true

        # @!attribute minimum_age
        #   Youngest age targeted. `null` when no minimum is set.
        #
        #   @return [Float, nil]
        required :minimum_age, Float, nil?: true

        # @!method initialize(automatic:, gender:, maximum_age:, minimum_age:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdGroup::Demographics} for more details.
        #
        #   Age, gender, and automatic-audience targeting.
        #
        #   @param automatic [Boolean] Whether automatic audience targeting is on (Advantage+ on Meta). When `true`, th
        #
        #   @param gender [Symbol, WhopSDK::Models::AdGroup::Demographics::Gender] Gender targeted.
        #
        #   @param maximum_age [Float, nil] Oldest age targeted. `null` when no maximum is set.
        #
        #   @param minimum_age [Float, nil] Youngest age targeted. `null` when no minimum is set.

        # Gender targeted.
        #
        # @see WhopSDK::Models::AdGroup::Demographics#gender
        module Gender
          extend WhopSDK::Internal::Type::Enum

          ALL = :all
          MALE = :male
          FEMALE = :female

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::AdGroup#detailed_targeting
      class DetailedTargeting < WhopSDK::Internal::Type::BaseModel
        # @!attribute behaviors
        #
        #   @return [Array<WhopSDK::Models::AdGroup::DetailedTargeting::Behavior>]
        required :behaviors,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::DetailedTargeting::Behavior] }

        # @!attribute demographics
        #
        #   @return [Array<WhopSDK::Models::AdGroup::DetailedTargeting::Demographic>]
        required :demographics,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::DetailedTargeting::Demographic] }

        # @!attribute interests
        #
        #   @return [Array<WhopSDK::Models::AdGroup::DetailedTargeting::Interest>]
        required :interests,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::DetailedTargeting::Interest] }

        # @!method initialize(behaviors:, demographics:, interests:)
        #   Interest, behavior, and demographic targeting, using categories from the ad
        #   platform's targeting taxonomy. Entries across interests, behaviors, and
        #   demographics are OR'd together (anyone matching any entry is reached), matching
        #   Ads Manager's detailed-targeting box. Can't be combined with automatic audience
        #   targeting. Special ad category campaigns are limited to approved interests.
        #
        #   @param behaviors [Array<WhopSDK::Models::AdGroup::DetailedTargeting::Behavior>]
        #   @param demographics [Array<WhopSDK::Models::AdGroup::DetailedTargeting::Demographic>]
        #   @param interests [Array<WhopSDK::Models::AdGroup::DetailedTargeting::Interest>]

        class Behavior < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @return [String]
          required :id, String

          # @!attribute behavior_type
          #   On ad platforms that scope behavior categories, what this one is measured on.
          #   Send back the value the targeting_options endpoint returned alongside the id.
          #   Absent on platforms that don't scope them.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroup::DetailedTargeting::Behavior::BehaviorType, nil]
          optional :behavior_type, enum: -> { WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType }

          # @!attribute name
          #   Category name, such as `Frequent travelers`.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute period
          #   On ad platforms that scope behavior categories, how many days of activity the
          #   category covers. Absent on platforms that don't scope them.
          #
          #   @return [Float, nil]
          optional :period, Float

          # @!method initialize(id:, behavior_type: nil, name: nil, period: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroup::DetailedTargeting::Behavior} for more details.
          #
          #   Behavior categories targeted, such as frequent travelers.
          #
          #   @param id [String] The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @param behavior_type [Symbol, WhopSDK::Models::AdGroup::DetailedTargeting::Behavior::BehaviorType] On ad platforms that scope behavior categories, what this one is measured on. Se
          #
          #   @param name [String] Category name, such as `Frequent travelers`.
          #
          #   @param period [Float] On ad platforms that scope behavior categories, how many days of activity the ca

          # On ad platforms that scope behavior categories, what this one is measured on.
          # Send back the value the targeting_options endpoint returned alongside the id.
          # Absent on platforms that don't scope them.
          #
          # @see WhopSDK::Models::AdGroup::DetailedTargeting::Behavior#behavior_type
          module BehaviorType
            extend WhopSDK::Internal::Type::Enum

            VIDEO = :video
            CREATOR = :creator
            HASHTAG = :hashtag

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Demographic < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #   Kind of demographic the category belongs to.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroup::DetailedTargeting::Demographic::Type]
          required :type, enum: -> { WhopSDK::AdGroup::DetailedTargeting::Demographic::Type }

          # @!attribute name
          #   Category name, such as `Recently moved`.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id:, type:, name: nil)
          #   Demographic categories targeted, such as life events, industries, work
          #   employers, job titles, schools, or majors. OR'd with interests and behaviors.
          #
          #   @param id [String] The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @param type [Symbol, WhopSDK::Models::AdGroup::DetailedTargeting::Demographic::Type] Kind of demographic the category belongs to.
          #
          #   @param name [String] Category name, such as `Recently moved`.

          # Kind of demographic the category belongs to.
          #
          # @see WhopSDK::Models::AdGroup::DetailedTargeting::Demographic#type
          module Type
            extend WhopSDK::Internal::Type::Enum

            LIFE_EVENTS = :life_events
            INDUSTRIES = :industries
            INCOME = :income
            FAMILY_STATUSES = :family_statuses
            WORK_EMPLOYERS = :work_employers
            WORK_POSITIONS = :work_positions
            EDUCATION_SCHOOLS = :education_schools
            EDUCATION_MAJORS = :education_majors

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Interest < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Category name, such as `Movies`.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id:, name: nil)
          #   Interest categories targeted, such as an interest in movies.
          #
          #   @param id [String] The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @param name [String] Category name, such as `Movies`.
        end
      end

      # @see WhopSDK::Models::AdGroup#devices
      class Devices < WhopSDK::Internal::Type::BaseModel
        # @!attribute operating_systems
        #
        #   @return [Array<WhopSDK::Models::AdGroup::Devices::OperatingSystem>]
        required :operating_systems,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Devices::OperatingSystem] }

        # @!attribute platforms
        #
        #   @return [Array<Symbol, WhopSDK::Models::AdGroup::Devices::Platform>]
        required :platforms, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroup::Devices::Platform] }

        # @!method initialize(operating_systems:, platforms:)
        #   Device platforms and operating systems targeted.
        #
        #   @param operating_systems [Array<WhopSDK::Models::AdGroup::Devices::OperatingSystem>]
        #   @param platforms [Array<Symbol, WhopSDK::Models::AdGroup::Devices::Platform>]

        class OperatingSystem < WhopSDK::Internal::Type::BaseModel
          # @!attribute os
          #   Operating system targeted.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroup::Devices::OperatingSystem::Os]
          required :os, enum: -> { WhopSDK::AdGroup::Devices::OperatingSystem::Os }

          # @!attribute minimum_version
          #   Lowest OS version targeted, such as `18.0`. Absent when any version qualifies.
          #
          #   @return [String, nil]
          optional :minimum_version, String

          # @!method initialize(os:, minimum_version: nil)
          #   Operating systems targeted. Empty targets all operating systems.
          #
          #   @param os [Symbol, WhopSDK::Models::AdGroup::Devices::OperatingSystem::Os] Operating system targeted.
          #
          #   @param minimum_version [String] Lowest OS version targeted, such as `18.0`. Absent when any version qualifies.

          # Operating system targeted.
          #
          # @see WhopSDK::Models::AdGroup::Devices::OperatingSystem#os
          module Os
            extend WhopSDK::Internal::Type::Enum

            IOS = :ios
            ANDROID = :android

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Device types targeted. Empty targets all devices.
        module Platform
          extend WhopSDK::Internal::Type::Enum

          MOBILE = :mobile
          DESKTOP = :desktop

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::AdGroup#frequency_cap
      class FrequencyCap < WhopSDK::Internal::Type::BaseModel
        # @!attribute maximum_impressions
        #   Most times one person can be shown ads from this ad group within the window.
        #
        #   @return [Float]
        required :maximum_impressions, Float

        # @!attribute per_days
        #   Length of the rolling window, in days.
        #
        #   @return [Float, nil]
        required :per_days, Float, nil?: true

        # @!method initialize(maximum_impressions:, per_days:)
        #   Cap on how often one person sees ads from this ad group. Only available on
        #   campaigns with the `awareness` objective; `null` when uncapped.
        #
        #   @param maximum_impressions [Float] Most times one person can be shown ads from this ad group within the window.
        #
        #   @param per_days [Float, nil] Length of the rolling window, in days.
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
        #   Open issues affecting this ad group and its ads. Empty when there are none.
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

      # The result the ad group's delivery is optimized to get the most of.
      #
      # @see WhopSDK::Models::AdGroup#optimization_goal
      module OptimizationGoal
        extend WhopSDK::Internal::Type::Enum

        CONVERSIONS = :conversions
        LINK_CLICKS = :link_clicks
        LANDING_PAGE_VIEWS = :landing_page_views
        REACH = :reach
        IMPRESSIONS = :impressions
        ENGAGEMENT = :engagement
        CONVERSATIONS = :conversations
        VIDEO_VIEWS = :video_views
        TWO_SECOND_VIEWS = :two_second_views
        PAGE_LIKES = :page_likes
        SOCIAL_PROFILE = :social_profile
        AD_RECALL_LIFT = :ad_recall_lift
        EVENT_RESPONSES = :event_responses
        REMINDERS_SET = :reminders_set
        LEAD_GENERATION = :lead_generation
        QUALITY_LEAD = :quality_lead
        VALUE = :value
        PROFILE_AND_PAGE_ENGAGEMENT = :profile_and_page_engagement

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Placement < WhopSDK::Internal::Type::BaseModel
        # @!attribute platform
        #   Publisher platform where the ad is eligible to appear.
        #
        #   @return [Symbol, WhopSDK::Models::AdGroup::Placement::Platform]
        required :platform, enum: -> { WhopSDK::AdGroup::Placement::Platform }

        # @!attribute positions
        #
        #   @return [Array<String>]
        required :positions, WhopSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(platform:, positions:)
        #   Where ads can appear, per platform. Empty when placements are chosen
        #   automatically.
        #
        #   @param platform [Symbol, WhopSDK::Models::AdGroup::Placement::Platform] Publisher platform where the ad is eligible to appear.
        #
        #   @param positions [Array<String>]

        # Publisher platform where the ad is eligible to appear.
        #
        # @see WhopSDK::Models::AdGroup::Placement#platform
        module Platform
          extend WhopSDK::Internal::Type::Enum

          FACEBOOK = :facebook
          INSTAGRAM = :instagram
          MESSENGER = :messenger
          AUDIENCE_NETWORK = :audience_network
          THREADS = :threads
          WHATSAPP = :whatsapp

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::AdGroup#regions
      class Regions < WhopSDK::Internal::Type::BaseModel
        # @!attribute exclude
        #   Locations excluded from targeting. Country groups can't be excluded.
        #
        #   @return [WhopSDK::Models::AdGroup::Regions::Exclude]
        required :exclude, -> { WhopSDK::AdGroup::Regions::Exclude }

        # @!attribute include
        #   Locations the ad group targets.
        #
        #   @return [WhopSDK::Models::AdGroup::Regions::Include]
        required :include, -> { WhopSDK::AdGroup::Regions::Include }

        # @!method initialize(exclude:, include:)
        #   Locations targeted and excluded.
        #
        #   @param exclude [WhopSDK::Models::AdGroup::Regions::Exclude] Locations excluded from targeting. Country groups can't be excluded.
        #
        #   @param include [WhopSDK::Models::AdGroup::Regions::Include] Locations the ad group targets.

        # @see WhopSDK::Models::AdGroup::Regions#exclude
        class Exclude < WhopSDK::Internal::Type::BaseModel
          # @!attribute cities
          #
          #   @return [Array<WhopSDK::Models::AdGroup::Regions::Exclude::City>]
          required :cities, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Regions::Exclude::City] }

          # @!attribute countries
          #
          #   @return [Array<String>]
          required :countries, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute country_groups
          #
          #   @return [Array<String>]
          required :country_groups, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_locations
          #
          #   @return [Array<WhopSDK::Models::AdGroup::Regions::Exclude::CustomLocation>]
          required :custom_locations,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Regions::Exclude::CustomLocation] }

          # @!attribute regions
          #
          #   @return [Array<String>]
          required :regions, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute zips
          #
          #   @return [Array<String>]
          required :zips, WhopSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(cities:, countries:, country_groups:, custom_locations:, regions:, zips:)
          #   Locations excluded from targeting. Country groups can't be excluded.
          #
          #   @param cities [Array<WhopSDK::Models::AdGroup::Regions::Exclude::City>]
          #   @param countries [Array<String>]
          #   @param country_groups [Array<String>]
          #   @param custom_locations [Array<WhopSDK::Models::AdGroup::Regions::Exclude::CustomLocation>]
          #   @param regions [Array<String>]
          #   @param zips [Array<String>]

          class City < WhopSDK::Internal::Type::BaseModel
            # @!attribute key
            #   The ad platform's key for the city in its location taxonomy.
            #
            #   @return [String]
            required :key, String

            # @!attribute name
            #   City name, such as `Austin`. Absent when the platform doesn't return one.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(key:, name: nil)
            #   Cities, keyed by the ad platform's location taxonomy.
            #
            #   @param key [String] The ad platform's key for the city in its location taxonomy.
            #
            #   @param name [String] City name, such as `Austin`. Absent when the platform doesn't return one.
          end

          class CustomLocation < WhopSDK::Internal::Type::BaseModel
            # @!attribute distance_unit
            #   Unit for `radius`.
            #
            #   @return [Symbol, WhopSDK::Models::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit]
            required :distance_unit, enum: -> { WhopSDK::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit }

            # @!attribute latitude
            #   Latitude of the center point.
            #
            #   @return [Float]
            required :latitude, Float

            # @!attribute longitude
            #   Longitude of the center point.
            #
            #   @return [Float]
            required :longitude, Float

            # @!attribute radius
            #   Radius around the center point, in `distance_unit`.
            #
            #   @return [Float]
            required :radius, Float

            # @!attribute name
            #   Label for the location, such as a city or address. Absent when the location has
            #   no label.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(distance_unit:, latitude:, longitude:, radius:, name: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AdGroup::Regions::Exclude::CustomLocation} for more details.
            #
            #   Circular areas, each a coordinate plus a radius.
            #
            #   @param distance_unit [Symbol, WhopSDK::Models::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit] Unit for `radius`.
            #
            #   @param latitude [Float] Latitude of the center point.
            #
            #   @param longitude [Float] Longitude of the center point.
            #
            #   @param radius [Float] Radius around the center point, in `distance_unit`.
            #
            #   @param name [String] Label for the location, such as a city or address. Absent when the location has

            # Unit for `radius`.
            #
            # @see WhopSDK::Models::AdGroup::Regions::Exclude::CustomLocation#distance_unit
            module DistanceUnit
              extend WhopSDK::Internal::Type::Enum

              MILE = :mile
              KILOMETER = :kilometer

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see WhopSDK::Models::AdGroup::Regions#include
        class Include < WhopSDK::Internal::Type::BaseModel
          # @!attribute cities
          #
          #   @return [Array<WhopSDK::Models::AdGroup::Regions::Include::City>]
          required :cities, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Regions::Include::City] }

          # @!attribute countries
          #
          #   @return [Array<String>]
          required :countries, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute country_groups
          #
          #   @return [Array<String>]
          required :country_groups, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_locations
          #
          #   @return [Array<WhopSDK::Models::AdGroup::Regions::Include::CustomLocation>]
          required :custom_locations,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Regions::Include::CustomLocation] }

          # @!attribute regions
          #
          #   @return [Array<String>]
          required :regions, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute zips
          #
          #   @return [Array<String>]
          required :zips, WhopSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(cities:, countries:, country_groups:, custom_locations:, regions:, zips:)
          #   Locations the ad group targets.
          #
          #   @param cities [Array<WhopSDK::Models::AdGroup::Regions::Include::City>]
          #   @param countries [Array<String>]
          #   @param country_groups [Array<String>]
          #   @param custom_locations [Array<WhopSDK::Models::AdGroup::Regions::Include::CustomLocation>]
          #   @param regions [Array<String>]
          #   @param zips [Array<String>]

          class City < WhopSDK::Internal::Type::BaseModel
            # @!attribute key
            #   The ad platform's key for the city in its location taxonomy.
            #
            #   @return [String]
            required :key, String

            # @!attribute name
            #   City name, such as `Austin`. Absent when the platform doesn't return one.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(key:, name: nil)
            #   Cities, keyed by the ad platform's location taxonomy.
            #
            #   @param key [String] The ad platform's key for the city in its location taxonomy.
            #
            #   @param name [String] City name, such as `Austin`. Absent when the platform doesn't return one.
          end

          class CustomLocation < WhopSDK::Internal::Type::BaseModel
            # @!attribute distance_unit
            #   Unit for `radius`.
            #
            #   @return [Symbol, WhopSDK::Models::AdGroup::Regions::Include::CustomLocation::DistanceUnit]
            required :distance_unit, enum: -> { WhopSDK::AdGroup::Regions::Include::CustomLocation::DistanceUnit }

            # @!attribute latitude
            #   Latitude of the center point.
            #
            #   @return [Float]
            required :latitude, Float

            # @!attribute longitude
            #   Longitude of the center point.
            #
            #   @return [Float]
            required :longitude, Float

            # @!attribute radius
            #   Radius around the center point, in `distance_unit`.
            #
            #   @return [Float]
            required :radius, Float

            # @!attribute name
            #   Label for the location, such as a city or address. Absent when the location has
            #   no label.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(distance_unit:, latitude:, longitude:, radius:, name: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AdGroup::Regions::Include::CustomLocation} for more details.
            #
            #   Circular areas, each a coordinate plus a radius.
            #
            #   @param distance_unit [Symbol, WhopSDK::Models::AdGroup::Regions::Include::CustomLocation::DistanceUnit] Unit for `radius`.
            #
            #   @param latitude [Float] Latitude of the center point.
            #
            #   @param longitude [Float] Longitude of the center point.
            #
            #   @param radius [Float] Radius around the center point, in `distance_unit`.
            #
            #   @param name [String] Label for the location, such as a city or address. Absent when the location has

            # Unit for `radius`.
            #
            # @see WhopSDK::Models::AdGroup::Regions::Include::CustomLocation#distance_unit
            module DistanceUnit
              extend WhopSDK::Internal::Type::Enum

              MILE = :mile
              KILOMETER = :kilometer

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
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
        MESSAGING_CONVERSATION = :messaging_conversation

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether the ad group is enabled. `active` and `paused` are set by you;
      # `rejected` means it failed ad review; `duplicating` is a copy still being filled
      # in.
      #
      # @see WhopSDK::Models::AdGroup#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        REJECTED = :rejected
        DUPLICATING = :duplicating

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Where the outcome being optimized for occurs, such as a website visit,
      # social-profile visit, messaging conversation, ad interaction, or lead-form
      # submission.
      #
      # @see WhopSDK::Models::AdGroup#conversion_location
      module ConversionLocation
        extend WhopSDK::Internal::Type::Enum

        WEBSITE = :website
        PROFILE = :profile
        INSTAGRAM_AND_FACEBOOK = :instagram_and_facebook
        INSTAGRAM_PROFILE = :instagram_profile
        MESSAGING = :messaging
        ON_AD = :on_ad
        INSTANT_FORMS = :instant_forms
        INSTANT_FORMS_AND_MESSENGER = :instant_forms_and_messenger
        WEBSITE_AND_INSTANT_FORMS = :website_and_instant_forms

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Apps the conversation opens in when `conversion_location` is `messaging`. Empty
      # for other conversion locations.
      module MessageApp
        extend WhopSDK::Internal::Type::Enum

        MESSENGER = :messenger
        INSTAGRAM = :instagram
        WHATSAPP = :whatsapp

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

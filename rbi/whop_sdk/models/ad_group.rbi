# typed: strong

module WhopSDK
  module Models
    class AdGroup < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::AdGroup, WhopSDK::Internal::AnyHash) }

      # Unique identifier for the ad group, prefixed `adgrp_`.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad group belongs to.
      sig { returns(WhopSDK::AdGroup::AdCampaign) }
      attr_reader :ad_campaign

      sig { params(ad_campaign: WhopSDK::AdGroup::AdCampaign::OrHash).void }
      attr_writer :ad_campaign

      # USD value attributed to add-to-cart events. Sums the value sent with each event,
      # normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :added_to_cart_value

      # Whop pixel-attributed add-to-cart events, last-click.
      sig { returns(Float) }
      attr_accessor :added_to_carts

      # Saved audiences this ad group delivers to or excludes.
      sig { returns(WhopSDK::AdGroup::Audiences) }
      attr_reader :audiences

      sig { params(audiences: WhopSDK::AdGroup::Audiences::OrHash).void }
      attr_writer :audiences

      # How delivery bids are set in the ad auction. Target-based strategies use
      # `desired_cost_per_result`.
      sig { returns(T.nilable(WhopSDK::AdGroup::BidType::TaggedSymbol)) }
      attr_accessor :bid_type

      # This ad group's budget, in the ad account's currency. `null` when the budget is
      # set on the campaign instead.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget_amount

      # Whether `budget_amount` is spent per day (`daily`) or over the ad group's full
      # run (`lifetime`).
      sig { returns(T.nilable(WhopSDK::AdGroup::BudgetType::TaggedSymbol)) }
      attr_accessor :budget_type

      # Clicks divided by impressions, between 0 and 1.
      sig { returns(Float) }
      attr_accessor :click_through_rate

      # The number of clicks.
      sig { returns(Float) }
      attr_accessor :clicks

      # USD value attributed to complete-registration events. Sums the value sent with
      # each event, normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :completed_registration_value

      # Whop pixel-attributed complete-registration events, last-click.
      sig { returns(Float) }
      attr_accessor :completed_registrations

      # USD value attributed to contact events. Sums the value sent with each event,
      # normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :contact_value

      # Whop pixel-attributed contact events, last-click.
      sig { returns(Float) }
      attr_accessor :contacts

      # The pixel event optimized for. A standard event, or any custom pixel event name.
      sig { returns(T.nilable(WhopSDK::AdGroup::ConversionEvent::Variants)) }
      attr_accessor :conversion_event

      # Spend divided by attributed add-to-cart events; null when they are not the goal
      # and none are attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_added_to_cart

      # Spend divided by clicks; 0 when there are no clicks.
      sig { returns(Float) }
      attr_accessor :cost_per_click

      # Spend divided by attributed complete-registration events; null when they are not
      # the goal and none are attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_completed_registration

      # Spend divided by attributed contact events; null when contacts are not the goal
      # and none are attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_contact

      # Spend divided by attributed leads; null when leads are not a goal and none are
      # attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_lead

      # Spend per 1,000 impressions; 0 when there are no impressions.
      sig { returns(Float) }
      attr_accessor :cost_per_mille

      # Spend divided by attributed purchases; null when purchases are not a goal and
      # none are attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_purchase

      # Spend divided by Whop pixel-attributed results; null when nothing
      # Whop-attributable is being optimized for.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_result

      # Spend divided by attributed schedule events; null when schedules are not the
      # goal and none are attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_schedule

      # Spend divided by attributed submit-application events; null when they are not
      # the goal and none are attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_submitted_application

      # Spend divided by unique clicks; null when there are no unique clicks.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_unique_click

      # Spend divided by attributed view-content events; null when they are not the goal
      # and none are attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_viewed_content

      # When the ad group was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Whop pixel-attributed custom (merchant-defined) conversion events, last-click,
      # across all custom event names.
      sig { returns(Float) }
      attr_accessor :custom_conversions

      # Whop pixel-attributed custom conversions, keyed by your event name with its
      # last-click count as the value. Empty when no named custom events are attributed.
      # Custom events fired without a name are counted in custom_conversions but omitted
      # here, so these values sum to at most custom_conversions.
      sig { returns(T.anything) }
      attr_accessor :custom_event_counts

      # Conversion value attributed to each custom event, keyed by event name like
      # custom_event_counts. Sums the value passed to whop.track, normalized to USD;
      # events fired without a value contribute 0.
      sig { returns(T.anything) }
      attr_accessor :custom_event_values

      # Whether ads in this ad group are delivering right now, and if not, why. When
      # several states apply at once, the highest-precedence one is returned.
      sig { returns(WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol) }
      attr_accessor :delivery_status

      # Age, gender, and automatic-audience targeting.
      sig { returns(WhopSDK::AdGroup::Demographics) }
      attr_reader :demographics

      sig { params(demographics: WhopSDK::AdGroup::Demographics::OrHash).void }
      attr_writer :demographics

      # Cost per result to aim for (`average_target`) or never exceed
      # (`maximum_target`). `null` for `minimum_cost` bidding.
      sig { returns(T.nilable(Float)) }
      attr_accessor :desired_cost_per_result

      # Interest, behavior, and demographic targeting, using categories from the ad
      # platform's targeting taxonomy. Entries across interests, behaviors, and
      # demographics are OR'd together (anyone matching any entry is reached), matching
      # Ads Manager's detailed-targeting box. Can't be combined with automatic audience
      # targeting. Special ad category campaigns are limited to approved interests.
      sig { returns(WhopSDK::AdGroup::DetailedTargeting) }
      attr_reader :detailed_targeting

      sig do
        params(
          detailed_targeting: WhopSDK::AdGroup::DetailedTargeting::OrHash
        ).void
      end
      attr_writer :detailed_targeting

      # Device platforms and operating systems targeted.
      sig { returns(WhopSDK::AdGroup::Devices) }
      attr_reader :devices

      sig { params(devices: WhopSDK::AdGroup::Devices::OrHash).void }
      attr_writer :devices

      # When the ad group stops delivering, as an ISO 8601 timestamp. `null` when it
      # runs until paused.
      sig { returns(T.nilable(String)) }
      attr_accessor :ends_at

      # Platform-reported impressions divided by reach.
      sig { returns(T.nilable(Float)) }
      attr_accessor :frequency

      # Cap on how often one person sees ads from this ad group. Only available on
      # campaigns with the `awareness` objective; `null` when uncapped.
      sig { returns(T.nilable(WhopSDK::AdGroup::FrequencyCap)) }
      attr_reader :frequency_cap

      sig do
        params(
          frequency_cap: T.nilable(WhopSDK::AdGroup::FrequencyCap::OrHash)
        ).void
      end
      attr_writer :frequency_cap

      # The number of impressions.
      sig { returns(Float) }
      attr_accessor :impressions

      sig { returns(T::Array[WhopSDK::AdGroup::Issue]) }
      attr_accessor :issues

      sig { returns(T::Array[String]) }
      attr_accessor :languages

      # USD value attributed to lead events. Sums the value sent with each event,
      # normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :lead_value

      # Whop pixel-attributed leads, last-click.
      sig { returns(Float) }
      attr_accessor :leads

      # Clicks on links in the ad that lead to your destination, as reported by the ad
      # platform. A subset of clicks, which also counts likes, comments, and other
      # interactions with the ad.
      sig { returns(Float) }
      attr_accessor :link_clicks

      # The result the ad group's delivery is optimized to get the most of.
      sig do
        returns(T.nilable(WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol))
      end
      attr_accessor :optimization_goal

      sig { returns(T::Array[WhopSDK::AdGroup::Placement]) }
      attr_accessor :placements

      # USD value of pixel-attributed purchases.
      sig { returns(Float) }
      attr_accessor :purchase_value

      # Whop pixel-attributed purchases, last-click.
      sig { returns(Float) }
      attr_accessor :purchases

      # The number of unique people who saw this.
      sig { returns(Float) }
      attr_accessor :reach

      # Locations targeted and excluded.
      sig { returns(WhopSDK::AdGroup::Regions) }
      attr_reader :regions

      sig { params(regions: WhopSDK::AdGroup::Regions::OrHash).void }
      attr_writer :regions

      # The Whop pixel conversion event whose attributed count represents results — the
      # optimization goal, or the highest-volume attributed event for campaigns that
      # budget per ad group. Null when the goal isn't a Whop-attributed event.
      sig { returns(T.nilable(WhopSDK::AdGroup::ResultEvent::TaggedSymbol)) }
      attr_accessor :result_event

      # The merchant-defined event name when result_event is custom; null for the
      # standard events.
      sig { returns(T.nilable(String)) }
      attr_accessor :result_event_name

      # The Whop pixel-attributed count behind result_event. When a campaign's ad groups
      # optimize different goals there is no single result_event (it is null), and this
      # is instead the sum of each ad group's own attributed results. Null when nothing
      # Whop-attributable is being optimized for.
      sig { returns(T.nilable(Float)) }
      attr_accessor :results

      # Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
      # there is no spend.
      sig { returns(Float) }
      attr_accessor :return_on_ad_spend

      # USD value attributed to schedule events. Sums the value sent with each event,
      # normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :schedule_value

      # Whop pixel-attributed schedule events, last-click.
      sig { returns(Float) }
      attr_accessor :schedules

      # The amount charged, in spend_currency.
      sig { returns(Float) }
      attr_accessor :spend

      # The ISO 4217 currency code of all monetary metrics.
      sig { returns(T.nilable(String)) }
      attr_accessor :spend_currency

      # When the ad group starts delivering, as an ISO 8601 timestamp. `null` when it
      # starts as soon as it's active.
      sig { returns(T.nilable(String)) }
      attr_accessor :starts_at

      # Whether the ad group is enabled. `active` and `paused` are set by you;
      # `rejected` means it failed ad review; `duplicating` is a copy still being filled
      # in.
      sig { returns(WhopSDK::AdGroup::Status::TaggedSymbol) }
      attr_accessor :status

      # USD value attributed to submit-application events. Sums the value sent with each
      # event, normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :submitted_application_value

      # Whop pixel-attributed submit-application events, last-click.
      sig { returns(Float) }
      attr_accessor :submitted_applications

      # Display name of the ad group.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Unique clicks divided by impressions, between 0 and 1.
      sig { returns(T.nilable(Float)) }
      attr_accessor :unique_click_through_rate

      # People who clicked, reported by the Whop pixel, counted once per person.
      sig { returns(Float) }
      attr_accessor :unique_clicks

      # When the ad group was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # USD value attributed to view-content events. Sums the value sent with each
      # event, normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :viewed_content_value

      # Whop pixel-attributed view-content events, last-click.
      sig { returns(Float) }
      attr_accessor :viewed_contents

      # Where the outcome being optimized for occurs, such as a website visit,
      # social-profile visit, messaging conversation, ad interaction, or lead-form
      # submission.
      sig do
        returns(T.nilable(WhopSDK::AdGroup::ConversionLocation::TaggedSymbol))
      end
      attr_accessor :conversion_location

      # Whether the ad platform automatically mixes and matches this ad group's
      # creatives and copy to find the best-performing combinations.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :dynamic_creative

      sig { params(dynamic_creative: T::Boolean).void }
      attr_writer :dynamic_creative

      sig do
        returns(T.nilable(T::Array[WhopSDK::AdGroup::MessageApp::TaggedSymbol]))
      end
      attr_reader :message_apps

      sig do
        params(
          message_apps: T::Array[WhopSDK::AdGroup::MessageApp::OrSymbol]
        ).void
      end
      attr_writer :message_apps

      # Minimum the ad group tries to spend each day. `null` when no floor is set.
      sig { returns(T.nilable(Float)) }
      attr_accessor :minimum_daily_spend

      sig do
        params(
          id: String,
          ad_campaign: WhopSDK::AdGroup::AdCampaign::OrHash,
          added_to_cart_value: Float,
          added_to_carts: Float,
          audiences: WhopSDK::AdGroup::Audiences::OrHash,
          bid_type: T.nilable(WhopSDK::AdGroup::BidType::OrSymbol),
          budget_amount: T.nilable(Float),
          budget_type: T.nilable(WhopSDK::AdGroup::BudgetType::OrSymbol),
          click_through_rate: Float,
          clicks: Float,
          completed_registration_value: Float,
          completed_registrations: Float,
          contact_value: Float,
          contacts: Float,
          conversion_event:
            T.nilable(
              T.any(WhopSDK::AdGroup::ConversionEvent::OrSymbol, String)
            ),
          cost_per_added_to_cart: T.nilable(Float),
          cost_per_click: Float,
          cost_per_completed_registration: T.nilable(Float),
          cost_per_contact: T.nilable(Float),
          cost_per_lead: T.nilable(Float),
          cost_per_mille: Float,
          cost_per_purchase: T.nilable(Float),
          cost_per_result: T.nilable(Float),
          cost_per_schedule: T.nilable(Float),
          cost_per_submitted_application: T.nilable(Float),
          cost_per_unique_click: T.nilable(Float),
          cost_per_viewed_content: T.nilable(Float),
          created_at: String,
          custom_conversions: Float,
          custom_event_counts: T.anything,
          custom_event_values: T.anything,
          delivery_status: WhopSDK::AdGroup::DeliveryStatus::OrSymbol,
          demographics: WhopSDK::AdGroup::Demographics::OrHash,
          desired_cost_per_result: T.nilable(Float),
          detailed_targeting: WhopSDK::AdGroup::DetailedTargeting::OrHash,
          devices: WhopSDK::AdGroup::Devices::OrHash,
          ends_at: T.nilable(String),
          frequency: T.nilable(Float),
          frequency_cap: T.nilable(WhopSDK::AdGroup::FrequencyCap::OrHash),
          impressions: Float,
          issues: T::Array[WhopSDK::AdGroup::Issue::OrHash],
          languages: T::Array[String],
          lead_value: Float,
          leads: Float,
          link_clicks: Float,
          optimization_goal:
            T.nilable(WhopSDK::AdGroup::OptimizationGoal::OrSymbol),
          placements: T::Array[WhopSDK::AdGroup::Placement::OrHash],
          purchase_value: Float,
          purchases: Float,
          reach: Float,
          regions: WhopSDK::AdGroup::Regions::OrHash,
          result_event: T.nilable(WhopSDK::AdGroup::ResultEvent::OrSymbol),
          result_event_name: T.nilable(String),
          results: T.nilable(Float),
          return_on_ad_spend: Float,
          schedule_value: Float,
          schedules: Float,
          spend: Float,
          spend_currency: T.nilable(String),
          starts_at: T.nilable(String),
          status: WhopSDK::AdGroup::Status::OrSymbol,
          submitted_application_value: Float,
          submitted_applications: Float,
          title: T.nilable(String),
          unique_click_through_rate: T.nilable(Float),
          unique_clicks: Float,
          updated_at: String,
          viewed_content_value: Float,
          viewed_contents: Float,
          conversion_location:
            T.nilable(WhopSDK::AdGroup::ConversionLocation::OrSymbol),
          dynamic_creative: T::Boolean,
          message_apps: T::Array[WhopSDK::AdGroup::MessageApp::OrSymbol],
          minimum_daily_spend: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the ad group, prefixed `adgrp_`.
        id:,
        # The ad campaign this ad group belongs to.
        ad_campaign:,
        # USD value attributed to add-to-cart events. Sums the value sent with each event,
        # normalized to USD; events without a value contribute 0.
        added_to_cart_value:,
        # Whop pixel-attributed add-to-cart events, last-click.
        added_to_carts:,
        # Saved audiences this ad group delivers to or excludes.
        audiences:,
        # How delivery bids are set in the ad auction. Target-based strategies use
        # `desired_cost_per_result`.
        bid_type:,
        # This ad group's budget, in the ad account's currency. `null` when the budget is
        # set on the campaign instead.
        budget_amount:,
        # Whether `budget_amount` is spent per day (`daily`) or over the ad group's full
        # run (`lifetime`).
        budget_type:,
        # Clicks divided by impressions, between 0 and 1.
        click_through_rate:,
        # The number of clicks.
        clicks:,
        # USD value attributed to complete-registration events. Sums the value sent with
        # each event, normalized to USD; events without a value contribute 0.
        completed_registration_value:,
        # Whop pixel-attributed complete-registration events, last-click.
        completed_registrations:,
        # USD value attributed to contact events. Sums the value sent with each event,
        # normalized to USD; events without a value contribute 0.
        contact_value:,
        # Whop pixel-attributed contact events, last-click.
        contacts:,
        # The pixel event optimized for. A standard event, or any custom pixel event name.
        conversion_event:,
        # Spend divided by attributed add-to-cart events; null when they are not the goal
        # and none are attributed.
        cost_per_added_to_cart:,
        # Spend divided by clicks; 0 when there are no clicks.
        cost_per_click:,
        # Spend divided by attributed complete-registration events; null when they are not
        # the goal and none are attributed.
        cost_per_completed_registration:,
        # Spend divided by attributed contact events; null when contacts are not the goal
        # and none are attributed.
        cost_per_contact:,
        # Spend divided by attributed leads; null when leads are not a goal and none are
        # attributed.
        cost_per_lead:,
        # Spend per 1,000 impressions; 0 when there are no impressions.
        cost_per_mille:,
        # Spend divided by attributed purchases; null when purchases are not a goal and
        # none are attributed.
        cost_per_purchase:,
        # Spend divided by Whop pixel-attributed results; null when nothing
        # Whop-attributable is being optimized for.
        cost_per_result:,
        # Spend divided by attributed schedule events; null when schedules are not the
        # goal and none are attributed.
        cost_per_schedule:,
        # Spend divided by attributed submit-application events; null when they are not
        # the goal and none are attributed.
        cost_per_submitted_application:,
        # Spend divided by unique clicks; null when there are no unique clicks.
        cost_per_unique_click:,
        # Spend divided by attributed view-content events; null when they are not the goal
        # and none are attributed.
        cost_per_viewed_content:,
        # When the ad group was created, as an ISO 8601 timestamp.
        created_at:,
        # Whop pixel-attributed custom (merchant-defined) conversion events, last-click,
        # across all custom event names.
        custom_conversions:,
        # Whop pixel-attributed custom conversions, keyed by your event name with its
        # last-click count as the value. Empty when no named custom events are attributed.
        # Custom events fired without a name are counted in custom_conversions but omitted
        # here, so these values sum to at most custom_conversions.
        custom_event_counts:,
        # Conversion value attributed to each custom event, keyed by event name like
        # custom_event_counts. Sums the value passed to whop.track, normalized to USD;
        # events fired without a value contribute 0.
        custom_event_values:,
        # Whether ads in this ad group are delivering right now, and if not, why. When
        # several states apply at once, the highest-precedence one is returned.
        delivery_status:,
        # Age, gender, and automatic-audience targeting.
        demographics:,
        # Cost per result to aim for (`average_target`) or never exceed
        # (`maximum_target`). `null` for `minimum_cost` bidding.
        desired_cost_per_result:,
        # Interest, behavior, and demographic targeting, using categories from the ad
        # platform's targeting taxonomy. Entries across interests, behaviors, and
        # demographics are OR'd together (anyone matching any entry is reached), matching
        # Ads Manager's detailed-targeting box. Can't be combined with automatic audience
        # targeting. Special ad category campaigns are limited to approved interests.
        detailed_targeting:,
        # Device platforms and operating systems targeted.
        devices:,
        # When the ad group stops delivering, as an ISO 8601 timestamp. `null` when it
        # runs until paused.
        ends_at:,
        # Platform-reported impressions divided by reach.
        frequency:,
        # Cap on how often one person sees ads from this ad group. Only available on
        # campaigns with the `awareness` objective; `null` when uncapped.
        frequency_cap:,
        # The number of impressions.
        impressions:,
        issues:,
        languages:,
        # USD value attributed to lead events. Sums the value sent with each event,
        # normalized to USD; events without a value contribute 0.
        lead_value:,
        # Whop pixel-attributed leads, last-click.
        leads:,
        # Clicks on links in the ad that lead to your destination, as reported by the ad
        # platform. A subset of clicks, which also counts likes, comments, and other
        # interactions with the ad.
        link_clicks:,
        # The result the ad group's delivery is optimized to get the most of.
        optimization_goal:,
        placements:,
        # USD value of pixel-attributed purchases.
        purchase_value:,
        # Whop pixel-attributed purchases, last-click.
        purchases:,
        # The number of unique people who saw this.
        reach:,
        # Locations targeted and excluded.
        regions:,
        # The Whop pixel conversion event whose attributed count represents results — the
        # optimization goal, or the highest-volume attributed event for campaigns that
        # budget per ad group. Null when the goal isn't a Whop-attributed event.
        result_event:,
        # The merchant-defined event name when result_event is custom; null for the
        # standard events.
        result_event_name:,
        # The Whop pixel-attributed count behind result_event. When a campaign's ad groups
        # optimize different goals there is no single result_event (it is null), and this
        # is instead the sum of each ad group's own attributed results. Null when nothing
        # Whop-attributable is being optimized for.
        results:,
        # Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
        # there is no spend.
        return_on_ad_spend:,
        # USD value attributed to schedule events. Sums the value sent with each event,
        # normalized to USD; events without a value contribute 0.
        schedule_value:,
        # Whop pixel-attributed schedule events, last-click.
        schedules:,
        # The amount charged, in spend_currency.
        spend:,
        # The ISO 4217 currency code of all monetary metrics.
        spend_currency:,
        # When the ad group starts delivering, as an ISO 8601 timestamp. `null` when it
        # starts as soon as it's active.
        starts_at:,
        # Whether the ad group is enabled. `active` and `paused` are set by you;
        # `rejected` means it failed ad review; `duplicating` is a copy still being filled
        # in.
        status:,
        # USD value attributed to submit-application events. Sums the value sent with each
        # event, normalized to USD; events without a value contribute 0.
        submitted_application_value:,
        # Whop pixel-attributed submit-application events, last-click.
        submitted_applications:,
        # Display name of the ad group.
        title:,
        # Unique clicks divided by impressions, between 0 and 1.
        unique_click_through_rate:,
        # People who clicked, reported by the Whop pixel, counted once per person.
        unique_clicks:,
        # When the ad group was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # USD value attributed to view-content events. Sums the value sent with each
        # event, normalized to USD; events without a value contribute 0.
        viewed_content_value:,
        # Whop pixel-attributed view-content events, last-click.
        viewed_contents:,
        # Where the outcome being optimized for occurs, such as a website visit,
        # social-profile visit, messaging conversation, ad interaction, or lead-form
        # submission.
        conversion_location: nil,
        # Whether the ad platform automatically mixes and matches this ad group's
        # creatives and copy to find the best-performing combinations.
        dynamic_creative: nil,
        message_apps: nil,
        # Minimum the ad group tries to spend each day. `null` when no floor is set.
        minimum_daily_spend: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ad_campaign: WhopSDK::AdGroup::AdCampaign,
            added_to_cart_value: Float,
            added_to_carts: Float,
            audiences: WhopSDK::AdGroup::Audiences,
            bid_type: T.nilable(WhopSDK::AdGroup::BidType::TaggedSymbol),
            budget_amount: T.nilable(Float),
            budget_type: T.nilable(WhopSDK::AdGroup::BudgetType::TaggedSymbol),
            click_through_rate: Float,
            clicks: Float,
            completed_registration_value: Float,
            completed_registrations: Float,
            contact_value: Float,
            contacts: Float,
            conversion_event:
              T.nilable(WhopSDK::AdGroup::ConversionEvent::Variants),
            cost_per_added_to_cart: T.nilable(Float),
            cost_per_click: Float,
            cost_per_completed_registration: T.nilable(Float),
            cost_per_contact: T.nilable(Float),
            cost_per_lead: T.nilable(Float),
            cost_per_mille: Float,
            cost_per_purchase: T.nilable(Float),
            cost_per_result: T.nilable(Float),
            cost_per_schedule: T.nilable(Float),
            cost_per_submitted_application: T.nilable(Float),
            cost_per_unique_click: T.nilable(Float),
            cost_per_viewed_content: T.nilable(Float),
            created_at: String,
            custom_conversions: Float,
            custom_event_counts: T.anything,
            custom_event_values: T.anything,
            delivery_status: WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol,
            demographics: WhopSDK::AdGroup::Demographics,
            desired_cost_per_result: T.nilable(Float),
            detailed_targeting: WhopSDK::AdGroup::DetailedTargeting,
            devices: WhopSDK::AdGroup::Devices,
            ends_at: T.nilable(String),
            frequency: T.nilable(Float),
            frequency_cap: T.nilable(WhopSDK::AdGroup::FrequencyCap),
            impressions: Float,
            issues: T::Array[WhopSDK::AdGroup::Issue],
            languages: T::Array[String],
            lead_value: Float,
            leads: Float,
            link_clicks: Float,
            optimization_goal:
              T.nilable(WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol),
            placements: T::Array[WhopSDK::AdGroup::Placement],
            purchase_value: Float,
            purchases: Float,
            reach: Float,
            regions: WhopSDK::AdGroup::Regions,
            result_event:
              T.nilable(WhopSDK::AdGroup::ResultEvent::TaggedSymbol),
            result_event_name: T.nilable(String),
            results: T.nilable(Float),
            return_on_ad_spend: Float,
            schedule_value: Float,
            schedules: Float,
            spend: Float,
            spend_currency: T.nilable(String),
            starts_at: T.nilable(String),
            status: WhopSDK::AdGroup::Status::TaggedSymbol,
            submitted_application_value: Float,
            submitted_applications: Float,
            title: T.nilable(String),
            unique_click_through_rate: T.nilable(Float),
            unique_clicks: Float,
            updated_at: String,
            viewed_content_value: Float,
            viewed_contents: Float,
            conversion_location:
              T.nilable(WhopSDK::AdGroup::ConversionLocation::TaggedSymbol),
            dynamic_creative: T::Boolean,
            message_apps: T::Array[WhopSDK::AdGroup::MessageApp::TaggedSymbol],
            minimum_daily_spend: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::AdCampaign, WhopSDK::Internal::AnyHash)
          end

        # The referenced entity's id.
        sig { returns(String) }
        attr_accessor :id

        # The ad campaign this ad group belongs to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The referenced entity's id.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Audiences < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::Audiences, WhopSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[String]) }
        attr_accessor :exclude

        sig { returns(T::Array[String]) }
        attr_accessor :include

        # Saved audiences this ad group delivers to or excludes.
        sig do
          params(exclude: T::Array[String], include: T::Array[String]).returns(
            T.attached_class
          )
        end
        def self.new(exclude:, include:)
        end

        sig do
          override.returns(
            { exclude: T::Array[String], include: T::Array[String] }
          )
        end
        def to_hash
        end
      end

      # How delivery bids are set in the ad auction. Target-based strategies use
      # `desired_cost_per_result`.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AdGroup::BidType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM_COST =
          T.let(:minimum_cost, WhopSDK::AdGroup::BidType::TaggedSymbol)
        AVERAGE_TARGET =
          T.let(:average_target, WhopSDK::AdGroup::BidType::TaggedSymbol)
        MAXIMUM_TARGET =
          T.let(:maximum_target, WhopSDK::AdGroup::BidType::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdGroup::BidType::TaggedSymbol])
        end
        def self.values
        end
      end

      # Whether `budget_amount` is spent per day (`daily`) or over the ad group's full
      # run (`lifetime`).
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroup::BudgetType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY = T.let(:daily, WhopSDK::AdGroup::BudgetType::TaggedSymbol)
        LIFETIME = T.let(:lifetime, WhopSDK::AdGroup::BudgetType::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdGroup::BudgetType::TaggedSymbol])
        end
        def self.values
        end
      end

      # The pixel event optimized for. A standard event, or any custom pixel event name.
      module ConversionEvent
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(WhopSDK::AdGroup::ConversionEvent::TaggedSymbol, String)
          end

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroup::ConversionEvent::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroup::ConversionEvent) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASE =
          T.let(:purchase, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        ADD_TO_CART =
          T.let(:add_to_cart, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        INITIATED_CHECKOUT =
          T.let(
            :initiated_checkout,
            WhopSDK::AdGroup::ConversionEvent::TaggedSymbol
          )
        ADD_PAYMENT_INFO =
          T.let(
            :add_payment_info,
            WhopSDK::AdGroup::ConversionEvent::TaggedSymbol
          )
        COMPLETE_REGISTRATION =
          T.let(
            :complete_registration,
            WhopSDK::AdGroup::ConversionEvent::TaggedSymbol
          )
        LEAD = T.let(:lead, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        CONTENT_VIEW =
          T.let(:content_view, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        SEARCH = T.let(:search, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        CONTACT =
          T.let(:contact, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        CUSTOMIZE_PRODUCT =
          T.let(
            :customize_product,
            WhopSDK::AdGroup::ConversionEvent::TaggedSymbol
          )
        DONATE = T.let(:donate, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        FIND_LOCATION =
          T.let(:find_location, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        SCHEDULE =
          T.let(:schedule, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        START_TRIAL =
          T.let(:start_trial, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
        SUBMIT_APPLICATION =
          T.let(
            :submit_application,
            WhopSDK::AdGroup::ConversionEvent::TaggedSymbol
          )
        SUBSCRIBE =
          T.let(:subscribe, WhopSDK::AdGroup::ConversionEvent::TaggedSymbol)
      end

      # Whether ads in this ad group are delivering right now, and if not, why. When
      # several states apply at once, the highest-precedence one is returned.
      module DeliveryStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroup::DeliveryStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL_ADS_REJECTED =
          T.let(
            :all_ads_rejected,
            WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol
          )
        REJECTED =
          T.let(:rejected, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        DRAFT = T.let(:draft, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        NO_ADS = T.let(:no_ads, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        CAMPAIGN_PAUSED =
          T.let(
            :campaign_paused,
            WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol
          )
        PAUSED = T.let(:paused, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        PROCESSING =
          T.let(:processing, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        ISSUES = T.let(:issues, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        SCHEDULED =
          T.let(:scheduled, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        COMPLETED =
          T.let(:completed, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        ADS_OFF =
          T.let(:ads_off, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        LEARNING_LIMITED =
          T.let(
            :learning_limited,
            WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol
          )
        LEARNING =
          T.let(:learning, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)
        ACTIVE = T.let(:active, WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Demographics < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::Demographics, WhopSDK::Internal::AnyHash)
          end

        # Whether automatic audience targeting is on (Advantage+ on Meta). When `true`,
        # the platform can deliver beyond the ages, genders, and detailed targeting you
        # set, treating them as suggestions.
        sig { returns(T::Boolean) }
        attr_accessor :automatic

        # Gender targeted.
        sig { returns(WhopSDK::AdGroup::Demographics::Gender::TaggedSymbol) }
        attr_accessor :gender

        # Oldest age targeted. `null` when no maximum is set.
        sig { returns(T.nilable(Float)) }
        attr_accessor :maximum_age

        # Youngest age targeted. `null` when no minimum is set.
        sig { returns(T.nilable(Float)) }
        attr_accessor :minimum_age

        # Age, gender, and automatic-audience targeting.
        sig do
          params(
            automatic: T::Boolean,
            gender: WhopSDK::AdGroup::Demographics::Gender::OrSymbol,
            maximum_age: T.nilable(Float),
            minimum_age: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether automatic audience targeting is on (Advantage+ on Meta). When `true`,
          # the platform can deliver beyond the ages, genders, and detailed targeting you
          # set, treating them as suggestions.
          automatic:,
          # Gender targeted.
          gender:,
          # Oldest age targeted. `null` when no maximum is set.
          maximum_age:,
          # Youngest age targeted. `null` when no minimum is set.
          minimum_age:
        )
        end

        sig do
          override.returns(
            {
              automatic: T::Boolean,
              gender: WhopSDK::AdGroup::Demographics::Gender::TaggedSymbol,
              maximum_age: T.nilable(Float),
              minimum_age: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        # Gender targeted.
        module Gender
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdGroup::Demographics::Gender)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(:all, WhopSDK::AdGroup::Demographics::Gender::TaggedSymbol)
          MALE =
            T.let(:male, WhopSDK::AdGroup::Demographics::Gender::TaggedSymbol)
          FEMALE =
            T.let(:female, WhopSDK::AdGroup::Demographics::Gender::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::AdGroup::Demographics::Gender::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class DetailedTargeting < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroup::DetailedTargeting,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[WhopSDK::AdGroup::DetailedTargeting::Behavior]) }
        attr_accessor :behaviors

        sig do
          returns(T::Array[WhopSDK::AdGroup::DetailedTargeting::Demographic])
        end
        attr_accessor :demographics

        sig { returns(T::Array[WhopSDK::AdGroup::DetailedTargeting::Interest]) }
        attr_accessor :interests

        # Interest, behavior, and demographic targeting, using categories from the ad
        # platform's targeting taxonomy. Entries across interests, behaviors, and
        # demographics are OR'd together (anyone matching any entry is reached), matching
        # Ads Manager's detailed-targeting box. Can't be combined with automatic audience
        # targeting. Special ad category campaigns are limited to approved interests.
        sig do
          params(
            behaviors:
              T::Array[WhopSDK::AdGroup::DetailedTargeting::Behavior::OrHash],
            demographics:
              T::Array[
                WhopSDK::AdGroup::DetailedTargeting::Demographic::OrHash
              ],
            interests:
              T::Array[WhopSDK::AdGroup::DetailedTargeting::Interest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(behaviors:, demographics:, interests:)
        end

        sig do
          override.returns(
            {
              behaviors:
                T::Array[WhopSDK::AdGroup::DetailedTargeting::Behavior],
              demographics:
                T::Array[WhopSDK::AdGroup::DetailedTargeting::Demographic],
              interests: T::Array[WhopSDK::AdGroup::DetailedTargeting::Interest]
            }
          )
        end
        def to_hash
        end

        class Behavior < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroup::DetailedTargeting::Behavior,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ad platform's ID for the category in its targeting taxonomy.
          sig { returns(String) }
          attr_accessor :id

          # On ad platforms that scope behavior categories, what this one is measured on.
          # Send back the value the targeting_options endpoint returned alongside the id.
          # Absent on platforms that don't scope them.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
              )
            )
          end
          attr_reader :behavior_type

          sig do
            params(
              behavior_type:
                WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType::OrSymbol
            ).void
          end
          attr_writer :behavior_type

          # Category name, such as `Frequent travelers`.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # On ad platforms that scope behavior categories, how many days of activity the
          # category covers. Absent on platforms that don't scope them.
          sig { returns(T.nilable(Float)) }
          attr_reader :period

          sig { params(period: Float).void }
          attr_writer :period

          # Behavior categories targeted, such as frequent travelers.
          sig do
            params(
              id: String,
              behavior_type:
                WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType::OrSymbol,
              name: String,
              period: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # The ad platform's ID for the category in its targeting taxonomy.
            id:,
            # On ad platforms that scope behavior categories, what this one is measured on.
            # Send back the value the targeting_options endpoint returned alongside the id.
            # Absent on platforms that don't scope them.
            behavior_type: nil,
            # Category name, such as `Frequent travelers`.
            name: nil,
            # On ad platforms that scope behavior categories, how many days of activity the
            # category covers. Absent on platforms that don't scope them.
            period: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                behavior_type:
                  WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol,
                name: String,
                period: Float
              }
            )
          end
          def to_hash
          end

          # On ad platforms that scope behavior categories, what this one is measured on.
          # Send back the value the targeting_options endpoint returned alongside the id.
          # Absent on platforms that don't scope them.
          module BehaviorType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VIDEO =
              T.let(
                :video,
                WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
              )
            CREATOR =
              T.let(
                :creator,
                WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
              )
            HASHTAG =
              T.let(
                :hashtag,
                WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroup::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Demographic < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroup::DetailedTargeting::Demographic,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ad platform's ID for the category in its targeting taxonomy.
          sig { returns(String) }
          attr_accessor :id

          # Kind of demographic the category belongs to.
          sig do
            returns(
              WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # Category name, such as `Recently moved`.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Demographic categories targeted, such as life events, industries, work
          # employers, job titles, schools, or majors. OR'd with interests and behaviors.
          sig do
            params(
              id: String,
              type:
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::OrSymbol,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The ad platform's ID for the category in its targeting taxonomy.
            id:,
            # Kind of demographic the category belongs to.
            type:,
            # Category name, such as `Recently moved`.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                type:
                  WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol,
                name: String
              }
            )
          end
          def to_hash
          end

          # Kind of demographic the category belongs to.
          module Type
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroup::DetailedTargeting::Demographic::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LIFE_EVENTS =
              T.let(
                :life_events,
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            INDUSTRIES =
              T.let(
                :industries,
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            INCOME =
              T.let(
                :income,
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            FAMILY_STATUSES =
              T.let(
                :family_statuses,
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            WORK_EMPLOYERS =
              T.let(
                :work_employers,
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            WORK_POSITIONS =
              T.let(
                :work_positions,
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            EDUCATION_SCHOOLS =
              T.let(
                :education_schools,
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            EDUCATION_MAJORS =
              T.let(
                :education_majors,
                WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroup::DetailedTargeting::Demographic::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Interest < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroup::DetailedTargeting::Interest,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ad platform's ID for the category in its targeting taxonomy.
          sig { returns(String) }
          attr_accessor :id

          # Category name, such as `Movies`.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Interest categories targeted, such as an interest in movies.
          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(
            # The ad platform's ID for the category in its targeting taxonomy.
            id:,
            # Category name, such as `Movies`.
            name: nil
          )
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end
      end

      class Devices < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::Devices, WhopSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[WhopSDK::AdGroup::Devices::OperatingSystem]) }
        attr_accessor :operating_systems

        sig do
          returns(T::Array[WhopSDK::AdGroup::Devices::Platform::TaggedSymbol])
        end
        attr_accessor :platforms

        # Device platforms and operating systems targeted.
        sig do
          params(
            operating_systems:
              T::Array[WhopSDK::AdGroup::Devices::OperatingSystem::OrHash],
            platforms: T::Array[WhopSDK::AdGroup::Devices::Platform::OrSymbol]
          ).returns(T.attached_class)
        end
        def self.new(operating_systems:, platforms:)
        end

        sig do
          override.returns(
            {
              operating_systems:
                T::Array[WhopSDK::AdGroup::Devices::OperatingSystem],
              platforms:
                T::Array[WhopSDK::AdGroup::Devices::Platform::TaggedSymbol]
            }
          )
        end
        def to_hash
        end

        class OperatingSystem < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroup::Devices::OperatingSystem,
                WhopSDK::Internal::AnyHash
              )
            end

          # Operating system targeted.
          sig do
            returns(
              WhopSDK::AdGroup::Devices::OperatingSystem::Os::TaggedSymbol
            )
          end
          attr_accessor :os

          # Lowest OS version targeted, such as `18.0`. Absent when any version qualifies.
          sig { returns(T.nilable(String)) }
          attr_reader :minimum_version

          sig { params(minimum_version: String).void }
          attr_writer :minimum_version

          # Operating systems targeted. Empty targets all operating systems.
          sig do
            params(
              os: WhopSDK::AdGroup::Devices::OperatingSystem::Os::OrSymbol,
              minimum_version: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Operating system targeted.
            os:,
            # Lowest OS version targeted, such as `18.0`. Absent when any version qualifies.
            minimum_version: nil
          )
          end

          sig do
            override.returns(
              {
                os:
                  WhopSDK::AdGroup::Devices::OperatingSystem::Os::TaggedSymbol,
                minimum_version: String
              }
            )
          end
          def to_hash
          end

          # Operating system targeted.
          module Os
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, WhopSDK::AdGroup::Devices::OperatingSystem::Os)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IOS =
              T.let(
                :ios,
                WhopSDK::AdGroup::Devices::OperatingSystem::Os::TaggedSymbol
              )
            ANDROID =
              T.let(
                :android,
                WhopSDK::AdGroup::Devices::OperatingSystem::Os::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroup::Devices::OperatingSystem::Os::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Device types targeted. Empty targets all devices.
        module Platform
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::AdGroup::Devices::Platform) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MOBILE =
            T.let(:mobile, WhopSDK::AdGroup::Devices::Platform::TaggedSymbol)
          DESKTOP =
            T.let(:desktop, WhopSDK::AdGroup::Devices::Platform::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::AdGroup::Devices::Platform::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class FrequencyCap < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::FrequencyCap, WhopSDK::Internal::AnyHash)
          end

        # Most times one person can be shown ads from this ad group within the window.
        sig { returns(Float) }
        attr_accessor :maximum_impressions

        # Length of the rolling window, in days.
        sig { returns(T.nilable(Float)) }
        attr_accessor :per_days

        # Cap on how often one person sees ads from this ad group. Only available on
        # campaigns with the `awareness` objective; `null` when uncapped.
        sig do
          params(
            maximum_impressions: Float,
            per_days: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # Most times one person can be shown ads from this ad group within the window.
          maximum_impressions:,
          # Length of the rolling window, in days.
          per_days:
        )
        end

        sig do
          override.returns(
            { maximum_impressions: Float, per_days: T.nilable(Float) }
          )
        end
        def to_hash
        end
      end

      class Issue < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::Issue, WhopSDK::Internal::AnyHash)
          end

        # Unique identifier for the issue.
        sig { returns(String) }
        attr_accessor :id

        # A description of what the issue is and how it can be resolved.
        sig { returns(String) }
        attr_accessor :message

        # The ID of the campaign, ad group, or ad the issue is attached to.
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # The type of resource the issue is attached to.
        sig { returns(WhopSDK::AdGroup::Issue::ResourceType::TaggedSymbol) }
        attr_accessor :resource_type

        # Open issues affecting this ad group and its ads. Empty when there are none.
        sig do
          params(
            id: String,
            message: String,
            resource_id: T.nilable(String),
            resource_type: WhopSDK::AdGroup::Issue::ResourceType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the issue.
          id:,
          # A description of what the issue is and how it can be resolved.
          message:,
          # The ID of the campaign, ad group, or ad the issue is attached to.
          resource_id:,
          # The type of resource the issue is attached to.
          resource_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              message: String,
              resource_id: T.nilable(String),
              resource_type: WhopSDK::AdGroup::Issue::ResourceType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of resource the issue is attached to.
        module ResourceType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdGroup::Issue::ResourceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_CAMPAIGN =
            T.let(
              :ad_campaign,
              WhopSDK::AdGroup::Issue::ResourceType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :ad_group,
              WhopSDK::AdGroup::Issue::ResourceType::TaggedSymbol
            )
          AD = T.let(:ad, WhopSDK::AdGroup::Issue::ResourceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::AdGroup::Issue::ResourceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # The result the ad group's delivery is optimized to get the most of.
      module OptimizationGoal
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroup::OptimizationGoal) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONVERSIONS =
          T.let(:conversions, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        LINK_CLICKS =
          T.let(:link_clicks, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        LANDING_PAGE_VIEWS =
          T.let(
            :landing_page_views,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )
        REACH = T.let(:reach, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        IMPRESSIONS =
          T.let(:impressions, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        ENGAGEMENT =
          T.let(:engagement, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        CONVERSATIONS =
          T.let(
            :conversations,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )
        VIDEO_VIEWS =
          T.let(:video_views, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        TWO_SECOND_VIEWS =
          T.let(
            :two_second_views,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )
        PAGE_LIKES =
          T.let(:page_likes, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        SOCIAL_PROFILE =
          T.let(
            :social_profile,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )
        AD_RECALL_LIFT =
          T.let(
            :ad_recall_lift,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )
        EVENT_RESPONSES =
          T.let(
            :event_responses,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )
        REMINDERS_SET =
          T.let(
            :reminders_set,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )
        LEAD_GENERATION =
          T.let(
            :lead_generation,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )
        QUALITY_LEAD =
          T.let(:quality_lead, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        VALUE = T.let(:value, WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol)
        PROFILE_AND_PAGE_ENGAGEMENT =
          T.let(
            :profile_and_page_engagement,
            WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroup::OptimizationGoal::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Placement < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::Placement, WhopSDK::Internal::AnyHash)
          end

        # Publisher platform where the ad is eligible to appear.
        sig { returns(WhopSDK::AdGroup::Placement::Platform::TaggedSymbol) }
        attr_accessor :platform

        sig { returns(T::Array[String]) }
        attr_accessor :positions

        # Where ads can appear, per platform. Empty when placements are chosen
        # automatically.
        sig do
          params(
            platform: WhopSDK::AdGroup::Placement::Platform::OrSymbol,
            positions: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Publisher platform where the ad is eligible to appear.
          platform:,
          positions:
        )
        end

        sig do
          override.returns(
            {
              platform: WhopSDK::AdGroup::Placement::Platform::TaggedSymbol,
              positions: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # Publisher platform where the ad is eligible to appear.
        module Platform
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdGroup::Placement::Platform)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FACEBOOK =
            T.let(
              :facebook,
              WhopSDK::AdGroup::Placement::Platform::TaggedSymbol
            )
          INSTAGRAM =
            T.let(
              :instagram,
              WhopSDK::AdGroup::Placement::Platform::TaggedSymbol
            )
          MESSENGER =
            T.let(
              :messenger,
              WhopSDK::AdGroup::Placement::Platform::TaggedSymbol
            )
          AUDIENCE_NETWORK =
            T.let(
              :audience_network,
              WhopSDK::AdGroup::Placement::Platform::TaggedSymbol
            )
          THREADS =
            T.let(:threads, WhopSDK::AdGroup::Placement::Platform::TaggedSymbol)
          WHATSAPP =
            T.let(
              :whatsapp,
              WhopSDK::AdGroup::Placement::Platform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::AdGroup::Placement::Platform::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Regions < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::Regions, WhopSDK::Internal::AnyHash)
          end

        # Locations excluded from targeting. Country groups can't be excluded.
        sig { returns(WhopSDK::AdGroup::Regions::Exclude) }
        attr_reader :exclude

        sig { params(exclude: WhopSDK::AdGroup::Regions::Exclude::OrHash).void }
        attr_writer :exclude

        # Locations the ad group targets.
        sig { returns(WhopSDK::AdGroup::Regions::Include) }
        attr_reader :include

        sig { params(include: WhopSDK::AdGroup::Regions::Include::OrHash).void }
        attr_writer :include

        # Locations targeted and excluded.
        sig do
          params(
            exclude: WhopSDK::AdGroup::Regions::Exclude::OrHash,
            include: WhopSDK::AdGroup::Regions::Include::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Locations excluded from targeting. Country groups can't be excluded.
          exclude:,
          # Locations the ad group targets.
          include:
        )
        end

        sig do
          override.returns(
            {
              exclude: WhopSDK::AdGroup::Regions::Exclude,
              include: WhopSDK::AdGroup::Regions::Include
            }
          )
        end
        def to_hash
        end

        class Exclude < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroup::Regions::Exclude,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[WhopSDK::AdGroup::Regions::Exclude::City]) }
          attr_accessor :cities

          sig { returns(T::Array[String]) }
          attr_accessor :countries

          sig { returns(T::Array[String]) }
          attr_accessor :country_groups

          sig do
            returns(
              T::Array[WhopSDK::AdGroup::Regions::Exclude::CustomLocation]
            )
          end
          attr_accessor :custom_locations

          sig { returns(T::Array[String]) }
          attr_accessor :regions

          sig { returns(T::Array[String]) }
          attr_accessor :zips

          # Locations excluded from targeting. Country groups can't be excluded.
          sig do
            params(
              cities:
                T::Array[WhopSDK::AdGroup::Regions::Exclude::City::OrHash],
              countries: T::Array[String],
              country_groups: T::Array[String],
              custom_locations:
                T::Array[
                  WhopSDK::AdGroup::Regions::Exclude::CustomLocation::OrHash
                ],
              regions: T::Array[String],
              zips: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            cities:,
            countries:,
            country_groups:,
            custom_locations:,
            regions:,
            zips:
          )
          end

          sig do
            override.returns(
              {
                cities: T::Array[WhopSDK::AdGroup::Regions::Exclude::City],
                countries: T::Array[String],
                country_groups: T::Array[String],
                custom_locations:
                  T::Array[WhopSDK::AdGroup::Regions::Exclude::CustomLocation],
                regions: T::Array[String],
                zips: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class City < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroup::Regions::Exclude::City,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The ad platform's key for the city in its location taxonomy.
            sig { returns(String) }
            attr_accessor :key

            # City name, such as `Austin`. Absent when the platform doesn't return one.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Cities, keyed by the ad platform's location taxonomy.
            sig { params(key: String, name: String).returns(T.attached_class) }
            def self.new(
              # The ad platform's key for the city in its location taxonomy.
              key:,
              # City name, such as `Austin`. Absent when the platform doesn't return one.
              name: nil
            )
            end

            sig { override.returns({ key: String, name: String }) }
            def to_hash
            end
          end

          class CustomLocation < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroup::Regions::Exclude::CustomLocation,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Unit for `radius`.
            sig do
              returns(
                WhopSDK::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit::TaggedSymbol
              )
            end
            attr_accessor :distance_unit

            # Latitude of the center point.
            sig { returns(Float) }
            attr_accessor :latitude

            # Longitude of the center point.
            sig { returns(Float) }
            attr_accessor :longitude

            # Radius around the center point, in `distance_unit`.
            sig { returns(Float) }
            attr_accessor :radius

            # Label for the location, such as a city or address. Absent when the location has
            # no label.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Circular areas, each a coordinate plus a radius.
            sig do
              params(
                distance_unit:
                  WhopSDK::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit::OrSymbol,
                latitude: Float,
                longitude: Float,
                radius: Float,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Unit for `radius`.
              distance_unit:,
              # Latitude of the center point.
              latitude:,
              # Longitude of the center point.
              longitude:,
              # Radius around the center point, in `distance_unit`.
              radius:,
              # Label for the location, such as a city or address. Absent when the location has
              # no label.
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  distance_unit:
                    WhopSDK::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit::TaggedSymbol,
                  latitude: Float,
                  longitude: Float,
                  radius: Float,
                  name: String
                }
              )
            end
            def to_hash
            end

            # Unit for `radius`.
            module DistanceUnit
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MILE =
                T.let(
                  :mile,
                  WhopSDK::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit::TaggedSymbol
                )
              KILOMETER =
                T.let(
                  :kilometer,
                  WhopSDK::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::AdGroup::Regions::Exclude::CustomLocation::DistanceUnit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Include < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroup::Regions::Include,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[WhopSDK::AdGroup::Regions::Include::City]) }
          attr_accessor :cities

          sig { returns(T::Array[String]) }
          attr_accessor :countries

          sig { returns(T::Array[String]) }
          attr_accessor :country_groups

          sig do
            returns(
              T::Array[WhopSDK::AdGroup::Regions::Include::CustomLocation]
            )
          end
          attr_accessor :custom_locations

          sig { returns(T::Array[String]) }
          attr_accessor :regions

          sig { returns(T::Array[String]) }
          attr_accessor :zips

          # Locations the ad group targets.
          sig do
            params(
              cities:
                T::Array[WhopSDK::AdGroup::Regions::Include::City::OrHash],
              countries: T::Array[String],
              country_groups: T::Array[String],
              custom_locations:
                T::Array[
                  WhopSDK::AdGroup::Regions::Include::CustomLocation::OrHash
                ],
              regions: T::Array[String],
              zips: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            cities:,
            countries:,
            country_groups:,
            custom_locations:,
            regions:,
            zips:
          )
          end

          sig do
            override.returns(
              {
                cities: T::Array[WhopSDK::AdGroup::Regions::Include::City],
                countries: T::Array[String],
                country_groups: T::Array[String],
                custom_locations:
                  T::Array[WhopSDK::AdGroup::Regions::Include::CustomLocation],
                regions: T::Array[String],
                zips: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class City < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroup::Regions::Include::City,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The ad platform's key for the city in its location taxonomy.
            sig { returns(String) }
            attr_accessor :key

            # City name, such as `Austin`. Absent when the platform doesn't return one.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Cities, keyed by the ad platform's location taxonomy.
            sig { params(key: String, name: String).returns(T.attached_class) }
            def self.new(
              # The ad platform's key for the city in its location taxonomy.
              key:,
              # City name, such as `Austin`. Absent when the platform doesn't return one.
              name: nil
            )
            end

            sig { override.returns({ key: String, name: String }) }
            def to_hash
            end
          end

          class CustomLocation < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroup::Regions::Include::CustomLocation,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Unit for `radius`.
            sig do
              returns(
                WhopSDK::AdGroup::Regions::Include::CustomLocation::DistanceUnit::TaggedSymbol
              )
            end
            attr_accessor :distance_unit

            # Latitude of the center point.
            sig { returns(Float) }
            attr_accessor :latitude

            # Longitude of the center point.
            sig { returns(Float) }
            attr_accessor :longitude

            # Radius around the center point, in `distance_unit`.
            sig { returns(Float) }
            attr_accessor :radius

            # Label for the location, such as a city or address. Absent when the location has
            # no label.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Circular areas, each a coordinate plus a radius.
            sig do
              params(
                distance_unit:
                  WhopSDK::AdGroup::Regions::Include::CustomLocation::DistanceUnit::OrSymbol,
                latitude: Float,
                longitude: Float,
                radius: Float,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Unit for `radius`.
              distance_unit:,
              # Latitude of the center point.
              latitude:,
              # Longitude of the center point.
              longitude:,
              # Radius around the center point, in `distance_unit`.
              radius:,
              # Label for the location, such as a city or address. Absent when the location has
              # no label.
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  distance_unit:
                    WhopSDK::AdGroup::Regions::Include::CustomLocation::DistanceUnit::TaggedSymbol,
                  latitude: Float,
                  longitude: Float,
                  radius: Float,
                  name: String
                }
              )
            end
            def to_hash
            end

            # Unit for `radius`.
            module DistanceUnit
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::AdGroup::Regions::Include::CustomLocation::DistanceUnit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MILE =
                T.let(
                  :mile,
                  WhopSDK::AdGroup::Regions::Include::CustomLocation::DistanceUnit::TaggedSymbol
                )
              KILOMETER =
                T.let(
                  :kilometer,
                  WhopSDK::AdGroup::Regions::Include::CustomLocation::DistanceUnit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::AdGroup::Regions::Include::CustomLocation::DistanceUnit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end

      # The Whop pixel conversion event whose attributed count represents results — the
      # optimization goal, or the highest-volume attributed event for campaigns that
      # budget per ad group. Null when the goal isn't a Whop-attributed event.
      module ResultEvent
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroup::ResultEvent) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASE = T.let(:purchase, WhopSDK::AdGroup::ResultEvent::TaggedSymbol)
        LEAD = T.let(:lead, WhopSDK::AdGroup::ResultEvent::TaggedSymbol)
        SCHEDULE = T.let(:schedule, WhopSDK::AdGroup::ResultEvent::TaggedSymbol)
        SUBMIT_APPLICATION =
          T.let(
            :submit_application,
            WhopSDK::AdGroup::ResultEvent::TaggedSymbol
          )
        CONTACT = T.let(:contact, WhopSDK::AdGroup::ResultEvent::TaggedSymbol)
        COMPLETE_REGISTRATION =
          T.let(
            :complete_registration,
            WhopSDK::AdGroup::ResultEvent::TaggedSymbol
          )
        VIEW_CONTENT =
          T.let(:view_content, WhopSDK::AdGroup::ResultEvent::TaggedSymbol)
        ADD_TO_CART =
          T.let(:add_to_cart, WhopSDK::AdGroup::ResultEvent::TaggedSymbol)
        CUSTOM = T.let(:custom, WhopSDK::AdGroup::ResultEvent::TaggedSymbol)
        MESSAGING_CONVERSATION =
          T.let(
            :messaging_conversation,
            WhopSDK::AdGroup::ResultEvent::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroup::ResultEvent::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether the ad group is enabled. `active` and `paused` are set by you;
      # `rejected` means it failed ad review; `duplicating` is a copy still being filled
      # in.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AdGroup::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, WhopSDK::AdGroup::Status::TaggedSymbol)
        PAUSED = T.let(:paused, WhopSDK::AdGroup::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, WhopSDK::AdGroup::Status::TaggedSymbol)
        DUPLICATING =
          T.let(:duplicating, WhopSDK::AdGroup::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdGroup::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # Where the outcome being optimized for occurs, such as a website visit,
      # social-profile visit, messaging conversation, ad interaction, or lead-form
      # submission.
      module ConversionLocation
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroup::ConversionLocation) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEBSITE =
          T.let(:website, WhopSDK::AdGroup::ConversionLocation::TaggedSymbol)
        PROFILE =
          T.let(:profile, WhopSDK::AdGroup::ConversionLocation::TaggedSymbol)
        INSTAGRAM_AND_FACEBOOK =
          T.let(
            :instagram_and_facebook,
            WhopSDK::AdGroup::ConversionLocation::TaggedSymbol
          )
        INSTAGRAM_PROFILE =
          T.let(
            :instagram_profile,
            WhopSDK::AdGroup::ConversionLocation::TaggedSymbol
          )
        MESSAGING =
          T.let(:messaging, WhopSDK::AdGroup::ConversionLocation::TaggedSymbol)
        ON_AD =
          T.let(:on_ad, WhopSDK::AdGroup::ConversionLocation::TaggedSymbol)
        INSTANT_FORMS =
          T.let(
            :instant_forms,
            WhopSDK::AdGroup::ConversionLocation::TaggedSymbol
          )
        INSTANT_FORMS_AND_MESSENGER =
          T.let(
            :instant_forms_and_messenger,
            WhopSDK::AdGroup::ConversionLocation::TaggedSymbol
          )
        WEBSITE_AND_INSTANT_FORMS =
          T.let(
            :website_and_instant_forms,
            WhopSDK::AdGroup::ConversionLocation::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroup::ConversionLocation::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Apps the conversation opens in when `conversion_location` is `messaging`. Empty
      # for other conversion locations.
      module MessageApp
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroup::MessageApp) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSENGER =
          T.let(:messenger, WhopSDK::AdGroup::MessageApp::TaggedSymbol)
        INSTAGRAM =
          T.let(:instagram, WhopSDK::AdGroup::MessageApp::TaggedSymbol)
        WHATSAPP = T.let(:whatsapp, WhopSDK::AdGroup::MessageApp::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdGroup::MessageApp::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end

# typed: strong

module WhopSDK
  module Models
    class AdCampaign < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::AdCampaign, WhopSDK::Internal::AnyHash) }

      # Unique identifier for the ad campaign, prefixed `adcamp_`.
      sig { returns(String) }
      attr_accessor :id

      # USD value attributed to add-to-cart events. Sums the value sent with each event,
      # normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :added_to_cart_value

      # Whop pixel-attributed add-to-cart events, last-click.
      sig { returns(Float) }
      attr_accessor :added_to_carts

      # The campaign's budget, in the ad account's currency. `null` when each ad group
      # sets its own budget instead.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget_amount

      # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
      # individually (`ad_group`).
      sig do
        returns(
          T.nilable(WhopSDK::AdCampaign::BudgetOptimization::TaggedSymbol)
        )
      end
      attr_accessor :budget_optimization

      # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
      # run (`lifetime`).
      sig { returns(T.nilable(WhopSDK::AdCampaign::BudgetType::TaggedSymbol)) }
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

      # When the campaign was created, as an ISO 8601 timestamp.
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

      # Whether the campaign's ads are delivering right now, and if not, why. When
      # several states apply at once, the highest-precedence one is returned.
      sig { returns(WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol) }
      attr_accessor :delivery_status

      # Platform-reported impressions divided by reach.
      sig { returns(T.nilable(Float)) }
      attr_accessor :frequency

      # The number of impressions.
      sig { returns(Float) }
      attr_accessor :impressions

      sig { returns(T::Array[WhopSDK::AdCampaign::Issue]) }
      attr_accessor :issues

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

      # The goal the campaign optimizes toward.
      sig { returns(T.nilable(WhopSDK::AdCampaign::Objective::TaggedSymbol)) }
      attr_accessor :objective

      # The event the campaign optimizes for when a single goal is set campaign-wide.
      # `null` when each ad group sets its own optimization_goal.
      sig { returns(T.nilable(String)) }
      attr_accessor :optimization_goal

      # The ad network the campaign runs on.
      sig { returns(WhopSDK::AdCampaign::Platform::TaggedSymbol) }
      attr_accessor :platform

      # USD value of pixel-attributed purchases.
      sig { returns(Float) }
      attr_accessor :purchase_value

      # Whop pixel-attributed purchases, last-click.
      sig { returns(Float) }
      attr_accessor :purchases

      # The number of unique people who saw this.
      sig { returns(Float) }
      attr_accessor :reach

      # The Whop pixel conversion event whose attributed count represents results — the
      # optimization goal, or the highest-volume attributed event for campaigns that
      # budget per ad group. Null when the goal isn't a Whop-attributed event.
      sig { returns(T.nilable(WhopSDK::AdCampaign::ResultEvent::TaggedSymbol)) }
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

      sig do
        returns(T::Array[WhopSDK::AdCampaign::SpecialAdCategory::TaggedSymbol])
      end
      attr_accessor :special_ad_categories

      # The amount charged, in spend_currency.
      sig { returns(Float) }
      attr_accessor :spend

      # The ISO 4217 currency code of all monetary metrics.
      sig { returns(T.nilable(String)) }
      attr_accessor :spend_currency

      # The lifecycle status of the ad campaign.
      sig { returns(WhopSDK::AdCampaign::Status::TaggedSymbol) }
      attr_accessor :status

      # USD value attributed to submit-application events. Sums the value sent with each
      # event, normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :submitted_application_value

      # Whop pixel-attributed submit-application events, last-click.
      sig { returns(Float) }
      attr_accessor :submitted_applications

      # Display name of the ad campaign.
      sig { returns(String) }
      attr_accessor :title

      # Unique clicks divided by impressions, between 0 and 1.
      sig { returns(T.nilable(Float)) }
      attr_accessor :unique_click_through_rate

      # People who clicked, reported by the Whop pixel, counted once per person.
      sig { returns(Float) }
      attr_accessor :unique_clicks

      # When the campaign was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # USD value attributed to view-content events. Sums the value sent with each
      # event, normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :viewed_content_value

      # Whop pixel-attributed view-content events, last-click.
      sig { returns(Float) }
      attr_accessor :viewed_contents

      # How delivery bids in the ad auction: `minimum_cost` gets the most results for
      # the budget, `average_target` holds an average cost per result, and
      # `maximum_target` never bids above a cap.
      sig { returns(T.nilable(WhopSDK::AdCampaign::BidType::TaggedSymbol)) }
      attr_accessor :bid_type

      sig do
        params(
          id: String,
          added_to_cart_value: Float,
          added_to_carts: Float,
          budget_amount: T.nilable(Float),
          budget_optimization:
            T.nilable(WhopSDK::AdCampaign::BudgetOptimization::OrSymbol),
          budget_type: T.nilable(WhopSDK::AdCampaign::BudgetType::OrSymbol),
          click_through_rate: Float,
          clicks: Float,
          completed_registration_value: Float,
          completed_registrations: Float,
          contact_value: Float,
          contacts: Float,
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
          delivery_status: WhopSDK::AdCampaign::DeliveryStatus::OrSymbol,
          frequency: T.nilable(Float),
          impressions: Float,
          issues: T::Array[WhopSDK::AdCampaign::Issue::OrHash],
          lead_value: Float,
          leads: Float,
          link_clicks: Float,
          objective: T.nilable(WhopSDK::AdCampaign::Objective::OrSymbol),
          optimization_goal: T.nilable(String),
          platform: WhopSDK::AdCampaign::Platform::OrSymbol,
          purchase_value: Float,
          purchases: Float,
          reach: Float,
          result_event: T.nilable(WhopSDK::AdCampaign::ResultEvent::OrSymbol),
          result_event_name: T.nilable(String),
          results: T.nilable(Float),
          return_on_ad_spend: Float,
          schedule_value: Float,
          schedules: Float,
          special_ad_categories:
            T::Array[WhopSDK::AdCampaign::SpecialAdCategory::OrSymbol],
          spend: Float,
          spend_currency: T.nilable(String),
          status: WhopSDK::AdCampaign::Status::OrSymbol,
          submitted_application_value: Float,
          submitted_applications: Float,
          title: String,
          unique_click_through_rate: T.nilable(Float),
          unique_clicks: Float,
          updated_at: String,
          viewed_content_value: Float,
          viewed_contents: Float,
          bid_type: T.nilable(WhopSDK::AdCampaign::BidType::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the ad campaign, prefixed `adcamp_`.
        id:,
        # USD value attributed to add-to-cart events. Sums the value sent with each event,
        # normalized to USD; events without a value contribute 0.
        added_to_cart_value:,
        # Whop pixel-attributed add-to-cart events, last-click.
        added_to_carts:,
        # The campaign's budget, in the ad account's currency. `null` when each ad group
        # sets its own budget instead.
        budget_amount:,
        # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
        # individually (`ad_group`).
        budget_optimization:,
        # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
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
        # When the campaign was created, as an ISO 8601 timestamp.
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
        # Whether the campaign's ads are delivering right now, and if not, why. When
        # several states apply at once, the highest-precedence one is returned.
        delivery_status:,
        # Platform-reported impressions divided by reach.
        frequency:,
        # The number of impressions.
        impressions:,
        issues:,
        # USD value attributed to lead events. Sums the value sent with each event,
        # normalized to USD; events without a value contribute 0.
        lead_value:,
        # Whop pixel-attributed leads, last-click.
        leads:,
        # Clicks on links in the ad that lead to your destination, as reported by the ad
        # platform. A subset of clicks, which also counts likes, comments, and other
        # interactions with the ad.
        link_clicks:,
        # The goal the campaign optimizes toward.
        objective:,
        # The event the campaign optimizes for when a single goal is set campaign-wide.
        # `null` when each ad group sets its own optimization_goal.
        optimization_goal:,
        # The ad network the campaign runs on.
        platform:,
        # USD value of pixel-attributed purchases.
        purchase_value:,
        # Whop pixel-attributed purchases, last-click.
        purchases:,
        # The number of unique people who saw this.
        reach:,
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
        special_ad_categories:,
        # The amount charged, in spend_currency.
        spend:,
        # The ISO 4217 currency code of all monetary metrics.
        spend_currency:,
        # The lifecycle status of the ad campaign.
        status:,
        # USD value attributed to submit-application events. Sums the value sent with each
        # event, normalized to USD; events without a value contribute 0.
        submitted_application_value:,
        # Whop pixel-attributed submit-application events, last-click.
        submitted_applications:,
        # Display name of the ad campaign.
        title:,
        # Unique clicks divided by impressions, between 0 and 1.
        unique_click_through_rate:,
        # People who clicked, reported by the Whop pixel, counted once per person.
        unique_clicks:,
        # When the campaign was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # USD value attributed to view-content events. Sums the value sent with each
        # event, normalized to USD; events without a value contribute 0.
        viewed_content_value:,
        # Whop pixel-attributed view-content events, last-click.
        viewed_contents:,
        # How delivery bids in the ad auction: `minimum_cost` gets the most results for
        # the budget, `average_target` holds an average cost per result, and
        # `maximum_target` never bids above a cap.
        bid_type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            added_to_cart_value: Float,
            added_to_carts: Float,
            budget_amount: T.nilable(Float),
            budget_optimization:
              T.nilable(WhopSDK::AdCampaign::BudgetOptimization::TaggedSymbol),
            budget_type:
              T.nilable(WhopSDK::AdCampaign::BudgetType::TaggedSymbol),
            click_through_rate: Float,
            clicks: Float,
            completed_registration_value: Float,
            completed_registrations: Float,
            contact_value: Float,
            contacts: Float,
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
            delivery_status: WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol,
            frequency: T.nilable(Float),
            impressions: Float,
            issues: T::Array[WhopSDK::AdCampaign::Issue],
            lead_value: Float,
            leads: Float,
            link_clicks: Float,
            objective: T.nilable(WhopSDK::AdCampaign::Objective::TaggedSymbol),
            optimization_goal: T.nilable(String),
            platform: WhopSDK::AdCampaign::Platform::TaggedSymbol,
            purchase_value: Float,
            purchases: Float,
            reach: Float,
            result_event:
              T.nilable(WhopSDK::AdCampaign::ResultEvent::TaggedSymbol),
            result_event_name: T.nilable(String),
            results: T.nilable(Float),
            return_on_ad_spend: Float,
            schedule_value: Float,
            schedules: Float,
            special_ad_categories:
              T::Array[WhopSDK::AdCampaign::SpecialAdCategory::TaggedSymbol],
            spend: Float,
            spend_currency: T.nilable(String),
            status: WhopSDK::AdCampaign::Status::TaggedSymbol,
            submitted_application_value: Float,
            submitted_applications: Float,
            title: String,
            unique_click_through_rate: T.nilable(Float),
            unique_clicks: Float,
            updated_at: String,
            viewed_content_value: Float,
            viewed_contents: Float,
            bid_type: T.nilable(WhopSDK::AdCampaign::BidType::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
      # individually (`ad_group`).
      module BudgetOptimization
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaign::BudgetOptimization)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD_CAMPAIGN =
          T.let(
            :ad_campaign,
            WhopSDK::AdCampaign::BudgetOptimization::TaggedSymbol
          )
        AD_GROUP =
          T.let(
            :ad_group,
            WhopSDK::AdCampaign::BudgetOptimization::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaign::BudgetOptimization::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
      # run (`lifetime`).
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaign::BudgetType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY = T.let(:daily, WhopSDK::AdCampaign::BudgetType::TaggedSymbol)
        LIFETIME =
          T.let(:lifetime, WhopSDK::AdCampaign::BudgetType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaign::BudgetType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether the campaign's ads are delivering right now, and if not, why. When
      # several states apply at once, the highest-precedence one is returned.
      module DeliveryStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaign::DeliveryStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_FAILED =
          T.let(
            :payment_failed,
            WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol
          )
        ALL_ADS_REJECTED =
          T.let(
            :all_ads_rejected,
            WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol
          )
        DRAFT = T.let(:draft, WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol)
        NO_AD_GROUPS =
          T.let(
            :no_ad_groups,
            WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol
          )
        NO_ADS =
          T.let(:no_ads, WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol)
        PROCESSING =
          T.let(:processing, WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol)
        ISSUES =
          T.let(:issues, WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol)
        SCHEDULED =
          T.let(:scheduled, WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol)
        COMPLETED =
          T.let(:completed, WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol)
        AD_GROUPS_OFF =
          T.let(
            :ad_groups_off,
            WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaign::DeliveryStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Issue < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdCampaign::Issue, WhopSDK::Internal::AnyHash)
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
        sig { returns(WhopSDK::AdCampaign::Issue::ResourceType::TaggedSymbol) }
        attr_accessor :resource_type

        # Open issues affecting the campaign and its descendant ad groups and ads.
        sig do
          params(
            id: String,
            message: String,
            resource_id: T.nilable(String),
            resource_type: WhopSDK::AdCampaign::Issue::ResourceType::OrSymbol
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
              resource_type:
                WhopSDK::AdCampaign::Issue::ResourceType::TaggedSymbol
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
              T.all(Symbol, WhopSDK::AdCampaign::Issue::ResourceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_CAMPAIGN =
            T.let(
              :ad_campaign,
              WhopSDK::AdCampaign::Issue::ResourceType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :ad_group,
              WhopSDK::AdCampaign::Issue::ResourceType::TaggedSymbol
            )
          AD =
            T.let(:ad, WhopSDK::AdCampaign::Issue::ResourceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::AdCampaign::Issue::ResourceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # The goal the campaign optimizes toward.
      module Objective
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaign::Objective) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWARENESS =
          T.let(:awareness, WhopSDK::AdCampaign::Objective::TaggedSymbol)
        TRAFFIC = T.let(:traffic, WhopSDK::AdCampaign::Objective::TaggedSymbol)
        ENGAGEMENT =
          T.let(:engagement, WhopSDK::AdCampaign::Objective::TaggedSymbol)
        LEADS = T.let(:leads, WhopSDK::AdCampaign::Objective::TaggedSymbol)
        SALES = T.let(:sales, WhopSDK::AdCampaign::Objective::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaign::Objective::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The ad network the campaign runs on.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaign::Platform) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META = T.let(:meta, WhopSDK::AdCampaign::Platform::TaggedSymbol)
        TIKTOK = T.let(:tiktok, WhopSDK::AdCampaign::Platform::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaign::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The Whop pixel conversion event whose attributed count represents results — the
      # optimization goal, or the highest-volume attributed event for campaigns that
      # budget per ad group. Null when the goal isn't a Whop-attributed event.
      module ResultEvent
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaign::ResultEvent) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASE =
          T.let(:purchase, WhopSDK::AdCampaign::ResultEvent::TaggedSymbol)
        LEAD = T.let(:lead, WhopSDK::AdCampaign::ResultEvent::TaggedSymbol)
        SCHEDULE =
          T.let(:schedule, WhopSDK::AdCampaign::ResultEvent::TaggedSymbol)
        SUBMIT_APPLICATION =
          T.let(
            :submit_application,
            WhopSDK::AdCampaign::ResultEvent::TaggedSymbol
          )
        CONTACT =
          T.let(:contact, WhopSDK::AdCampaign::ResultEvent::TaggedSymbol)
        COMPLETE_REGISTRATION =
          T.let(
            :complete_registration,
            WhopSDK::AdCampaign::ResultEvent::TaggedSymbol
          )
        VIEW_CONTENT =
          T.let(:view_content, WhopSDK::AdCampaign::ResultEvent::TaggedSymbol)
        ADD_TO_CART =
          T.let(:add_to_cart, WhopSDK::AdCampaign::ResultEvent::TaggedSymbol)
        CUSTOM = T.let(:custom, WhopSDK::AdCampaign::ResultEvent::TaggedSymbol)
        MESSAGING_CONVERSATION =
          T.let(
            :messaging_conversation,
            WhopSDK::AdCampaign::ResultEvent::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaign::ResultEvent::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Regulated categories the campaign is declared under. Ads in these categories are
      # subject to extra targeting restrictions. Empty when none apply.
      module SpecialAdCategory
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaign::SpecialAdCategory) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HOUSING =
          T.let(:housing, WhopSDK::AdCampaign::SpecialAdCategory::TaggedSymbol)
        EMPLOYMENT =
          T.let(
            :employment,
            WhopSDK::AdCampaign::SpecialAdCategory::TaggedSymbol
          )
        FINANCIAL_PRODUCTS =
          T.let(
            :financial_products,
            WhopSDK::AdCampaign::SpecialAdCategory::TaggedSymbol
          )
        POLITICS =
          T.let(:politics, WhopSDK::AdCampaign::SpecialAdCategory::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaign::SpecialAdCategory::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The lifecycle status of the ad campaign.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaign::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, WhopSDK::AdCampaign::Status::TaggedSymbol)
        PAUSED = T.let(:paused, WhopSDK::AdCampaign::Status::TaggedSymbol)
        INACTIVE = T.let(:inactive, WhopSDK::AdCampaign::Status::TaggedSymbol)
        STALE = T.let(:stale, WhopSDK::AdCampaign::Status::TaggedSymbol)
        PENDING_REFUND =
          T.let(:pending_refund, WhopSDK::AdCampaign::Status::TaggedSymbol)
        PAYMENT_FAILED =
          T.let(:payment_failed, WhopSDK::AdCampaign::Status::TaggedSymbol)
        DRAFT = T.let(:draft, WhopSDK::AdCampaign::Status::TaggedSymbol)
        IN_REVIEW = T.let(:in_review, WhopSDK::AdCampaign::Status::TaggedSymbol)
        FLAGGED = T.let(:flagged, WhopSDK::AdCampaign::Status::TaggedSymbol)
        IMPORTING = T.let(:importing, WhopSDK::AdCampaign::Status::TaggedSymbol)
        IMPORTED = T.let(:imported, WhopSDK::AdCampaign::Status::TaggedSymbol)
        DUPLICATING =
          T.let(:duplicating, WhopSDK::AdCampaign::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdCampaign::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # How delivery bids in the ad auction: `minimum_cost` gets the most results for
      # the budget, `average_target` holds an average cost per result, and
      # `maximum_target` never bids above a cap.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCampaign::BidType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM_COST =
          T.let(:minimum_cost, WhopSDK::AdCampaign::BidType::TaggedSymbol)
        AVERAGE_TARGET =
          T.let(:average_target, WhopSDK::AdCampaign::BidType::TaggedSymbol)
        MAXIMUM_TARGET =
          T.let(:maximum_target, WhopSDK::AdCampaign::BidType::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdCampaign::BidType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end

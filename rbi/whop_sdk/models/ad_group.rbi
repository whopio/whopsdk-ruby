# typed: strong

module WhopSDK
  module Models
    class AdGroup < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::AdGroup, WhopSDK::Internal::AnyHash) }

      # Unique identifier for the ad group.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad group belongs to, an object with an id.
      sig { returns(WhopSDK::AdGroup::AdCampaign) }
      attr_reader :ad_campaign

      sig { params(ad_campaign: WhopSDK::AdGroup::AdCampaign::OrHash).void }
      attr_writer :ad_campaign

      # Whop pixel-attributed add-to-cart events, last-click.
      sig { returns(Float) }
      attr_accessor :added_to_carts

      # Saved-audience targeting: { include, exclude } arrays of audience IDs.
      sig { returns(T.anything) }
      attr_accessor :audiences

      # Bid strategy.
      sig { returns(T.nilable(WhopSDK::AdGroup::BidType::TaggedSymbol)) }
      attr_accessor :bid_type

      # Ad-set budget; null when the campaign owns budget (CBO).
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget_amount

      # Whether the budget is daily or lifetime.
      sig { returns(T.nilable(WhopSDK::AdGroup::BudgetType::TaggedSymbol)) }
      attr_accessor :budget_type

      # Clicks divided by impressions, between 0 and 1.
      sig { returns(Float) }
      attr_accessor :click_through_rate

      # The number of clicks.
      sig { returns(Float) }
      attr_accessor :clicks

      # Whop pixel-attributed complete-registration events, last-click.
      sig { returns(Float) }
      attr_accessor :completed_registrations

      # Whop pixel-attributed contact events, last-click.
      sig { returns(Float) }
      attr_accessor :contacts

      # The pixel event optimized for. A standard event, or any custom pixel event name.
      sig { returns(T.nilable(WhopSDK::AdGroup::ConversionEvent::Variants)) }
      attr_accessor :conversion_event

      # Where results happen: website, profile (IG/FB), messaging (DM), on_ad
      # (engagement), or the lead destinations (instant_forms,
      # instant_forms_and_messenger, website_and_instant_forms).
      sig do
        returns(T.nilable(WhopSDK::AdGroup::ConversionLocation::TaggedSymbol))
      end
      attr_accessor :conversion_location

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

      # Spend divided by attributed view-content events; null when they are not the goal
      # and none are attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_viewed_content

      # When the ad group was created, ISO 8601.
      sig { returns(String) }
      attr_accessor :created_at

      # Whop pixel-attributed custom (merchant-defined) conversion events, last-click,
      # across all custom event names.
      sig { returns(Float) }
      attr_accessor :custom_conversions

      # Whop pixel-attributed custom conversions broken out by merchant-defined event
      # name, last-click, as a { event_name => count } map over the stats window. Empty
      # when no named custom events are attributed. Custom events fired without a name
      # are counted in custom_conversions but omitted here, so these values sum to at
      # most custom_conversions.
      sig { returns(T.anything) }
      attr_accessor :custom_event_counts

      # The current delivery state, mirroring the Delivery column in the ads dashboard.
      # When several states apply at once, the highest-precedence one is returned.
      sig { returns(WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol) }
      attr_accessor :delivery_status

      # Demographic targeting: automatic (Advantage+), age range, gender.
      sig { returns(T.anything) }
      attr_accessor :demographics

      # Target/cap cost for average_target / maximum_target.
      sig { returns(T.nilable(Float)) }
      attr_accessor :desired_cost_per_result

      # Detailed targeting: { interests: [{id, name}], behaviors: [{id, name}],
      # demographics: [{id, name, type}] } where demographics type is one of
      # life_events, industries, income, family_statuses. Incompatible with
      # demographics.automatic (Advantage+) and Special Ad Category campaigns.
      sig { returns(T.anything) }
      attr_accessor :detailed_targeting

      # Device targeting: platforms and operating systems.
      sig { returns(T.anything) }
      attr_accessor :devices

      # Whether ads within this ad group have their creatives and copy dynamically AB
      # tested.
      sig { returns(T::Boolean) }
      attr_accessor :dynamic_creative

      # Schedule end, ISO 8601.
      sig { returns(T.nilable(String)) }
      attr_accessor :ends_at

      # Platform-reported impressions divided by reach.
      sig { returns(T.nilable(Float)) }
      attr_accessor :frequency

      # Impression cap; only valid for reach optimization.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :frequency_cap

      # The number of impressions.
      sig { returns(Float) }
      attr_accessor :impressions

      sig { returns(T::Array[WhopSDK::AdGroup::Issue]) }
      attr_accessor :issues

      sig { returns(T::Array[String]) }
      attr_accessor :languages

      # Whop pixel-attributed leads, last-click.
      sig { returns(Float) }
      attr_accessor :leads

      sig { returns(T::Array[String]) }
      attr_accessor :message_apps

      # Daily spend floor within the budget.
      sig { returns(T.nilable(Float)) }
      attr_accessor :minimum_daily_spend

      # What the ad group optimizes for.
      sig { returns(T.nilable(String)) }
      attr_accessor :optimization_goal

      sig { returns(T::Array[T.anything]) }
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

      # Geo targeting: include/exclude countries, country_groups (include-only Meta
      # groups like worldwide — global reach), regions (ISO 3166-2 states, e.g. US-CA),
      # cities, zips, and custom_locations (pin + radius: { latitude, longitude, radius,
      # distance_unit, name }).
      sig { returns(T.anything) }
      attr_accessor :regions

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

      # Whop pixel-attributed schedule events, last-click.
      sig { returns(Float) }
      attr_accessor :schedules

      # The amount charged, in spend_currency.
      sig { returns(Float) }
      attr_accessor :spend

      # The ISO 4217 currency code of all monetary metrics.
      sig { returns(T.nilable(String)) }
      attr_accessor :spend_currency

      # Schedule start, ISO 8601.
      sig { returns(T.nilable(String)) }
      attr_accessor :starts_at

      # Delivery status of the ad group.
      sig { returns(WhopSDK::AdGroup::Status::TaggedSymbol) }
      attr_accessor :status

      # Whop pixel-attributed submit-application events, last-click.
      sig { returns(Float) }
      attr_accessor :submitted_applications

      # The display title of the ad group.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Unique clicks divided by impressions, between 0 and 1.
      sig { returns(T.nilable(Float)) }
      attr_accessor :unique_click_through_rate

      # The number of unique clicks.
      sig { returns(Float) }
      attr_accessor :unique_clicks

      # When the ad group was last updated, ISO 8601.
      sig { returns(String) }
      attr_accessor :updated_at

      # Whop pixel-attributed view-content events, last-click.
      sig { returns(Float) }
      attr_accessor :viewed_contents

      sig do
        params(
          id: String,
          ad_campaign: WhopSDK::AdGroup::AdCampaign::OrHash,
          added_to_carts: Float,
          audiences: T.anything,
          bid_type: T.nilable(WhopSDK::AdGroup::BidType::OrSymbol),
          budget_amount: T.nilable(Float),
          budget_type: T.nilable(WhopSDK::AdGroup::BudgetType::OrSymbol),
          click_through_rate: Float,
          clicks: Float,
          completed_registrations: Float,
          contacts: Float,
          conversion_event:
            T.nilable(
              T.any(WhopSDK::AdGroup::ConversionEvent::OrSymbol, String)
            ),
          conversion_location:
            T.nilable(WhopSDK::AdGroup::ConversionLocation::OrSymbol),
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
          cost_per_viewed_content: T.nilable(Float),
          created_at: String,
          custom_conversions: Float,
          custom_event_counts: T.anything,
          delivery_status: WhopSDK::AdGroup::DeliveryStatus::OrSymbol,
          demographics: T.anything,
          desired_cost_per_result: T.nilable(Float),
          detailed_targeting: T.anything,
          devices: T.anything,
          dynamic_creative: T::Boolean,
          ends_at: T.nilable(String),
          frequency: T.nilable(Float),
          frequency_cap: T.nilable(T.anything),
          impressions: Float,
          issues: T::Array[WhopSDK::AdGroup::Issue::OrHash],
          languages: T::Array[String],
          leads: Float,
          message_apps: T::Array[String],
          minimum_daily_spend: T.nilable(Float),
          optimization_goal: T.nilable(String),
          placements: T::Array[T.anything],
          purchase_value: Float,
          purchases: Float,
          reach: Float,
          regions: T.anything,
          result_event: T.nilable(WhopSDK::AdGroup::ResultEvent::OrSymbol),
          result_event_name: T.nilable(String),
          results: T.nilable(Float),
          return_on_ad_spend: Float,
          schedules: Float,
          spend: Float,
          spend_currency: T.nilable(String),
          starts_at: T.nilable(String),
          status: WhopSDK::AdGroup::Status::OrSymbol,
          submitted_applications: Float,
          title: T.nilable(String),
          unique_click_through_rate: T.nilable(Float),
          unique_clicks: Float,
          updated_at: String,
          viewed_contents: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the ad group.
        id:,
        # The ad campaign this ad group belongs to, an object with an id.
        ad_campaign:,
        # Whop pixel-attributed add-to-cart events, last-click.
        added_to_carts:,
        # Saved-audience targeting: { include, exclude } arrays of audience IDs.
        audiences:,
        # Bid strategy.
        bid_type:,
        # Ad-set budget; null when the campaign owns budget (CBO).
        budget_amount:,
        # Whether the budget is daily or lifetime.
        budget_type:,
        # Clicks divided by impressions, between 0 and 1.
        click_through_rate:,
        # The number of clicks.
        clicks:,
        # Whop pixel-attributed complete-registration events, last-click.
        completed_registrations:,
        # Whop pixel-attributed contact events, last-click.
        contacts:,
        # The pixel event optimized for. A standard event, or any custom pixel event name.
        conversion_event:,
        # Where results happen: website, profile (IG/FB), messaging (DM), on_ad
        # (engagement), or the lead destinations (instant_forms,
        # instant_forms_and_messenger, website_and_instant_forms).
        conversion_location:,
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
        # Spend divided by attributed view-content events; null when they are not the goal
        # and none are attributed.
        cost_per_viewed_content:,
        # When the ad group was created, ISO 8601.
        created_at:,
        # Whop pixel-attributed custom (merchant-defined) conversion events, last-click,
        # across all custom event names.
        custom_conversions:,
        # Whop pixel-attributed custom conversions broken out by merchant-defined event
        # name, last-click, as a { event_name => count } map over the stats window. Empty
        # when no named custom events are attributed. Custom events fired without a name
        # are counted in custom_conversions but omitted here, so these values sum to at
        # most custom_conversions.
        custom_event_counts:,
        # The current delivery state, mirroring the Delivery column in the ads dashboard.
        # When several states apply at once, the highest-precedence one is returned.
        delivery_status:,
        # Demographic targeting: automatic (Advantage+), age range, gender.
        demographics:,
        # Target/cap cost for average_target / maximum_target.
        desired_cost_per_result:,
        # Detailed targeting: { interests: [{id, name}], behaviors: [{id, name}],
        # demographics: [{id, name, type}] } where demographics type is one of
        # life_events, industries, income, family_statuses. Incompatible with
        # demographics.automatic (Advantage+) and Special Ad Category campaigns.
        detailed_targeting:,
        # Device targeting: platforms and operating systems.
        devices:,
        # Whether ads within this ad group have their creatives and copy dynamically AB
        # tested.
        dynamic_creative:,
        # Schedule end, ISO 8601.
        ends_at:,
        # Platform-reported impressions divided by reach.
        frequency:,
        # Impression cap; only valid for reach optimization.
        frequency_cap:,
        # The number of impressions.
        impressions:,
        issues:,
        languages:,
        # Whop pixel-attributed leads, last-click.
        leads:,
        message_apps:,
        # Daily spend floor within the budget.
        minimum_daily_spend:,
        # What the ad group optimizes for.
        optimization_goal:,
        placements:,
        # USD value of pixel-attributed purchases.
        purchase_value:,
        # Whop pixel-attributed purchases, last-click.
        purchases:,
        # The number of unique people who saw this.
        reach:,
        # Geo targeting: include/exclude countries, country_groups (include-only Meta
        # groups like worldwide — global reach), regions (ISO 3166-2 states, e.g. US-CA),
        # cities, zips, and custom_locations (pin + radius: { latitude, longitude, radius,
        # distance_unit, name }).
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
        # Whop pixel-attributed schedule events, last-click.
        schedules:,
        # The amount charged, in spend_currency.
        spend:,
        # The ISO 4217 currency code of all monetary metrics.
        spend_currency:,
        # Schedule start, ISO 8601.
        starts_at:,
        # Delivery status of the ad group.
        status:,
        # Whop pixel-attributed submit-application events, last-click.
        submitted_applications:,
        # The display title of the ad group.
        title:,
        # Unique clicks divided by impressions, between 0 and 1.
        unique_click_through_rate:,
        # The number of unique clicks.
        unique_clicks:,
        # When the ad group was last updated, ISO 8601.
        updated_at:,
        # Whop pixel-attributed view-content events, last-click.
        viewed_contents:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ad_campaign: WhopSDK::AdGroup::AdCampaign,
            added_to_carts: Float,
            audiences: T.anything,
            bid_type: T.nilable(WhopSDK::AdGroup::BidType::TaggedSymbol),
            budget_amount: T.nilable(Float),
            budget_type: T.nilable(WhopSDK::AdGroup::BudgetType::TaggedSymbol),
            click_through_rate: Float,
            clicks: Float,
            completed_registrations: Float,
            contacts: Float,
            conversion_event:
              T.nilable(WhopSDK::AdGroup::ConversionEvent::Variants),
            conversion_location:
              T.nilable(WhopSDK::AdGroup::ConversionLocation::TaggedSymbol),
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
            cost_per_viewed_content: T.nilable(Float),
            created_at: String,
            custom_conversions: Float,
            custom_event_counts: T.anything,
            delivery_status: WhopSDK::AdGroup::DeliveryStatus::TaggedSymbol,
            demographics: T.anything,
            desired_cost_per_result: T.nilable(Float),
            detailed_targeting: T.anything,
            devices: T.anything,
            dynamic_creative: T::Boolean,
            ends_at: T.nilable(String),
            frequency: T.nilable(Float),
            frequency_cap: T.nilable(T.anything),
            impressions: Float,
            issues: T::Array[WhopSDK::AdGroup::Issue],
            languages: T::Array[String],
            leads: Float,
            message_apps: T::Array[String],
            minimum_daily_spend: T.nilable(Float),
            optimization_goal: T.nilable(String),
            placements: T::Array[T.anything],
            purchase_value: Float,
            purchases: Float,
            reach: Float,
            regions: T.anything,
            result_event:
              T.nilable(WhopSDK::AdGroup::ResultEvent::TaggedSymbol),
            result_event_name: T.nilable(String),
            results: T.nilable(Float),
            return_on_ad_spend: Float,
            schedules: Float,
            spend: Float,
            spend_currency: T.nilable(String),
            starts_at: T.nilable(String),
            status: WhopSDK::AdGroup::Status::TaggedSymbol,
            submitted_applications: Float,
            title: T.nilable(String),
            unique_click_through_rate: T.nilable(Float),
            unique_clicks: Float,
            updated_at: String,
            viewed_contents: Float
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

        # The ad campaign this ad group belongs to, an object with an id.
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

      # Bid strategy.
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

      # Whether the budget is daily or lifetime.
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

      # Where results happen: website, profile (IG/FB), messaging (DM), on_ad
      # (engagement), or the lead destinations (instant_forms,
      # instant_forms_and_messenger, website_and_instant_forms).
      module ConversionLocation
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroup::ConversionLocation) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEBSITE =
          T.let(:website, WhopSDK::AdGroup::ConversionLocation::TaggedSymbol)
        PROFILE =
          T.let(:profile, WhopSDK::AdGroup::ConversionLocation::TaggedSymbol)
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

      # The current delivery state, mirroring the Delivery column in the ads dashboard.
      # When several states apply at once, the highest-precedence one is returned.
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

        # Open issues affecting this ad group and its descendant ads. Empty when there are
        # none.
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

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroup::ResultEvent::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Delivery status of the ad group.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AdGroup::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, WhopSDK::AdGroup::Status::TaggedSymbol)
        PAUSED = T.let(:paused, WhopSDK::AdGroup::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, WhopSDK::AdGroup::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AdGroup::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end

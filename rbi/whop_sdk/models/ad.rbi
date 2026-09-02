# typed: strong

module WhopSDK
  module Models
    class Ad < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::Ad, WhopSDK::Internal::AnyHash) }

      # Unique identifier for the ad, prefixed `ad_`.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad belongs to.
      sig { returns(WhopSDK::Ad::AdCampaign) }
      attr_reader :ad_campaign

      sig { params(ad_campaign: WhopSDK::Ad::AdCampaign::OrHash).void }
      attr_writer :ad_campaign

      # The ad group this ad belongs to.
      sig { returns(WhopSDK::Ad::AdGroup) }
      attr_reader :ad_group

      sig { params(ad_group: WhopSDK::Ad::AdGroup::OrHash).void }
      attr_writer :ad_group

      # USD value attributed to add-to-cart events. Sums the value sent with each event,
      # normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :added_to_cart_value

      # Whop pixel-attributed add-to-cart events, last-click.
      sig { returns(Float) }
      attr_accessor :added_to_carts

      # The call-to-action button shown on the ad.
      sig { returns(T.nilable(WhopSDK::Ad::CallToAction::TaggedSymbol)) }
      attr_accessor :call_to_action

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

      # When the ad was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(T::Array[WhopSDK::Ad::Creative]) }
      attr_accessor :creatives

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

      # Whether the ad is delivering right now, and if not, why. When several states
      # apply at once, the highest-precedence one is returned.
      sig { returns(WhopSDK::Ad::DeliveryStatus::TaggedSymbol) }
      attr_accessor :delivery_status

      sig { returns(T::Array[String]) }
      attr_accessor :descriptions

      # The post you pointed this ad at, when it promotes one you already published — a
      # Facebook post, Instagram media, or TikTok video ID. `null` when the ad uses
      # uploaded creatives.
      sig { returns(T.nilable(String)) }
      attr_accessor :existing_post_id

      # Platform-reported impressions divided by reach.
      sig { returns(T.nilable(Float)) }
      attr_accessor :frequency

      sig { returns(T::Array[String]) }
      attr_accessor :headlines

      # The number of impressions.
      sig { returns(Float) }
      attr_accessor :impressions

      sig { returns(T::Array[WhopSDK::Ad::Issue]) }
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

      # The post the ad network serves for this ad, as `pageID_postID` on Meta — the
      # post Meta created for an uploaded creative, or the post being promoted. Use it
      # to open the live post, or to promote the same post from another ad. `null` until
      # the network has created the post.
      sig { returns(T.nilable(String)) }
      attr_accessor :post_id

      # Identifies the network that owns `existing_post_id`; `null` when the ad uses
      # uploaded creatives.
      sig { returns(T.nilable(WhopSDK::Ad::PostSource::TaggedSymbol)) }
      attr_accessor :post_source

      # Preview image of the post named by `existing_post_id`. `null` for ads that use
      # uploaded creatives, or until the post's media has been fetched from the network.
      sig { returns(T.nilable(String)) }
      attr_accessor :post_thumbnail_url

      sig { returns(T::Array[String]) }
      attr_accessor :primary_texts

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
      sig { returns(T.nilable(WhopSDK::Ad::ResultEvent::TaggedSymbol)) }
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

      sig { returns(T::Array[WhopSDK::Ad::SocialAccount]) }
      attr_accessor :social_accounts

      # The amount charged, in spend_currency.
      sig { returns(Float) }
      attr_accessor :spend

      # The ISO 4217 currency code of all monetary metrics.
      sig { returns(T.nilable(String)) }
      attr_accessor :spend_currency

      # Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
      # `rejected` come from ad review.
      sig { returns(WhopSDK::Ad::Status::TaggedSymbol) }
      attr_accessor :status

      # USD value attributed to submit-application events. Sums the value sent with each
      # event, normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :submitted_application_value

      # Whop pixel-attributed submit-application events, last-click.
      sig { returns(Float) }
      attr_accessor :submitted_applications

      # Display title of the ad.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Unique clicks divided by impressions, between 0 and 1.
      sig { returns(T.nilable(Float)) }
      attr_accessor :unique_click_through_rate

      # People who clicked, reported by the Whop pixel, counted once per person.
      sig { returns(Float) }
      attr_accessor :unique_clicks

      # When the ad was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # The URL the ad links to, without its query string. Parameters belong in
      # `url_parameters`; any you send on `url` are moved there.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      # Every query parameter appended to the URL, keyed by parameter name — including
      # any you sent on `url` itself. Whop adds its own click-attribution parameters on
      # top; those are reserved and rejected if you set them. Which keys are reserved
      # depends on the ad's network — Meta: utm_meta_ad_id, utm_meta_adset_id,
      # utm_meta_campaign_id, utm_source, utm_placement, utm_medium, utm_content,
      # utm_adset, utm_whop, wacid, wasid, waid, tw_source, tw_adid; TikTok: waid,
      # wasid, wacid, ad_id, adset_id, campaign_id, utm_source, utm_medium,
      # utm_placement, utm_whop, tw_source, tw_adid.
      sig { returns(T.anything) }
      attr_accessor :url_parameters

      # USD value attributed to view-content events. Sums the value sent with each
      # event, normalized to USD; events without a value contribute 0.
      sig { returns(Float) }
      attr_accessor :viewed_content_value

      # Whop pixel-attributed view-content events, last-click.
      sig { returns(Float) }
      attr_accessor :viewed_contents

      # The instant lead form shown when someone taps this ad. `null` when the ad
      # group's conversion_location is not an instant-form destination.
      sig { returns(T.nilable(WhopSDK::Ad::LeadForm)) }
      attr_reader :lead_form

      sig { params(lead_form: T.nilable(WhopSDK::Ad::LeadForm::OrHash)).void }
      attr_writer :lead_form

      # The ad platform's ID for the instant form the ad uses. Set when the ad
      # references an existing form via `lead_form_id`, or once a form built from
      # `lead_form` has been created on the platform.
      sig { returns(T.nilable(String)) }
      attr_accessor :lead_form_id

      # Welcome message for click-to-message ads, shown when the conversation opens.
      # `null` when the ad has none.
      sig { returns(T.nilable(WhopSDK::Ad::MessagingConfig)) }
      attr_reader :messaging_config

      sig do
        params(
          messaging_config: T.nilable(WhopSDK::Ad::MessagingConfig::OrHash)
        ).void
      end
      attr_writer :messaging_config

      # Whether the ad can appear alongside other advertisers' ads in the same unit.
      # Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :multi_advertiser_ads

      sig { params(multi_advertiser_ads: T::Boolean).void }
      attr_writer :multi_advertiser_ads

      # The advertiser-uploaded MP3 a TikTok carousel ad plays. TikTok-only; `null`
      # elsewhere and for non-carousel ads.
      sig { returns(T.nilable(WhopSDK::Ad::Music)) }
      attr_reader :music

      sig { params(music: T.nilable(WhopSDK::Ad::Music::OrHash)).void }
      attr_writer :music

      sig do
        params(
          id: String,
          ad_campaign: WhopSDK::Ad::AdCampaign::OrHash,
          ad_group: WhopSDK::Ad::AdGroup::OrHash,
          added_to_cart_value: Float,
          added_to_carts: Float,
          call_to_action: T.nilable(WhopSDK::Ad::CallToAction::OrSymbol),
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
          creatives: T::Array[WhopSDK::Ad::Creative::OrHash],
          custom_conversions: Float,
          custom_event_counts: T.anything,
          custom_event_values: T.anything,
          delivery_status: WhopSDK::Ad::DeliveryStatus::OrSymbol,
          descriptions: T::Array[String],
          existing_post_id: T.nilable(String),
          frequency: T.nilable(Float),
          headlines: T::Array[String],
          impressions: Float,
          issues: T::Array[WhopSDK::Ad::Issue::OrHash],
          lead_value: Float,
          leads: Float,
          link_clicks: Float,
          post_id: T.nilable(String),
          post_source: T.nilable(WhopSDK::Ad::PostSource::OrSymbol),
          post_thumbnail_url: T.nilable(String),
          primary_texts: T::Array[String],
          purchase_value: Float,
          purchases: Float,
          reach: Float,
          result_event: T.nilable(WhopSDK::Ad::ResultEvent::OrSymbol),
          result_event_name: T.nilable(String),
          results: T.nilable(Float),
          return_on_ad_spend: Float,
          schedule_value: Float,
          schedules: Float,
          social_accounts: T::Array[WhopSDK::Ad::SocialAccount::OrHash],
          spend: Float,
          spend_currency: T.nilable(String),
          status: WhopSDK::Ad::Status::OrSymbol,
          submitted_application_value: Float,
          submitted_applications: Float,
          title: T.nilable(String),
          unique_click_through_rate: T.nilable(Float),
          unique_clicks: Float,
          updated_at: String,
          url: T.nilable(String),
          url_parameters: T.anything,
          viewed_content_value: Float,
          viewed_contents: Float,
          lead_form: T.nilable(WhopSDK::Ad::LeadForm::OrHash),
          lead_form_id: T.nilable(String),
          messaging_config: T.nilable(WhopSDK::Ad::MessagingConfig::OrHash),
          multi_advertiser_ads: T::Boolean,
          music: T.nilable(WhopSDK::Ad::Music::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the ad, prefixed `ad_`.
        id:,
        # The ad campaign this ad belongs to.
        ad_campaign:,
        # The ad group this ad belongs to.
        ad_group:,
        # USD value attributed to add-to-cart events. Sums the value sent with each event,
        # normalized to USD; events without a value contribute 0.
        added_to_cart_value:,
        # Whop pixel-attributed add-to-cart events, last-click.
        added_to_carts:,
        # The call-to-action button shown on the ad.
        call_to_action:,
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
        # When the ad was created, as an ISO 8601 timestamp.
        created_at:,
        creatives:,
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
        # Whether the ad is delivering right now, and if not, why. When several states
        # apply at once, the highest-precedence one is returned.
        delivery_status:,
        descriptions:,
        # The post you pointed this ad at, when it promotes one you already published — a
        # Facebook post, Instagram media, or TikTok video ID. `null` when the ad uses
        # uploaded creatives.
        existing_post_id:,
        # Platform-reported impressions divided by reach.
        frequency:,
        headlines:,
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
        # The post the ad network serves for this ad, as `pageID_postID` on Meta — the
        # post Meta created for an uploaded creative, or the post being promoted. Use it
        # to open the live post, or to promote the same post from another ad. `null` until
        # the network has created the post.
        post_id:,
        # Identifies the network that owns `existing_post_id`; `null` when the ad uses
        # uploaded creatives.
        post_source:,
        # Preview image of the post named by `existing_post_id`. `null` for ads that use
        # uploaded creatives, or until the post's media has been fetched from the network.
        post_thumbnail_url:,
        primary_texts:,
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
        social_accounts:,
        # The amount charged, in spend_currency.
        spend:,
        # The ISO 4217 currency code of all monetary metrics.
        spend_currency:,
        # Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
        # `rejected` come from ad review.
        status:,
        # USD value attributed to submit-application events. Sums the value sent with each
        # event, normalized to USD; events without a value contribute 0.
        submitted_application_value:,
        # Whop pixel-attributed submit-application events, last-click.
        submitted_applications:,
        # Display title of the ad.
        title:,
        # Unique clicks divided by impressions, between 0 and 1.
        unique_click_through_rate:,
        # People who clicked, reported by the Whop pixel, counted once per person.
        unique_clicks:,
        # When the ad was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # The URL the ad links to, without its query string. Parameters belong in
        # `url_parameters`; any you send on `url` are moved there.
        url:,
        # Every query parameter appended to the URL, keyed by parameter name — including
        # any you sent on `url` itself. Whop adds its own click-attribution parameters on
        # top; those are reserved and rejected if you set them. Which keys are reserved
        # depends on the ad's network — Meta: utm_meta_ad_id, utm_meta_adset_id,
        # utm_meta_campaign_id, utm_source, utm_placement, utm_medium, utm_content,
        # utm_adset, utm_whop, wacid, wasid, waid, tw_source, tw_adid; TikTok: waid,
        # wasid, wacid, ad_id, adset_id, campaign_id, utm_source, utm_medium,
        # utm_placement, utm_whop, tw_source, tw_adid.
        url_parameters:,
        # USD value attributed to view-content events. Sums the value sent with each
        # event, normalized to USD; events without a value contribute 0.
        viewed_content_value:,
        # Whop pixel-attributed view-content events, last-click.
        viewed_contents:,
        # The instant lead form shown when someone taps this ad. `null` when the ad
        # group's conversion_location is not an instant-form destination.
        lead_form: nil,
        # The ad platform's ID for the instant form the ad uses. Set when the ad
        # references an existing form via `lead_form_id`, or once a form built from
        # `lead_form` has been created on the platform.
        lead_form_id: nil,
        # Welcome message for click-to-message ads, shown when the conversation opens.
        # `null` when the ad has none.
        messaging_config: nil,
        # Whether the ad can appear alongside other advertisers' ads in the same unit.
        # Defaults to true.
        multi_advertiser_ads: nil,
        # The advertiser-uploaded MP3 a TikTok carousel ad plays. TikTok-only; `null`
        # elsewhere and for non-carousel ads.
        music: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ad_campaign: WhopSDK::Ad::AdCampaign,
            ad_group: WhopSDK::Ad::AdGroup,
            added_to_cart_value: Float,
            added_to_carts: Float,
            call_to_action: T.nilable(WhopSDK::Ad::CallToAction::TaggedSymbol),
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
            creatives: T::Array[WhopSDK::Ad::Creative],
            custom_conversions: Float,
            custom_event_counts: T.anything,
            custom_event_values: T.anything,
            delivery_status: WhopSDK::Ad::DeliveryStatus::TaggedSymbol,
            descriptions: T::Array[String],
            existing_post_id: T.nilable(String),
            frequency: T.nilable(Float),
            headlines: T::Array[String],
            impressions: Float,
            issues: T::Array[WhopSDK::Ad::Issue],
            lead_value: Float,
            leads: Float,
            link_clicks: Float,
            post_id: T.nilable(String),
            post_source: T.nilable(WhopSDK::Ad::PostSource::TaggedSymbol),
            post_thumbnail_url: T.nilable(String),
            primary_texts: T::Array[String],
            purchase_value: Float,
            purchases: Float,
            reach: Float,
            result_event: T.nilable(WhopSDK::Ad::ResultEvent::TaggedSymbol),
            result_event_name: T.nilable(String),
            results: T.nilable(Float),
            return_on_ad_spend: Float,
            schedule_value: Float,
            schedules: Float,
            social_accounts: T::Array[WhopSDK::Ad::SocialAccount],
            spend: Float,
            spend_currency: T.nilable(String),
            status: WhopSDK::Ad::Status::TaggedSymbol,
            submitted_application_value: Float,
            submitted_applications: Float,
            title: T.nilable(String),
            unique_click_through_rate: T.nilable(Float),
            unique_clicks: Float,
            updated_at: String,
            url: T.nilable(String),
            url_parameters: T.anything,
            viewed_content_value: Float,
            viewed_contents: Float,
            lead_form: T.nilable(WhopSDK::Ad::LeadForm),
            lead_form_id: T.nilable(String),
            messaging_config: T.nilable(WhopSDK::Ad::MessagingConfig),
            multi_advertiser_ads: T::Boolean,
            music: T.nilable(WhopSDK::Ad::Music)
          }
        )
      end
      def to_hash
      end

      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Ad::AdCampaign, WhopSDK::Internal::AnyHash)
          end

        # The referenced entity's id.
        sig { returns(String) }
        attr_accessor :id

        # The ad campaign this ad belongs to.
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

      class AdGroup < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Ad::AdGroup, WhopSDK::Internal::AnyHash)
          end

        # The referenced entity's id.
        sig { returns(String) }
        attr_accessor :id

        # The ad group this ad belongs to.
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

      # The call-to-action button shown on the ad.
      module CallToAction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Ad::CallToAction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEARN_MORE = T.let(:learn_more, WhopSDK::Ad::CallToAction::TaggedSymbol)
        SHOP_NOW = T.let(:shop_now, WhopSDK::Ad::CallToAction::TaggedSymbol)
        SIGN_UP = T.let(:sign_up, WhopSDK::Ad::CallToAction::TaggedSymbol)
        SUBSCRIBE = T.let(:subscribe, WhopSDK::Ad::CallToAction::TaggedSymbol)
        GET_STARTED =
          T.let(:get_started, WhopSDK::Ad::CallToAction::TaggedSymbol)
        BOOK_NOW = T.let(:book_now, WhopSDK::Ad::CallToAction::TaggedSymbol)
        APPLY_NOW = T.let(:apply_now, WhopSDK::Ad::CallToAction::TaggedSymbol)
        CONTACT_US = T.let(:contact_us, WhopSDK::Ad::CallToAction::TaggedSymbol)
        DOWNLOAD = T.let(:download, WhopSDK::Ad::CallToAction::TaggedSymbol)
        ORDER_NOW = T.let(:order_now, WhopSDK::Ad::CallToAction::TaggedSymbol)
        BUY_NOW = T.let(:buy_now, WhopSDK::Ad::CallToAction::TaggedSymbol)
        GET_QUOTE = T.let(:get_quote, WhopSDK::Ad::CallToAction::TaggedSymbol)
        MESSAGE_PAGE =
          T.let(:message_page, WhopSDK::Ad::CallToAction::TaggedSymbol)
        WHATSAPP_MESSAGE =
          T.let(:whatsapp_message, WhopSDK::Ad::CallToAction::TaggedSymbol)
        INSTAGRAM_MESSAGE =
          T.let(:instagram_message, WhopSDK::Ad::CallToAction::TaggedSymbol)
        CALL_NOW = T.let(:call_now, WhopSDK::Ad::CallToAction::TaggedSymbol)
        GET_DIRECTIONS =
          T.let(:get_directions, WhopSDK::Ad::CallToAction::TaggedSymbol)
        SEND_UPDATES =
          T.let(:send_updates, WhopSDK::Ad::CallToAction::TaggedSymbol)
        GET_OFFER = T.let(:get_offer, WhopSDK::Ad::CallToAction::TaggedSymbol)
        WATCH_MORE = T.let(:watch_more, WhopSDK::Ad::CallToAction::TaggedSymbol)
        LISTEN_NOW = T.let(:listen_now, WhopSDK::Ad::CallToAction::TaggedSymbol)
        PLAY_GAME = T.let(:play_game, WhopSDK::Ad::CallToAction::TaggedSymbol)
        OPEN_LINK = T.let(:open_link, WhopSDK::Ad::CallToAction::TaggedSymbol)
        NO_BUTTON = T.let(:no_button, WhopSDK::Ad::CallToAction::TaggedSymbol)
        GET_OFFER_VIEW =
          T.let(:get_offer_view, WhopSDK::Ad::CallToAction::TaggedSymbol)
        GET_EVENT_TICKETS =
          T.let(:get_event_tickets, WhopSDK::Ad::CallToAction::TaggedSymbol)
        SEE_MENU = T.let(:see_menu, WhopSDK::Ad::CallToAction::TaggedSymbol)
        REQUEST_TIME =
          T.let(:request_time, WhopSDK::Ad::CallToAction::TaggedSymbol)
        EVENT_RSVP = T.let(:event_rsvp, WhopSDK::Ad::CallToAction::TaggedSymbol)
        SEE_DETAILS =
          T.let(:see_details, WhopSDK::Ad::CallToAction::TaggedSymbol)
        VIEW_INSTAGRAM_PROFILE =
          T.let(
            :view_instagram_profile,
            WhopSDK::Ad::CallToAction::TaggedSymbol
          )

        sig do
          override.returns(T::Array[WhopSDK::Ad::CallToAction::TaggedSymbol])
        end
        def self.values
        end
      end

      class Creative < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Ad::Creative, WhopSDK::Internal::AnyHash)
          end

        # The creative attachment's file id.
        sig { returns(String) }
        attr_accessor :id

        # The saved crop window for this creative, in source image pixels. Null for the
        # original asset or a format that has not been cropped.
        sig { returns(T.nilable(WhopSDK::Ad::Creative::Crop)) }
        attr_reader :crop

        sig do
          params(crop: T.nilable(WhopSDK::Ad::Creative::Crop::OrHash)).void
        end
        attr_writer :crop

        # The placement variant this asset covers, or null for the original asset.
        sig { returns(T.nilable(WhopSDK::Ad::Creative::Format::TaggedSymbol)) }
        attr_accessor :format_

        # The kind of asset, image or video.
        sig { returns(T.nilable(String)) }
        attr_accessor :media_type

        # CDN url of the asset.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The creative assets used by this ad. The original asset has a null format;
        # square, vertical, and horizontal entries are placement-specific variants. A
        # carousel ad returns one format-null entry per attachment, in order.
        sig do
          params(
            id: String,
            crop: T.nilable(WhopSDK::Ad::Creative::Crop::OrHash),
            format_: T.nilable(WhopSDK::Ad::Creative::Format::OrSymbol),
            media_type: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The creative attachment's file id.
          id:,
          # The saved crop window for this creative, in source image pixels. Null for the
          # original asset or a format that has not been cropped.
          crop:,
          # The placement variant this asset covers, or null for the original asset.
          format_:,
          # The kind of asset, image or video.
          media_type:,
          # CDN url of the asset.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              crop: T.nilable(WhopSDK::Ad::Creative::Crop),
              format_: T.nilable(WhopSDK::Ad::Creative::Format::TaggedSymbol),
              media_type: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Crop < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(WhopSDK::Ad::Creative::Crop, WhopSDK::Internal::AnyHash)
            end

          # Height of the crop window in source pixels.
          sig { returns(Float) }
          attr_accessor :height

          # Width of the crop window in source pixels.
          sig { returns(Float) }
          attr_accessor :width

          # Left edge of the crop window in source pixels.
          sig { returns(Float) }
          attr_accessor :x

          # Top edge of the crop window in source pixels.
          sig { returns(Float) }
          attr_accessor :y_

          # The saved crop window for this creative, in source image pixels. Null for the
          # original asset or a format that has not been cropped.
          sig do
            params(height: Float, width: Float, x: Float, y_: Float).returns(
              T.attached_class
            )
          end
          def self.new(
            # Height of the crop window in source pixels.
            height:,
            # Width of the crop window in source pixels.
            width:,
            # Left edge of the crop window in source pixels.
            x:,
            # Top edge of the crop window in source pixels.
            y_:
          )
          end

          sig do
            override.returns(
              { height: Float, width: Float, x: Float, y_: Float }
            )
          end
          def to_hash
          end
        end

        # The placement variant this asset covers, or null for the original asset.
        module Format
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::Ad::Creative::Format) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SQUARE = T.let(:square, WhopSDK::Ad::Creative::Format::TaggedSymbol)
          VERTICAL =
            T.let(:vertical, WhopSDK::Ad::Creative::Format::TaggedSymbol)
          HORIZONTAL =
            T.let(:horizontal, WhopSDK::Ad::Creative::Format::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Ad::Creative::Format::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Whether the ad is delivering right now, and if not, why. When several states
      # apply at once, the highest-precedence one is returned.
      module DeliveryStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Ad::DeliveryStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REJECTED = T.let(:rejected, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        IN_REVIEW = T.let(:in_review, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        DRAFT = T.let(:draft, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        CAMPAIGN_PAUSED =
          T.let(:campaign_paused, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        AD_GROUP_PAUSED =
          T.let(:ad_group_paused, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        PAUSED = T.let(:paused, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        PROCESSING =
          T.let(:processing, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        ISSUES = T.let(:issues, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        SCHEDULED = T.let(:scheduled, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        LEARNING_LIMITED =
          T.let(:learning_limited, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        LEARNING = T.let(:learning, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)
        ACTIVE = T.let(:active, WhopSDK::Ad::DeliveryStatus::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Ad::DeliveryStatus::TaggedSymbol])
        end
        def self.values
        end
      end

      class Issue < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(WhopSDK::Ad::Issue, WhopSDK::Internal::AnyHash) }

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
        sig { returns(WhopSDK::Ad::Issue::ResourceType::TaggedSymbol) }
        attr_accessor :resource_type

        # Open issues affecting this ad. Empty when there are none.
        sig do
          params(
            id: String,
            message: String,
            resource_id: T.nilable(String),
            resource_type: WhopSDK::Ad::Issue::ResourceType::OrSymbol
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
              resource_type: WhopSDK::Ad::Issue::ResourceType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of resource the issue is attached to.
        module ResourceType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::Ad::Issue::ResourceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_CAMPAIGN =
            T.let(:ad_campaign, WhopSDK::Ad::Issue::ResourceType::TaggedSymbol)
          AD_GROUP =
            T.let(:ad_group, WhopSDK::Ad::Issue::ResourceType::TaggedSymbol)
          AD = T.let(:ad, WhopSDK::Ad::Issue::ResourceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Ad::Issue::ResourceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Identifies the network that owns `existing_post_id`; `null` when the ad uses
      # uploaded creatives.
      module PostSource
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Ad::PostSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FACEBOOK = T.let(:facebook, WhopSDK::Ad::PostSource::TaggedSymbol)
        INSTAGRAM = T.let(:instagram, WhopSDK::Ad::PostSource::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Ad::PostSource::TaggedSymbol])
        end
        def self.values
        end
      end

      # The Whop pixel conversion event whose attributed count represents results — the
      # optimization goal, or the highest-volume attributed event for campaigns that
      # budget per ad group. Null when the goal isn't a Whop-attributed event.
      module ResultEvent
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Ad::ResultEvent) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASE = T.let(:purchase, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        LEAD = T.let(:lead, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        SCHEDULE = T.let(:schedule, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        SUBMIT_APPLICATION =
          T.let(:submit_application, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        CONTACT = T.let(:contact, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        COMPLETE_REGISTRATION =
          T.let(:complete_registration, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        VIEW_CONTENT =
          T.let(:view_content, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        ADD_TO_CART =
          T.let(:add_to_cart, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        CUSTOM = T.let(:custom, WhopSDK::Ad::ResultEvent::TaggedSymbol)
        MESSAGING_CONVERSATION =
          T.let(:messaging_conversation, WhopSDK::Ad::ResultEvent::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Ad::ResultEvent::TaggedSymbol])
        end
        def self.values
        end
      end

      class SocialAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Ad::SocialAccount, WhopSDK::Internal::AnyHash)
          end

        # The referenced entity's id.
        sig { returns(String) }
        attr_accessor :id

        # The social accounts the ad runs under — its Facebook page and Instagram profile
        # — each referenced by ID, prefixed `sacc_`.
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

      # Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
      # `rejected` come from ad review.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Ad::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, WhopSDK::Ad::Status::TaggedSymbol)
        PAUSED = T.let(:paused, WhopSDK::Ad::Status::TaggedSymbol)
        IN_REVIEW = T.let(:in_review, WhopSDK::Ad::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, WhopSDK::Ad::Status::TaggedSymbol)

        sig { override.returns(T::Array[WhopSDK::Ad::Status::TaggedSymbol]) }
        def self.values
        end
      end

      class LeadForm < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Ad::LeadForm, WhopSDK::Internal::AnyHash)
          end

        # Screen shown after the form is submitted. `null` when the form uses the default.
        sig { returns(T.nilable(WhopSDK::Ad::LeadForm::Completion)) }
        attr_reader :completion

        sig do
          params(
            completion: T.nilable(WhopSDK::Ad::LeadForm::Completion::OrHash)
          ).void
        end
        attr_writer :completion

        # Custom consent disclaimer shown before submission. `null` when the form has
        # none.
        sig { returns(T.nilable(WhopSDK::Ad::LeadForm::Disclaimer)) }
        attr_reader :disclaimer

        sig do
          params(
            disclaimer: T.nilable(WhopSDK::Ad::LeadForm::Disclaimer::OrHash)
          ).void
        end
        attr_writer :disclaimer

        # `more_volume` is quickest to submit; `higher_intent` adds a confirmation step
        # before submission.
        sig { returns(WhopSDK::Ad::LeadForm::FormType::TaggedSymbol) }
        attr_accessor :form_type

        # Intro screen shown before the questions. `null` when the form has none.
        sig { returns(T.nilable(WhopSDK::Ad::LeadForm::Intro)) }
        attr_reader :intro

        sig do
          params(intro: T.nilable(WhopSDK::Ad::LeadForm::Intro::OrHash)).void
        end
        attr_writer :intro

        # Internal name of the form.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Whether the phone number must be verified by SMS before submitting.
        sig { returns(T::Boolean) }
        attr_accessor :phone_verification

        # Your privacy policy, linked from the form. `null` when unset.
        sig { returns(T.nilable(WhopSDK::Ad::LeadForm::PrivacyPolicy)) }
        attr_reader :privacy_policy

        sig do
          params(
            privacy_policy:
              T.nilable(WhopSDK::Ad::LeadForm::PrivacyPolicy::OrHash)
          ).void
        end
        attr_writer :privacy_policy

        sig { returns(T::Array[WhopSDK::Ad::LeadForm::Question]) }
        attr_accessor :questions

        # The instant lead form shown when someone taps this ad. `null` when the ad
        # group's conversion_location is not an instant-form destination.
        sig do
          params(
            completion: T.nilable(WhopSDK::Ad::LeadForm::Completion::OrHash),
            disclaimer: T.nilable(WhopSDK::Ad::LeadForm::Disclaimer::OrHash),
            form_type: WhopSDK::Ad::LeadForm::FormType::OrSymbol,
            intro: T.nilable(WhopSDK::Ad::LeadForm::Intro::OrHash),
            name: T.nilable(String),
            phone_verification: T::Boolean,
            privacy_policy:
              T.nilable(WhopSDK::Ad::LeadForm::PrivacyPolicy::OrHash),
            questions: T::Array[WhopSDK::Ad::LeadForm::Question::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Screen shown after the form is submitted. `null` when the form uses the default.
          completion:,
          # Custom consent disclaimer shown before submission. `null` when the form has
          # none.
          disclaimer:,
          # `more_volume` is quickest to submit; `higher_intent` adds a confirmation step
          # before submission.
          form_type:,
          # Intro screen shown before the questions. `null` when the form has none.
          intro:,
          # Internal name of the form.
          name:,
          # Whether the phone number must be verified by SMS before submitting.
          phone_verification:,
          # Your privacy policy, linked from the form. `null` when unset.
          privacy_policy:,
          questions:
        )
        end

        sig do
          override.returns(
            {
              completion: T.nilable(WhopSDK::Ad::LeadForm::Completion),
              disclaimer: T.nilable(WhopSDK::Ad::LeadForm::Disclaimer),
              form_type: WhopSDK::Ad::LeadForm::FormType::TaggedSymbol,
              intro: T.nilable(WhopSDK::Ad::LeadForm::Intro),
              name: T.nilable(String),
              phone_verification: T::Boolean,
              privacy_policy: T.nilable(WhopSDK::Ad::LeadForm::PrivacyPolicy),
              questions: T::Array[WhopSDK::Ad::LeadForm::Question]
            }
          )
        end
        def to_hash
        end

        class Completion < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Ad::LeadForm::Completion,
                WhopSDK::Internal::AnyHash
              )
            end

          # Text of the follow-up button.
          sig { returns(T.nilable(String)) }
          attr_accessor :button_text

          # Body text under the headline.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Headline of the completion screen.
          sig { returns(T.nilable(String)) }
          attr_accessor :headline

          # Website the follow-up button opens. `null` when the screen has no button.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # Screen shown after the form is submitted. `null` when the form uses the default.
          sig do
            params(
              button_text: T.nilable(String),
              description: T.nilable(String),
              headline: T.nilable(String),
              url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Text of the follow-up button.
            button_text:,
            # Body text under the headline.
            description:,
            # Headline of the completion screen.
            headline:,
            # Website the follow-up button opens. `null` when the screen has no button.
            url:
          )
          end

          sig do
            override.returns(
              {
                button_text: T.nilable(String),
                description: T.nilable(String),
                headline: T.nilable(String),
                url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Disclaimer < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Ad::LeadForm::Disclaimer,
                WhopSDK::Internal::AnyHash
              )
            end

          # Disclaimer text.
          sig { returns(T.nilable(String)) }
          attr_accessor :body

          sig { returns(T::Array[WhopSDK::Ad::LeadForm::Disclaimer::Checkbox]) }
          attr_accessor :checkboxes

          # Disclaimer title.
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          # Custom consent disclaimer shown before submission. `null` when the form has
          # none.
          sig do
            params(
              body: T.nilable(String),
              checkboxes:
                T::Array[WhopSDK::Ad::LeadForm::Disclaimer::Checkbox::OrHash],
              title: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Disclaimer text.
            body:,
            checkboxes:,
            # Disclaimer title.
            title:
          )
          end

          sig do
            override.returns(
              {
                body: T.nilable(String),
                checkboxes:
                  T::Array[WhopSDK::Ad::LeadForm::Disclaimer::Checkbox],
                title: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Checkbox < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Ad::LeadForm::Disclaimer::Checkbox,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Whether the checkbox starts ticked.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :checked_by_default

            # Stable identifier consent responses are stored under.
            sig { returns(T.nilable(String)) }
            attr_accessor :key

            # Whether the checkbox must be ticked to submit the form.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :required

            # Consent text next to the checkbox.
            sig { returns(String) }
            attr_accessor :text

            # Consent checkboxes the person can tick. Empty when the disclaimer is text-only.
            sig do
              params(
                checked_by_default: T.nilable(T::Boolean),
                key: T.nilable(String),
                required: T.nilable(T::Boolean),
                text: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether the checkbox starts ticked.
              checked_by_default:,
              # Stable identifier consent responses are stored under.
              key:,
              # Whether the checkbox must be ticked to submit the form.
              required:,
              # Consent text next to the checkbox.
              text:
            )
            end

            sig do
              override.returns(
                {
                  checked_by_default: T.nilable(T::Boolean),
                  key: T.nilable(String),
                  required: T.nilable(T::Boolean),
                  text: String
                }
              )
            end
            def to_hash
            end
          end
        end

        # `more_volume` is quickest to submit; `higher_intent` adds a confirmation step
        # before submission.
        module FormType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::Ad::LeadForm::FormType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MORE_VOLUME =
            T.let(:more_volume, WhopSDK::Ad::LeadForm::FormType::TaggedSymbol)
          HIGHER_INTENT =
            T.let(:higher_intent, WhopSDK::Ad::LeadForm::FormType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Ad::LeadForm::FormType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Intro < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(WhopSDK::Ad::LeadForm::Intro, WhopSDK::Internal::AnyHash)
            end

          # Body text under the headline.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Headline of the intro screen.
          sig { returns(T.nilable(String)) }
          attr_accessor :headline

          # Intro screen shown before the questions. `null` when the form has none.
          sig do
            params(
              description: T.nilable(String),
              headline: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Body text under the headline.
            description:,
            # Headline of the intro screen.
            headline:
          )
          end

          sig do
            override.returns(
              { description: T.nilable(String), headline: T.nilable(String) }
            )
          end
          def to_hash
          end
        end

        class PrivacyPolicy < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Ad::LeadForm::PrivacyPolicy,
                WhopSDK::Internal::AnyHash
              )
            end

          # Link text shown for the policy. `null` uses the platform default.
          sig { returns(T.nilable(String)) }
          attr_accessor :link_text

          # URL of your privacy policy.
          sig { returns(String) }
          attr_accessor :url

          # Your privacy policy, linked from the form. `null` when unset.
          sig do
            params(link_text: T.nilable(String), url: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Link text shown for the policy. `null` uses the platform default.
            link_text:,
            # URL of your privacy policy.
            url:
          )
          end

          sig do
            override.returns({ link_text: T.nilable(String), url: String })
          end
          def to_hash
          end
        end

        class Question < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(WhopSDK::Ad::LeadForm::Question, WhopSDK::Internal::AnyHash)
            end

          # Question type: a standard prefill type such as `email`, `phone`, or `full_name`,
          # or `custom` for your own question.
          sig { returns(String) }
          attr_accessor :type

          # Answer format for `custom` questions: `short_answer`, `multiple_choice`, or
          # `appointment`. Absent otherwise.
          sig { returns(T.nilable(String)) }
          attr_reader :format_

          sig { params(format_: String).void }
          attr_writer :format_

          # Question text for `custom` questions. Absent for standard prefill questions.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          sig do
            returns(
              T.nilable(T::Array[WhopSDK::Ad::LeadForm::Question::Option])
            )
          end
          attr_reader :options

          sig do
            params(
              options: T::Array[WhopSDK::Ad::LeadForm::Question::Option::OrHash]
            ).void
          end
          attr_writer :options

          # Questions on the form, in order.
          sig do
            params(
              type: String,
              format_: String,
              label: String,
              options: T::Array[WhopSDK::Ad::LeadForm::Question::Option::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Question type: a standard prefill type such as `email`, `phone`, or `full_name`,
            # or `custom` for your own question.
            type:,
            # Answer format for `custom` questions: `short_answer`, `multiple_choice`, or
            # `appointment`. Absent otherwise.
            format_: nil,
            # Question text for `custom` questions. Absent for standard prefill questions.
            label: nil,
            options: nil
          )
          end

          sig do
            override.returns(
              {
                type: String,
                format_: String,
                label: String,
                options: T::Array[WhopSDK::Ad::LeadForm::Question::Option]
              }
            )
          end
          def to_hash
          end

          class Option < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Ad::LeadForm::Question::Option,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Choice text shown to the person.
            sig { returns(String) }
            attr_accessor :value

            # Stable identifier the choice's answers are stored under. Absent for simple
            # choices.
            sig { returns(T.nilable(String)) }
            attr_accessor :key

            # Where the form goes when this choice is selected. Absent when the form just
            # continues to the next question.
            sig do
              returns(T.nilable(WhopSDK::Ad::LeadForm::Question::Option::Logic))
            end
            attr_reader :logic

            sig do
              params(
                logic: WhopSDK::Ad::LeadForm::Question::Option::Logic::OrHash
              ).void
            end
            attr_writer :logic

            # Choices for `multiple_choice` questions. Absent for other formats.
            sig do
              params(
                value: String,
                key: T.nilable(String),
                logic: WhopSDK::Ad::LeadForm::Question::Option::Logic::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Choice text shown to the person.
              value:,
              # Stable identifier the choice's answers are stored under. Absent for simple
              # choices.
              key: nil,
              # Where the form goes when this choice is selected. Absent when the form just
              # continues to the next question.
              logic: nil
            )
            end

            sig do
              override.returns(
                {
                  value: String,
                  key: T.nilable(String),
                  logic: WhopSDK::Ad::LeadForm::Question::Option::Logic
                }
              )
            end
            def to_hash
            end

            class Logic < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Ad::LeadForm::Question::Option::Logic,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # What happens when the choice is selected.
              sig do
                returns(
                  WhopSDK::Ad::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                )
              end
              attr_accessor :action

              # Zero-based index of the ending screen to jump to.
              sig { returns(T.nilable(Float)) }
              attr_reader :target_end_page_index

              sig { params(target_end_page_index: Float).void }
              attr_writer :target_end_page_index

              # Zero-based index of the question to jump to, for `go_to_question`.
              sig { returns(T.nilable(Float)) }
              attr_reader :target_question_index

              sig { params(target_question_index: Float).void }
              attr_writer :target_question_index

              # Where the form goes when this choice is selected. Absent when the form just
              # continues to the next question.
              sig do
                params(
                  action:
                    WhopSDK::Ad::LeadForm::Question::Option::Logic::Action::OrSymbol,
                  target_end_page_index: Float,
                  target_question_index: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # What happens when the choice is selected.
                action:,
                # Zero-based index of the ending screen to jump to.
                target_end_page_index: nil,
                # Zero-based index of the question to jump to, for `go_to_question`.
                target_question_index: nil
              )
              end

              sig do
                override.returns(
                  {
                    action:
                      WhopSDK::Ad::LeadForm::Question::Option::Logic::Action::TaggedSymbol,
                    target_end_page_index: Float,
                    target_question_index: Float
                  }
                )
              end
              def to_hash
              end

              # What happens when the choice is selected.
              module Action
                extend WhopSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      WhopSDK::Ad::LeadForm::Question::Option::Logic::Action
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                GO_TO_QUESTION =
                  T.let(
                    :go_to_question,
                    WhopSDK::Ad::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                  )
                SUBMIT_FORM =
                  T.let(
                    :submit_form,
                    WhopSDK::Ad::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                  )
                CLOSE_FORM =
                  T.let(
                    :close_form,
                    WhopSDK::Ad::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      WhopSDK::Ad::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end

      class MessagingConfig < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Ad::MessagingConfig, WhopSDK::Internal::AnyHash)
          end

        # Suggested reply the person can tap to start the conversation.
        sig { returns(T.nilable(String)) }
        attr_accessor :keyword

        # Greeting shown when the conversation opens.
        sig { returns(T.nilable(String)) }
        attr_accessor :message

        # Welcome message for click-to-message ads, shown when the conversation opens.
        # `null` when the ad has none.
        sig do
          params(
            keyword: T.nilable(String),
            message: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Suggested reply the person can tap to start the conversation.
          keyword:,
          # Greeting shown when the conversation opens.
          message:
        )
        end

        sig do
          override.returns(
            { keyword: T.nilable(String), message: T.nilable(String) }
          )
        end
        def to_hash
        end
      end

      class Music < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(WhopSDK::Ad::Music, WhopSDK::Internal::AnyHash) }

        # The music attachment's file id.
        sig { returns(String) }
        attr_accessor :id

        # The uploaded file's name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # CDN url of the MP3.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The advertiser-uploaded MP3 a TikTok carousel ad plays. TikTok-only; `null`
        # elsewhere and for non-carousel ads.
        sig do
          params(
            id: String,
            name: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The music attachment's file id.
          id:,
          # The uploaded file's name.
          name:,
          # CDN url of the MP3.
          url:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), url: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end

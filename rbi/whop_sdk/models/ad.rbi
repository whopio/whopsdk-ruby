# typed: strong

module WhopSDK
  module Models
    class Ad < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::Ad, WhopSDK::Internal::AnyHash) }

      # Unique identifier for the ad.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad belongs to, an object with an id.
      sig { returns(WhopSDK::Ad::AdCampaign) }
      attr_reader :ad_campaign

      sig { params(ad_campaign: WhopSDK::Ad::AdCampaign::OrHash).void }
      attr_writer :ad_campaign

      # The ad group this ad belongs to, an object with an id.
      sig { returns(WhopSDK::Ad::AdGroup) }
      attr_reader :ad_group

      sig { params(ad_group: WhopSDK::Ad::AdGroup::OrHash).void }
      attr_writer :ad_group

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

      # Whop pixel-attributed complete-registration events, last-click.
      sig { returns(Float) }
      attr_accessor :completed_registrations

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

      # The current delivery state, mirroring the Delivery column in the ads dashboard.
      # When several states apply at once, the highest-precedence one is returned.
      sig { returns(WhopSDK::Ad::DeliveryStatus::TaggedSymbol) }
      attr_accessor :delivery_status

      sig { returns(T::Array[String]) }
      attr_accessor :descriptions

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

      # The instant lead form on the ad (Meta lead ads), or null when the ad group's
      # conversion_location is not an instant-form destination. An object with name,
      # form_type (more_volume or higher_intent), an optional intro, questions, a
      # privacy_policy, an optional completion screen, and phone_verification.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :lead_form

      # The Meta lead form the ad uses. Set when the ad references an existing form via
      # lead_form_id, or once a form built from lead_form has been created on Meta at
      # launch.
      sig { returns(T.nilable(String)) }
      attr_accessor :lead_form_id

      # Whop pixel-attributed leads, last-click.
      sig { returns(Float) }
      attr_accessor :leads

      # The click-to-message welcome copy, an object with message and keyword, or null
      # when the ad has none.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :messaging_config

      # Whether the ad can appear alongside other advertisers' ads in the same unit.
      # Defaults to true.
      sig { returns(T::Boolean) }
      attr_accessor :multi_advertiser_ads

      # The existing post this ad promotes (a Facebook post or Instagram media), or null
      # when it uses uploaded creatives.
      sig { returns(T.nilable(String)) }
      attr_accessor :post_id

      # Which network post_id refers to — facebook (a page post) or instagram (a media
      # id) — or null when the ad uses uploaded creatives.
      sig { returns(T.nilable(WhopSDK::Ad::PostSource::TaggedSymbol)) }
      attr_accessor :post_source

      # Preview image of the existing post this ad promotes. Null for ads that use
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

      # Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
      # there is no spend.
      sig { returns(Float) }
      attr_accessor :return_on_ad_spend

      # Whop pixel-attributed schedule events, last-click.
      sig { returns(Float) }
      attr_accessor :schedules

      sig { returns(T::Array[T.anything]) }
      attr_accessor :social_accounts

      # The amount charged, in spend_currency.
      sig { returns(Float) }
      attr_accessor :spend

      # The ISO 4217 currency code of all monetary metrics.
      sig { returns(T.nilable(String)) }
      attr_accessor :spend_currency

      # The delivery status of the ad.
      sig { returns(WhopSDK::Ad::Status::TaggedSymbol) }
      attr_accessor :status

      # Whop pixel-attributed submit-application events, last-click.
      sig { returns(Float) }
      attr_accessor :submitted_applications

      # The display title of the ad. Falls back to the creative set caption when unset.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Unique clicks divided by impressions, between 0 and 1.
      sig { returns(T.nilable(Float)) }
      attr_accessor :unique_click_through_rate

      # The number of unique clicks.
      sig { returns(Float) }
      attr_accessor :unique_clicks

      # When the ad was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # The URL the ad links to.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      # Query parameters appended to the URL, as a string-to-string map.
      sig { returns(T.anything) }
      attr_accessor :url_parameters

      # Whop pixel-attributed view-content events, last-click.
      sig { returns(Float) }
      attr_accessor :viewed_contents

      sig do
        params(
          id: String,
          ad_campaign: WhopSDK::Ad::AdCampaign::OrHash,
          ad_group: WhopSDK::Ad::AdGroup::OrHash,
          added_to_carts: Float,
          call_to_action: T.nilable(WhopSDK::Ad::CallToAction::OrSymbol),
          click_through_rate: Float,
          clicks: Float,
          completed_registrations: Float,
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
          cost_per_viewed_content: T.nilable(Float),
          created_at: String,
          creatives: T::Array[WhopSDK::Ad::Creative::OrHash],
          custom_conversions: Float,
          delivery_status: WhopSDK::Ad::DeliveryStatus::OrSymbol,
          descriptions: T::Array[String],
          frequency: T.nilable(Float),
          headlines: T::Array[String],
          impressions: Float,
          issues: T::Array[WhopSDK::Ad::Issue::OrHash],
          lead_form: T.nilable(T.anything),
          lead_form_id: T.nilable(String),
          leads: Float,
          messaging_config: T.nilable(T.anything),
          multi_advertiser_ads: T::Boolean,
          post_id: T.nilable(String),
          post_source: T.nilable(WhopSDK::Ad::PostSource::OrSymbol),
          post_thumbnail_url: T.nilable(String),
          primary_texts: T::Array[String],
          purchase_value: Float,
          purchases: Float,
          reach: Float,
          result_event: T.nilable(WhopSDK::Ad::ResultEvent::OrSymbol),
          result_event_name: T.nilable(String),
          return_on_ad_spend: Float,
          schedules: Float,
          social_accounts: T::Array[T.anything],
          spend: Float,
          spend_currency: T.nilable(String),
          status: WhopSDK::Ad::Status::OrSymbol,
          submitted_applications: Float,
          title: T.nilable(String),
          unique_click_through_rate: T.nilable(Float),
          unique_clicks: Float,
          updated_at: String,
          url: T.nilable(String),
          url_parameters: T.anything,
          viewed_contents: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the ad.
        id:,
        # The ad campaign this ad belongs to, an object with an id.
        ad_campaign:,
        # The ad group this ad belongs to, an object with an id.
        ad_group:,
        # Whop pixel-attributed add-to-cart events, last-click.
        added_to_carts:,
        # The call-to-action button shown on the ad.
        call_to_action:,
        # Clicks divided by impressions, between 0 and 1.
        click_through_rate:,
        # The number of clicks.
        clicks:,
        # Whop pixel-attributed complete-registration events, last-click.
        completed_registrations:,
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
        # Spend divided by attributed view-content events; null when they are not the goal
        # and none are attributed.
        cost_per_viewed_content:,
        # When the ad was created, as an ISO 8601 timestamp.
        created_at:,
        creatives:,
        # Whop pixel-attributed custom (merchant-defined) conversion events, last-click,
        # across all custom event names.
        custom_conversions:,
        # The current delivery state, mirroring the Delivery column in the ads dashboard.
        # When several states apply at once, the highest-precedence one is returned.
        delivery_status:,
        descriptions:,
        # Platform-reported impressions divided by reach.
        frequency:,
        headlines:,
        # The number of impressions.
        impressions:,
        issues:,
        # The instant lead form on the ad (Meta lead ads), or null when the ad group's
        # conversion_location is not an instant-form destination. An object with name,
        # form_type (more_volume or higher_intent), an optional intro, questions, a
        # privacy_policy, an optional completion screen, and phone_verification.
        lead_form:,
        # The Meta lead form the ad uses. Set when the ad references an existing form via
        # lead_form_id, or once a form built from lead_form has been created on Meta at
        # launch.
        lead_form_id:,
        # Whop pixel-attributed leads, last-click.
        leads:,
        # The click-to-message welcome copy, an object with message and keyword, or null
        # when the ad has none.
        messaging_config:,
        # Whether the ad can appear alongside other advertisers' ads in the same unit.
        # Defaults to true.
        multi_advertiser_ads:,
        # The existing post this ad promotes (a Facebook post or Instagram media), or null
        # when it uses uploaded creatives.
        post_id:,
        # Which network post_id refers to — facebook (a page post) or instagram (a media
        # id) — or null when the ad uses uploaded creatives.
        post_source:,
        # Preview image of the existing post this ad promotes. Null for ads that use
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
        # Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
        # there is no spend.
        return_on_ad_spend:,
        # Whop pixel-attributed schedule events, last-click.
        schedules:,
        social_accounts:,
        # The amount charged, in spend_currency.
        spend:,
        # The ISO 4217 currency code of all monetary metrics.
        spend_currency:,
        # The delivery status of the ad.
        status:,
        # Whop pixel-attributed submit-application events, last-click.
        submitted_applications:,
        # The display title of the ad. Falls back to the creative set caption when unset.
        title:,
        # Unique clicks divided by impressions, between 0 and 1.
        unique_click_through_rate:,
        # The number of unique clicks.
        unique_clicks:,
        # When the ad was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # The URL the ad links to.
        url:,
        # Query parameters appended to the URL, as a string-to-string map.
        url_parameters:,
        # Whop pixel-attributed view-content events, last-click.
        viewed_contents:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ad_campaign: WhopSDK::Ad::AdCampaign,
            ad_group: WhopSDK::Ad::AdGroup,
            added_to_carts: Float,
            call_to_action: T.nilable(WhopSDK::Ad::CallToAction::TaggedSymbol),
            click_through_rate: Float,
            clicks: Float,
            completed_registrations: Float,
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
            cost_per_viewed_content: T.nilable(Float),
            created_at: String,
            creatives: T::Array[WhopSDK::Ad::Creative],
            custom_conversions: Float,
            delivery_status: WhopSDK::Ad::DeliveryStatus::TaggedSymbol,
            descriptions: T::Array[String],
            frequency: T.nilable(Float),
            headlines: T::Array[String],
            impressions: Float,
            issues: T::Array[WhopSDK::Ad::Issue],
            lead_form: T.nilable(T.anything),
            lead_form_id: T.nilable(String),
            leads: Float,
            messaging_config: T.nilable(T.anything),
            multi_advertiser_ads: T::Boolean,
            post_id: T.nilable(String),
            post_source: T.nilable(WhopSDK::Ad::PostSource::TaggedSymbol),
            post_thumbnail_url: T.nilable(String),
            primary_texts: T::Array[String],
            purchase_value: Float,
            purchases: Float,
            reach: Float,
            result_event: T.nilable(WhopSDK::Ad::ResultEvent::TaggedSymbol),
            result_event_name: T.nilable(String),
            return_on_ad_spend: Float,
            schedules: Float,
            social_accounts: T::Array[T.anything],
            spend: Float,
            spend_currency: T.nilable(String),
            status: WhopSDK::Ad::Status::TaggedSymbol,
            submitted_applications: Float,
            title: T.nilable(String),
            unique_click_through_rate: T.nilable(Float),
            unique_clicks: Float,
            updated_at: String,
            url: T.nilable(String),
            url_parameters: T.anything,
            viewed_contents: Float
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

        # The ad campaign this ad belongs to, an object with an id.
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

        # The ad group this ad belongs to, an object with an id.
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
        # square, vertical, and horizontal entries are placement-specific variants.
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

      # The current delivery state, mirroring the Delivery column in the ads dashboard.
      # When several states apply at once, the highest-precedence one is returned.
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

      # Which network post_id refers to — facebook (a page post) or instagram (a media
      # id) — or null when the ad uses uploaded creatives.
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

        sig do
          override.returns(T::Array[WhopSDK::Ad::ResultEvent::TaggedSymbol])
        end
        def self.values
        end
      end

      # The delivery status of the ad.
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
    end
  end
end

# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#create
    class Ad < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the ad.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad belongs to, an object with an id.
      #
      #   @return [WhopSDK::Models::Ad::AdCampaign]
      required :ad_campaign, -> { WhopSDK::Ad::AdCampaign }

      # @!attribute ad_group
      #   The ad group this ad belongs to, an object with an id.
      #
      #   @return [WhopSDK::Models::Ad::AdGroup]
      required :ad_group, -> { WhopSDK::Ad::AdGroup }

      # @!attribute added_to_carts
      #   Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @return [Float]
      required :added_to_carts, Float

      # @!attribute call_to_action
      #   The call-to-action button shown on the ad.
      #
      #   @return [Symbol, WhopSDK::Models::Ad::CallToAction, nil]
      required :call_to_action, enum: -> { WhopSDK::Ad::CallToAction }, nil?: true

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
      #   When the ad was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute creatives
      #
      #   @return [Array<WhopSDK::Models::Ad::Creative>]
      required :creatives, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Creative] }

      # @!attribute custom_conversions
      #   Whop pixel-attributed custom (merchant-defined) conversion events, last-click,
      #   across all custom event names.
      #
      #   @return [Float]
      required :custom_conversions, Float

      # @!attribute delivery_status
      #   The current delivery state, mirroring the Delivery column in the ads dashboard.
      #   When several states apply at once, the highest-precedence one is returned.
      #
      #   @return [Symbol, WhopSDK::Models::Ad::DeliveryStatus]
      required :delivery_status, enum: -> { WhopSDK::Ad::DeliveryStatus }

      # @!attribute descriptions
      #
      #   @return [Array<String>]
      required :descriptions, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute frequency
      #   Platform-reported impressions divided by reach.
      #
      #   @return [Float, nil]
      required :frequency, Float, nil?: true

      # @!attribute headlines
      #
      #   @return [Array<String>]
      required :headlines, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute impressions
      #   The number of impressions.
      #
      #   @return [Float]
      required :impressions, Float

      # @!attribute issues
      #
      #   @return [Array<WhopSDK::Models::Ad::Issue>]
      required :issues, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Issue] }

      # @!attribute lead_form
      #   The instant lead form on the ad (Meta lead ads), or null when the ad group's
      #   conversion_location is not an instant-form destination. An object with name,
      #   form_type (more_volume or higher_intent), an optional intro, questions, a
      #   privacy_policy, an optional completion screen, and phone_verification.
      #
      #   @return [Object, nil]
      required :lead_form, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute lead_form_id
      #   The Meta lead form the ad uses. Set when the ad references an existing form via
      #   lead_form_id, or once a form built from lead_form has been created on Meta at
      #   launch.
      #
      #   @return [String, nil]
      required :lead_form_id, String, nil?: true

      # @!attribute leads
      #   Whop pixel-attributed leads, last-click.
      #
      #   @return [Float]
      required :leads, Float

      # @!attribute messaging_config
      #   The click-to-message welcome copy, an object with message and keyword, or null
      #   when the ad has none.
      #
      #   @return [Object, nil]
      required :messaging_config, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute multi_advertiser_ads
      #   Whether the ad can appear alongside other advertisers' ads in the same unit.
      #   Defaults to true.
      #
      #   @return [Boolean]
      required :multi_advertiser_ads, WhopSDK::Internal::Type::Boolean

      # @!attribute post_id
      #   The existing post this ad promotes (a Facebook post or Instagram media), or null
      #   when it uses uploaded creatives.
      #
      #   @return [String, nil]
      required :post_id, String, nil?: true

      # @!attribute post_source
      #   Which network post_id refers to — facebook (a page post) or instagram (a media
      #   id) — or null when the ad uses uploaded creatives.
      #
      #   @return [Symbol, WhopSDK::Models::Ad::PostSource, nil]
      required :post_source, enum: -> { WhopSDK::Ad::PostSource }, nil?: true

      # @!attribute post_thumbnail_url
      #   Preview image of the existing post this ad promotes. Null for ads that use
      #   uploaded creatives, or until the post's media has been fetched from the network.
      #
      #   @return [String, nil]
      required :post_thumbnail_url, String, nil?: true

      # @!attribute primary_texts
      #
      #   @return [Array<String>]
      required :primary_texts, WhopSDK::Internal::Type::ArrayOf[String]

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
      #   @return [Symbol, WhopSDK::Models::Ad::ResultEvent, nil]
      required :result_event, enum: -> { WhopSDK::Ad::ResultEvent }, nil?: true

      # @!attribute result_event_name
      #   The merchant-defined event name when result_event is custom; null for the
      #   standard events.
      #
      #   @return [String, nil]
      required :result_event_name, String, nil?: true

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

      # @!attribute social_accounts
      #
      #   @return [Array<Object>]
      required :social_accounts, WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]

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
      #   The delivery status of the ad.
      #
      #   @return [Symbol, WhopSDK::Models::Ad::Status]
      required :status, enum: -> { WhopSDK::Ad::Status }

      # @!attribute submitted_applications
      #   Whop pixel-attributed submit-application events, last-click.
      #
      #   @return [Float]
      required :submitted_applications, Float

      # @!attribute title
      #   The display title of the ad. Falls back to the creative set caption when unset.
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
      #   When the ad was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute url
      #   The URL the ad links to.
      #
      #   @return [String, nil]
      required :url, String, nil?: true

      # @!attribute url_parameters
      #   Query parameters appended to the URL, as a string-to-string map.
      #
      #   @return [Object]
      required :url_parameters, WhopSDK::Internal::Type::Unknown

      # @!attribute viewed_contents
      #   Whop pixel-attributed view-content events, last-click.
      #
      #   @return [Float]
      required :viewed_contents, Float

      # @!method initialize(id:, ad_campaign:, ad_group:, added_to_carts:, call_to_action:, click_through_rate:, clicks:, completed_registrations:, contacts:, cost_per_added_to_cart:, cost_per_click:, cost_per_completed_registration:, cost_per_contact:, cost_per_lead:, cost_per_mille:, cost_per_purchase:, cost_per_result:, cost_per_schedule:, cost_per_submitted_application:, cost_per_viewed_content:, created_at:, creatives:, custom_conversions:, delivery_status:, descriptions:, frequency:, headlines:, impressions:, issues:, lead_form:, lead_form_id:, leads:, messaging_config:, multi_advertiser_ads:, post_id:, post_source:, post_thumbnail_url:, primary_texts:, purchase_value:, purchases:, reach:, result_event:, result_event_name:, return_on_ad_spend:, schedules:, social_accounts:, spend:, spend_currency:, status:, submitted_applications:, title:, unique_click_through_rate:, unique_clicks:, updated_at:, url:, url_parameters:, viewed_contents:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Ad} for
      #   more details.
      #
      #   @param id [String] Unique identifier for the ad.
      #
      #   @param ad_campaign [WhopSDK::Models::Ad::AdCampaign] The ad campaign this ad belongs to, an object with an id.
      #
      #   @param ad_group [WhopSDK::Models::Ad::AdGroup] The ad group this ad belongs to, an object with an id.
      #
      #   @param added_to_carts [Float] Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @param call_to_action [Symbol, WhopSDK::Models::Ad::CallToAction, nil] The call-to-action button shown on the ad.
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
      #   @param created_at [String] When the ad was created, as an ISO 8601 timestamp.
      #
      #   @param creatives [Array<WhopSDK::Models::Ad::Creative>]
      #
      #   @param custom_conversions [Float] Whop pixel-attributed custom (merchant-defined) conversion events, last-click, a
      #
      #   @param delivery_status [Symbol, WhopSDK::Models::Ad::DeliveryStatus] The current delivery state, mirroring the Delivery column in the ads dashboard.
      #
      #   @param descriptions [Array<String>]
      #
      #   @param frequency [Float, nil] Platform-reported impressions divided by reach.
      #
      #   @param headlines [Array<String>]
      #
      #   @param impressions [Float] The number of impressions.
      #
      #   @param issues [Array<WhopSDK::Models::Ad::Issue>]
      #
      #   @param lead_form [Object, nil] The instant lead form on the ad (Meta lead ads), or null when the ad group's con
      #
      #   @param lead_form_id [String, nil] The Meta lead form the ad uses. Set when the ad references an existing form via
      #
      #   @param leads [Float] Whop pixel-attributed leads, last-click.
      #
      #   @param messaging_config [Object, nil] The click-to-message welcome copy, an object with message and keyword, or null w
      #
      #   @param multi_advertiser_ads [Boolean] Whether the ad can appear alongside other advertisers' ads in the same unit. Def
      #
      #   @param post_id [String, nil] The existing post this ad promotes (a Facebook post or Instagram media), or null
      #
      #   @param post_source [Symbol, WhopSDK::Models::Ad::PostSource, nil] Which network post_id refers to — facebook (a page post) or instagram (a media i
      #
      #   @param post_thumbnail_url [String, nil] Preview image of the existing post this ad promotes. Null for ads that use uploa
      #
      #   @param primary_texts [Array<String>]
      #
      #   @param purchase_value [Float] USD value of pixel-attributed purchases.
      #
      #   @param purchases [Float] Whop pixel-attributed purchases, last-click.
      #
      #   @param reach [Float] The number of unique people who saw this.
      #
      #   @param result_event [Symbol, WhopSDK::Models::Ad::ResultEvent, nil] The Whop pixel conversion event whose attributed count represents results — the
      #
      #   @param result_event_name [String, nil] The merchant-defined event name when result_event is custom; null for the standa
      #
      #   @param return_on_ad_spend [Float] Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
      #
      #   @param schedules [Float] Whop pixel-attributed schedule events, last-click.
      #
      #   @param social_accounts [Array<Object>]
      #
      #   @param spend [Float] The amount charged, in spend_currency.
      #
      #   @param spend_currency [String, nil] The ISO 4217 currency code of all monetary metrics.
      #
      #   @param status [Symbol, WhopSDK::Models::Ad::Status] The delivery status of the ad.
      #
      #   @param submitted_applications [Float] Whop pixel-attributed submit-application events, last-click.
      #
      #   @param title [String, nil] The display title of the ad. Falls back to the creative set caption when unset.
      #
      #   @param unique_click_through_rate [Float, nil] Unique clicks divided by impressions, between 0 and 1.
      #
      #   @param unique_clicks [Float] The number of unique clicks.
      #
      #   @param updated_at [String] When the ad was last updated, as an ISO 8601 timestamp.
      #
      #   @param url [String, nil] The URL the ad links to.
      #
      #   @param url_parameters [Object] Query parameters appended to the URL, as a string-to-string map.
      #
      #   @param viewed_contents [Float] Whop pixel-attributed view-content events, last-click.

      # @see WhopSDK::Models::Ad#ad_campaign
      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The referenced entity's id.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ad campaign this ad belongs to, an object with an id.
        #
        #   @param id [String] The referenced entity's id.
      end

      # @see WhopSDK::Models::Ad#ad_group
      class AdGroup < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The referenced entity's id.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ad group this ad belongs to, an object with an id.
        #
        #   @param id [String] The referenced entity's id.
      end

      # The call-to-action button shown on the ad.
      #
      # @see WhopSDK::Models::Ad#call_to_action
      module CallToAction
        extend WhopSDK::Internal::Type::Enum

        LEARN_MORE = :learn_more
        SHOP_NOW = :shop_now
        SIGN_UP = :sign_up
        SUBSCRIBE = :subscribe
        GET_STARTED = :get_started
        BOOK_NOW = :book_now
        APPLY_NOW = :apply_now
        CONTACT_US = :contact_us
        DOWNLOAD = :download
        ORDER_NOW = :order_now
        BUY_NOW = :buy_now
        GET_QUOTE = :get_quote
        MESSAGE_PAGE = :message_page
        WHATSAPP_MESSAGE = :whatsapp_message
        INSTAGRAM_MESSAGE = :instagram_message
        CALL_NOW = :call_now
        GET_DIRECTIONS = :get_directions
        SEND_UPDATES = :send_updates
        GET_OFFER = :get_offer
        WATCH_MORE = :watch_more
        LISTEN_NOW = :listen_now
        PLAY_GAME = :play_game
        OPEN_LINK = :open_link
        NO_BUTTON = :no_button
        GET_OFFER_VIEW = :get_offer_view
        GET_EVENT_TICKETS = :get_event_tickets
        SEE_MENU = :see_menu
        REQUEST_TIME = :request_time
        EVENT_RSVP = :event_rsvp
        SEE_DETAILS = :see_details
        VIEW_INSTAGRAM_PROFILE = :view_instagram_profile

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Creative < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The creative attachment's file id.
        #
        #   @return [String]
        required :id, String

        # @!attribute crop
        #   The saved crop window for this creative, in source image pixels. Null for the
        #   original asset or a format that has not been cropped.
        #
        #   @return [WhopSDK::Models::Ad::Creative::Crop, nil]
        required :crop, -> { WhopSDK::Ad::Creative::Crop }, nil?: true

        # @!attribute format_
        #   The placement variant this asset covers, or null for the original asset.
        #
        #   @return [Symbol, WhopSDK::Models::Ad::Creative::Format, nil]
        required :format_, enum: -> { WhopSDK::Ad::Creative::Format }, api_name: :format, nil?: true

        # @!attribute media_type
        #   The kind of asset, image or video.
        #
        #   @return [String, nil]
        required :media_type, String, nil?: true

        # @!attribute url
        #   CDN url of the asset.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, crop:, format_:, media_type:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Ad::Creative} for more details.
        #
        #   The creative assets used by this ad. The original asset has a null format;
        #   square, vertical, and horizontal entries are placement-specific variants.
        #
        #   @param id [String] The creative attachment's file id.
        #
        #   @param crop [WhopSDK::Models::Ad::Creative::Crop, nil] The saved crop window for this creative, in source image pixels. Null for the or
        #
        #   @param format_ [Symbol, WhopSDK::Models::Ad::Creative::Format, nil] The placement variant this asset covers, or null for the original asset.
        #
        #   @param media_type [String, nil] The kind of asset, image or video.
        #
        #   @param url [String, nil] CDN url of the asset.

        # @see WhopSDK::Models::Ad::Creative#crop
        class Crop < WhopSDK::Internal::Type::BaseModel
          # @!attribute height
          #   Height of the crop window in source pixels.
          #
          #   @return [Float]
          required :height, Float

          # @!attribute width
          #   Width of the crop window in source pixels.
          #
          #   @return [Float]
          required :width, Float

          # @!attribute x
          #   Left edge of the crop window in source pixels.
          #
          #   @return [Float]
          required :x, Float

          # @!attribute y_
          #   Top edge of the crop window in source pixels.
          #
          #   @return [Float]
          required :y_, Float, api_name: :y

          # @!method initialize(height:, width:, x:, y_:)
          #   The saved crop window for this creative, in source image pixels. Null for the
          #   original asset or a format that has not been cropped.
          #
          #   @param height [Float] Height of the crop window in source pixels.
          #
          #   @param width [Float] Width of the crop window in source pixels.
          #
          #   @param x [Float] Left edge of the crop window in source pixels.
          #
          #   @param y_ [Float] Top edge of the crop window in source pixels.
        end

        # The placement variant this asset covers, or null for the original asset.
        #
        # @see WhopSDK::Models::Ad::Creative#format_
        module Format
          extend WhopSDK::Internal::Type::Enum

          SQUARE = :square
          VERTICAL = :vertical
          HORIZONTAL = :horizontal

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The current delivery state, mirroring the Delivery column in the ads dashboard.
      # When several states apply at once, the highest-precedence one is returned.
      #
      # @see WhopSDK::Models::Ad#delivery_status
      module DeliveryStatus
        extend WhopSDK::Internal::Type::Enum

        REJECTED = :rejected
        IN_REVIEW = :in_review
        DRAFT = :draft
        CAMPAIGN_PAUSED = :campaign_paused
        AD_GROUP_PAUSED = :ad_group_paused
        PAUSED = :paused
        PROCESSING = :processing
        ISSUES = :issues
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
        #   @return [Symbol, WhopSDK::Models::Ad::Issue::ResourceType]
        required :resource_type, enum: -> { WhopSDK::Ad::Issue::ResourceType }

        # @!method initialize(id:, message:, resource_id:, resource_type:)
        #   Open issues affecting this ad. Empty when there are none.
        #
        #   @param id [String] Unique identifier for the issue.
        #
        #   @param message [String] A description of what the issue is and how it can be resolved.
        #
        #   @param resource_id [String, nil] The ID of the campaign, ad group, or ad the issue is attached to.
        #
        #   @param resource_type [Symbol, WhopSDK::Models::Ad::Issue::ResourceType] The type of resource the issue is attached to.

        # The type of resource the issue is attached to.
        #
        # @see WhopSDK::Models::Ad::Issue#resource_type
        module ResourceType
          extend WhopSDK::Internal::Type::Enum

          AD_CAMPAIGN = :ad_campaign
          AD_GROUP = :ad_group
          AD = :ad

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Which network post_id refers to — facebook (a page post) or instagram (a media
      # id) — or null when the ad uses uploaded creatives.
      #
      # @see WhopSDK::Models::Ad#post_source
      module PostSource
        extend WhopSDK::Internal::Type::Enum

        FACEBOOK = :facebook
        INSTAGRAM = :instagram

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The Whop pixel conversion event whose attributed count represents results — the
      # optimization goal, or the highest-volume attributed event for campaigns that
      # budget per ad group. Null when the goal isn't a Whop-attributed event.
      #
      # @see WhopSDK::Models::Ad#result_event
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

      # The delivery status of the ad.
      #
      # @see WhopSDK::Models::Ad#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        IN_REVIEW = :in_review
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

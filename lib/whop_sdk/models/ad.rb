# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#retrieve
    class Ad < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the ad, prefixed `ad_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad belongs to.
      #
      #   @return [WhopSDK::Models::Ad::AdCampaign]
      required :ad_campaign, -> { WhopSDK::Ad::AdCampaign }

      # @!attribute ad_group
      #   The ad group this ad belongs to.
      #
      #   @return [WhopSDK::Models::Ad::AdGroup]
      required :ad_group, -> { WhopSDK::Ad::AdGroup }

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
      #   Whether the ad is delivering right now, and if not, why. When several states
      #   apply at once, the highest-precedence one is returned.
      #
      #   @return [Symbol, WhopSDK::Models::Ad::DeliveryStatus]
      required :delivery_status, enum: -> { WhopSDK::Ad::DeliveryStatus }

      # @!attribute descriptions
      #
      #   @return [Array<String>]
      required :descriptions, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute existing_post_id
      #   The post you pointed this ad at, when it promotes one you already published — a
      #   Facebook post, Instagram media, or TikTok video ID. `null` when the ad uses
      #   uploaded creatives.
      #
      #   @return [String, nil]
      required :existing_post_id, String, nil?: true

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

      # @!attribute post_id
      #   The post the ad network serves for this ad, as `pageID_postID` on Meta — the
      #   post Meta created for an uploaded creative, or the post being promoted. Use it
      #   to open the live post, or to promote the same post from another ad. `null` until
      #   the network has created the post.
      #
      #   @return [String, nil]
      required :post_id, String, nil?: true

      # @!attribute post_source
      #   Identifies the network that owns `existing_post_id`; `null` when the ad uses
      #   uploaded creatives.
      #
      #   @return [Symbol, WhopSDK::Models::Ad::PostSource, nil]
      required :post_source, enum: -> { WhopSDK::Ad::PostSource }, nil?: true

      # @!attribute post_thumbnail_url
      #   Preview image of the post named by `existing_post_id`. `null` for ads that use
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

      # @!attribute social_accounts
      #
      #   @return [Array<WhopSDK::Models::Ad::SocialAccount>]
      required :social_accounts, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::SocialAccount] }

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
      #   Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
      #   `rejected` come from ad review.
      #
      #   @return [Symbol, WhopSDK::Models::Ad::Status]
      required :status, enum: -> { WhopSDK::Ad::Status }

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
      #   Display title of the ad.
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
      #   When the ad was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute url
      #   The URL the ad links to, without its query string. Parameters belong in
      #   `url_parameters`; any you send on `url` are moved there.
      #
      #   @return [String, nil]
      required :url, String, nil?: true

      # @!attribute url_parameters
      #   Every query parameter appended to the URL, keyed by parameter name — including
      #   any you sent on `url` itself. Whop adds its own click-attribution parameters on
      #   top; those are reserved and rejected if you set them. Which keys are reserved
      #   depends on the ad's network — Meta: utm_meta_ad_id, utm_meta_adset_id,
      #   utm_meta_campaign_id, utm_source, utm_placement, utm_medium, utm_content,
      #   utm_adset, utm_whop, wacid, wasid, waid, tw_source, tw_adid; TikTok: waid,
      #   wasid, wacid, ad_id, adset_id, campaign_id, utm_source, utm_medium,
      #   utm_placement, utm_whop, tw_source, tw_adid.
      #
      #   @return [Object]
      required :url_parameters, WhopSDK::Internal::Type::Unknown

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

      # @!attribute lead_form
      #   The instant lead form shown when someone taps this ad. `null` when the ad
      #   group's conversion_location is not an instant-form destination.
      #
      #   @return [WhopSDK::Models::Ad::LeadForm, nil]
      optional :lead_form, -> { WhopSDK::Ad::LeadForm }, nil?: true

      # @!attribute lead_form_id
      #   The ad platform's ID for the instant form the ad uses. Set when the ad
      #   references an existing form via `lead_form_id`, or once a form built from
      #   `lead_form` has been created on the platform.
      #
      #   @return [String, nil]
      optional :lead_form_id, String, nil?: true

      # @!attribute messaging_config
      #   Welcome message for click-to-message ads, shown when the conversation opens.
      #   `null` when the ad has none.
      #
      #   @return [WhopSDK::Models::Ad::MessagingConfig, nil]
      optional :messaging_config, -> { WhopSDK::Ad::MessagingConfig }, nil?: true

      # @!attribute multi_advertiser_ads
      #   Whether the ad can appear alongside other advertisers' ads in the same unit.
      #   Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :multi_advertiser_ads, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, ad_campaign:, ad_group:, added_to_cart_value:, added_to_carts:, call_to_action:, click_through_rate:, clicks:, completed_registration_value:, completed_registrations:, contact_value:, contacts:, cost_per_added_to_cart:, cost_per_click:, cost_per_completed_registration:, cost_per_contact:, cost_per_lead:, cost_per_mille:, cost_per_purchase:, cost_per_result:, cost_per_schedule:, cost_per_submitted_application:, cost_per_unique_click:, cost_per_viewed_content:, created_at:, creatives:, custom_conversions:, custom_event_counts:, custom_event_values:, delivery_status:, descriptions:, existing_post_id:, frequency:, headlines:, impressions:, issues:, lead_value:, leads:, link_clicks:, post_id:, post_source:, post_thumbnail_url:, primary_texts:, purchase_value:, purchases:, reach:, result_event:, result_event_name:, results:, return_on_ad_spend:, schedule_value:, schedules:, social_accounts:, spend:, spend_currency:, status:, submitted_application_value:, submitted_applications:, title:, unique_click_through_rate:, unique_clicks:, updated_at:, url:, url_parameters:, viewed_content_value:, viewed_contents:, lead_form: nil, lead_form_id: nil, messaging_config: nil, multi_advertiser_ads: nil)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Ad} for
      #   more details.
      #
      #   @param id [String] Unique identifier for the ad, prefixed `ad_`.
      #
      #   @param ad_campaign [WhopSDK::Models::Ad::AdCampaign] The ad campaign this ad belongs to.
      #
      #   @param ad_group [WhopSDK::Models::Ad::AdGroup] The ad group this ad belongs to.
      #
      #   @param added_to_cart_value [Float] USD value attributed to add-to-cart events. Sums the value sent with each event,
      #
      #   @param added_to_carts [Float] Whop pixel-attributed add-to-cart events, last-click.
      #
      #   @param call_to_action [Symbol, WhopSDK::Models::Ad::CallToAction, nil] The call-to-action button shown on the ad.
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
      #   @param created_at [String] When the ad was created, as an ISO 8601 timestamp.
      #
      #   @param creatives [Array<WhopSDK::Models::Ad::Creative>]
      #
      #   @param custom_conversions [Float] Whop pixel-attributed custom (merchant-defined) conversion events, last-click, a
      #
      #   @param custom_event_counts [Object] Whop pixel-attributed custom conversions, keyed by your event name with its last
      #
      #   @param custom_event_values [Object] Conversion value attributed to each custom event, keyed by event name like custo
      #
      #   @param delivery_status [Symbol, WhopSDK::Models::Ad::DeliveryStatus] Whether the ad is delivering right now, and if not, why. When several states app
      #
      #   @param descriptions [Array<String>]
      #
      #   @param existing_post_id [String, nil] The post you pointed this ad at, when it promotes one you already published — a
      #
      #   @param frequency [Float, nil] Platform-reported impressions divided by reach.
      #
      #   @param headlines [Array<String>]
      #
      #   @param impressions [Float] The number of impressions.
      #
      #   @param issues [Array<WhopSDK::Models::Ad::Issue>]
      #
      #   @param lead_value [Float] USD value attributed to lead events. Sums the value sent with each event, normal
      #
      #   @param leads [Float] Whop pixel-attributed leads, last-click.
      #
      #   @param link_clicks [Float] Clicks on links in the ad that lead to your destination, as reported by the ad p
      #
      #   @param post_id [String, nil] The post the ad network serves for this ad, as `pageID_postID` on Meta — the pos
      #
      #   @param post_source [Symbol, WhopSDK::Models::Ad::PostSource, nil] Identifies the network that owns `existing_post_id`; `null` when the ad uses upl
      #
      #   @param post_thumbnail_url [String, nil] Preview image of the post named by `existing_post_id`. `null` for ads that use u
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
      #   @param results [Float, nil] The Whop pixel-attributed count behind result_event. When a campaign's ad groups
      #
      #   @param return_on_ad_spend [Float] Purchase value divided by spend, both in USD (a currency-neutral ratio); 0 when
      #
      #   @param schedule_value [Float] USD value attributed to schedule events. Sums the value sent with each event, no
      #
      #   @param schedules [Float] Whop pixel-attributed schedule events, last-click.
      #
      #   @param social_accounts [Array<WhopSDK::Models::Ad::SocialAccount>]
      #
      #   @param spend [Float] The amount charged, in spend_currency.
      #
      #   @param spend_currency [String, nil] The ISO 4217 currency code of all monetary metrics.
      #
      #   @param status [Symbol, WhopSDK::Models::Ad::Status] Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
      #
      #   @param submitted_application_value [Float] USD value attributed to submit-application events. Sums the value sent with each
      #
      #   @param submitted_applications [Float] Whop pixel-attributed submit-application events, last-click.
      #
      #   @param title [String, nil] Display title of the ad.
      #
      #   @param unique_click_through_rate [Float, nil] Unique clicks divided by impressions, between 0 and 1.
      #
      #   @param unique_clicks [Float] People who clicked, reported by the Whop pixel, counted once per person.
      #
      #   @param updated_at [String] When the ad was last updated, as an ISO 8601 timestamp.
      #
      #   @param url [String, nil] The URL the ad links to, without its query string. Parameters belong in `url_par
      #
      #   @param url_parameters [Object] Every query parameter appended to the URL, keyed by parameter name — including a
      #
      #   @param viewed_content_value [Float] USD value attributed to view-content events. Sums the value sent with each event
      #
      #   @param viewed_contents [Float] Whop pixel-attributed view-content events, last-click.
      #
      #   @param lead_form [WhopSDK::Models::Ad::LeadForm, nil] The instant lead form shown when someone taps this ad. `null` when the ad group'
      #
      #   @param lead_form_id [String, nil] The ad platform's ID for the instant form the ad uses. Set when the ad reference
      #
      #   @param messaging_config [WhopSDK::Models::Ad::MessagingConfig, nil] Welcome message for click-to-message ads, shown when the conversation opens. `nu
      #
      #   @param multi_advertiser_ads [Boolean] Whether the ad can appear alongside other advertisers' ads in the same unit. Def

      # @see WhopSDK::Models::Ad#ad_campaign
      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The referenced entity's id.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ad campaign this ad belongs to.
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
        #   The ad group this ad belongs to.
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
        #   square, vertical, and horizontal entries are placement-specific variants. A
        #   carousel ad returns one format-null entry per attachment, in order.
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

      # Whether the ad is delivering right now, and if not, why. When several states
      # apply at once, the highest-precedence one is returned.
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
        SCHEDULED = :scheduled
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

      # Identifies the network that owns `existing_post_id`; `null` when the ad uses
      # uploaded creatives.
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
        MESSAGING_CONVERSATION = :messaging_conversation

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class SocialAccount < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The referenced entity's id.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The social accounts the ad runs under — its Facebook page and Instagram profile
        #   — each referenced by ID, prefixed `sacc_`.
        #
        #   @param id [String] The referenced entity's id.
      end

      # Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
      # `rejected` come from ad review.
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

      # @see WhopSDK::Models::Ad#lead_form
      class LeadForm < WhopSDK::Internal::Type::BaseModel
        # @!attribute completion
        #   Screen shown after the form is submitted. `null` when the form uses the default.
        #
        #   @return [WhopSDK::Models::Ad::LeadForm::Completion, nil]
        required :completion, -> { WhopSDK::Ad::LeadForm::Completion }, nil?: true

        # @!attribute disclaimer
        #   Custom consent disclaimer shown before submission. `null` when the form has
        #   none.
        #
        #   @return [WhopSDK::Models::Ad::LeadForm::Disclaimer, nil]
        required :disclaimer, -> { WhopSDK::Ad::LeadForm::Disclaimer }, nil?: true

        # @!attribute form_type
        #   `more_volume` is quickest to submit; `higher_intent` adds a confirmation step
        #   before submission.
        #
        #   @return [Symbol, WhopSDK::Models::Ad::LeadForm::FormType]
        required :form_type, enum: -> { WhopSDK::Ad::LeadForm::FormType }

        # @!attribute intro
        #   Intro screen shown before the questions. `null` when the form has none.
        #
        #   @return [WhopSDK::Models::Ad::LeadForm::Intro, nil]
        required :intro, -> { WhopSDK::Ad::LeadForm::Intro }, nil?: true

        # @!attribute name
        #   Internal name of the form.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute phone_verification
        #   Whether the phone number must be verified by SMS before submitting.
        #
        #   @return [Boolean]
        required :phone_verification, WhopSDK::Internal::Type::Boolean

        # @!attribute privacy_policy
        #   Your privacy policy, linked from the form. `null` when unset.
        #
        #   @return [WhopSDK::Models::Ad::LeadForm::PrivacyPolicy, nil]
        required :privacy_policy, -> { WhopSDK::Ad::LeadForm::PrivacyPolicy }, nil?: true

        # @!attribute questions
        #
        #   @return [Array<WhopSDK::Models::Ad::LeadForm::Question>]
        required :questions, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::LeadForm::Question] }

        # @!method initialize(completion:, disclaimer:, form_type:, intro:, name:, phone_verification:, privacy_policy:, questions:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Ad::LeadForm} for more details.
        #
        #   The instant lead form shown when someone taps this ad. `null` when the ad
        #   group's conversion_location is not an instant-form destination.
        #
        #   @param completion [WhopSDK::Models::Ad::LeadForm::Completion, nil] Screen shown after the form is submitted. `null` when the form uses the default.
        #
        #   @param disclaimer [WhopSDK::Models::Ad::LeadForm::Disclaimer, nil] Custom consent disclaimer shown before submission. `null` when the form has none
        #
        #   @param form_type [Symbol, WhopSDK::Models::Ad::LeadForm::FormType] `more_volume` is quickest to submit; `higher_intent` adds a confirmation step be
        #
        #   @param intro [WhopSDK::Models::Ad::LeadForm::Intro, nil] Intro screen shown before the questions. `null` when the form has none.
        #
        #   @param name [String, nil] Internal name of the form.
        #
        #   @param phone_verification [Boolean] Whether the phone number must be verified by SMS before submitting.
        #
        #   @param privacy_policy [WhopSDK::Models::Ad::LeadForm::PrivacyPolicy, nil] Your privacy policy, linked from the form. `null` when unset.
        #
        #   @param questions [Array<WhopSDK::Models::Ad::LeadForm::Question>]

        # @see WhopSDK::Models::Ad::LeadForm#completion
        class Completion < WhopSDK::Internal::Type::BaseModel
          # @!attribute button_text
          #   Text of the follow-up button.
          #
          #   @return [String, nil]
          required :button_text, String, nil?: true

          # @!attribute description
          #   Body text under the headline.
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!attribute headline
          #   Headline of the completion screen.
          #
          #   @return [String, nil]
          required :headline, String, nil?: true

          # @!attribute url
          #   Website the follow-up button opens. `null` when the screen has no button.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(button_text:, description:, headline:, url:)
          #   Screen shown after the form is submitted. `null` when the form uses the default.
          #
          #   @param button_text [String, nil] Text of the follow-up button.
          #
          #   @param description [String, nil] Body text under the headline.
          #
          #   @param headline [String, nil] Headline of the completion screen.
          #
          #   @param url [String, nil] Website the follow-up button opens. `null` when the screen has no button.
        end

        # @see WhopSDK::Models::Ad::LeadForm#disclaimer
        class Disclaimer < WhopSDK::Internal::Type::BaseModel
          # @!attribute body
          #   Disclaimer text.
          #
          #   @return [String, nil]
          required :body, String, nil?: true

          # @!attribute checkboxes
          #
          #   @return [Array<WhopSDK::Models::Ad::LeadForm::Disclaimer::Checkbox>]
          required :checkboxes, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::LeadForm::Disclaimer::Checkbox] }

          # @!attribute title
          #   Disclaimer title.
          #
          #   @return [String, nil]
          required :title, String, nil?: true

          # @!method initialize(body:, checkboxes:, title:)
          #   Custom consent disclaimer shown before submission. `null` when the form has
          #   none.
          #
          #   @param body [String, nil] Disclaimer text.
          #
          #   @param checkboxes [Array<WhopSDK::Models::Ad::LeadForm::Disclaimer::Checkbox>]
          #
          #   @param title [String, nil] Disclaimer title.

          class Checkbox < WhopSDK::Internal::Type::BaseModel
            # @!attribute checked_by_default
            #   Whether the checkbox starts ticked.
            #
            #   @return [Boolean, nil]
            required :checked_by_default, WhopSDK::Internal::Type::Boolean, nil?: true

            # @!attribute key
            #   Stable identifier consent responses are stored under.
            #
            #   @return [String, nil]
            required :key, String, nil?: true

            # @!attribute required
            #   Whether the checkbox must be ticked to submit the form.
            #
            #   @return [Boolean, nil]
            required :required, WhopSDK::Internal::Type::Boolean, nil?: true

            # @!attribute text
            #   Consent text next to the checkbox.
            #
            #   @return [String]
            required :text, String

            # @!method initialize(checked_by_default:, key:, required:, text:)
            #   Consent checkboxes the person can tick. Empty when the disclaimer is text-only.
            #
            #   @param checked_by_default [Boolean, nil] Whether the checkbox starts ticked.
            #
            #   @param key [String, nil] Stable identifier consent responses are stored under.
            #
            #   @param required [Boolean, nil] Whether the checkbox must be ticked to submit the form.
            #
            #   @param text [String] Consent text next to the checkbox.
          end
        end

        # `more_volume` is quickest to submit; `higher_intent` adds a confirmation step
        # before submission.
        #
        # @see WhopSDK::Models::Ad::LeadForm#form_type
        module FormType
          extend WhopSDK::Internal::Type::Enum

          MORE_VOLUME = :more_volume
          HIGHER_INTENT = :higher_intent

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Ad::LeadForm#intro
        class Intro < WhopSDK::Internal::Type::BaseModel
          # @!attribute description
          #   Body text under the headline.
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!attribute headline
          #   Headline of the intro screen.
          #
          #   @return [String, nil]
          required :headline, String, nil?: true

          # @!method initialize(description:, headline:)
          #   Intro screen shown before the questions. `null` when the form has none.
          #
          #   @param description [String, nil] Body text under the headline.
          #
          #   @param headline [String, nil] Headline of the intro screen.
        end

        # @see WhopSDK::Models::Ad::LeadForm#privacy_policy
        class PrivacyPolicy < WhopSDK::Internal::Type::BaseModel
          # @!attribute link_text
          #   Link text shown for the policy. `null` uses the platform default.
          #
          #   @return [String, nil]
          required :link_text, String, nil?: true

          # @!attribute url
          #   URL of your privacy policy.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(link_text:, url:)
          #   Your privacy policy, linked from the form. `null` when unset.
          #
          #   @param link_text [String, nil] Link text shown for the policy. `null` uses the platform default.
          #
          #   @param url [String] URL of your privacy policy.
        end

        class Question < WhopSDK::Internal::Type::BaseModel
          # @!attribute type
          #   Question type: a standard prefill type such as `email`, `phone`, or `full_name`,
          #   or `custom` for your own question.
          #
          #   @return [String]
          required :type, String

          # @!attribute format_
          #   Answer format for `custom` questions: `short_answer`, `multiple_choice`, or
          #   `appointment`. Absent otherwise.
          #
          #   @return [String, nil]
          optional :format_, String, api_name: :format

          # @!attribute label
          #   Question text for `custom` questions. Absent for standard prefill questions.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute options
          #
          #   @return [Array<WhopSDK::Models::Ad::LeadForm::Question::Option>, nil]
          optional :options, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::LeadForm::Question::Option] }

          # @!method initialize(type:, format_: nil, label: nil, options: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Ad::LeadForm::Question} for more details.
          #
          #   Questions on the form, in order.
          #
          #   @param type [String] Question type: a standard prefill type such as `email`, `phone`, or `full_name`,
          #
          #   @param format_ [String] Answer format for `custom` questions: `short_answer`, `multiple_choice`, or `app
          #
          #   @param label [String] Question text for `custom` questions. Absent for standard prefill questions.
          #
          #   @param options [Array<WhopSDK::Models::Ad::LeadForm::Question::Option>]

          class Option < WhopSDK::Internal::Type::BaseModel
            # @!attribute value
            #   Choice text shown to the person.
            #
            #   @return [String]
            required :value, String

            # @!attribute key
            #   Stable identifier the choice's answers are stored under. Absent for simple
            #   choices.
            #
            #   @return [String, nil]
            optional :key, String, nil?: true

            # @!attribute logic
            #   Where the form goes when this choice is selected. Absent when the form just
            #   continues to the next question.
            #
            #   @return [WhopSDK::Models::Ad::LeadForm::Question::Option::Logic, nil]
            optional :logic, -> { WhopSDK::Ad::LeadForm::Question::Option::Logic }

            # @!method initialize(value:, key: nil, logic: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Ad::LeadForm::Question::Option} for more details.
            #
            #   Choices for `multiple_choice` questions. Absent for other formats.
            #
            #   @param value [String] Choice text shown to the person.
            #
            #   @param key [String, nil] Stable identifier the choice's answers are stored under. Absent for simple choic
            #
            #   @param logic [WhopSDK::Models::Ad::LeadForm::Question::Option::Logic] Where the form goes when this choice is selected. Absent when the form just cont

            # @see WhopSDK::Models::Ad::LeadForm::Question::Option#logic
            class Logic < WhopSDK::Internal::Type::BaseModel
              # @!attribute action
              #   What happens when the choice is selected.
              #
              #   @return [Symbol, WhopSDK::Models::Ad::LeadForm::Question::Option::Logic::Action]
              required :action, enum: -> { WhopSDK::Ad::LeadForm::Question::Option::Logic::Action }

              # @!attribute target_end_page_index
              #   Zero-based index of the ending screen to jump to.
              #
              #   @return [Float, nil]
              optional :target_end_page_index, Float

              # @!attribute target_question_index
              #   Zero-based index of the question to jump to, for `go_to_question`.
              #
              #   @return [Float, nil]
              optional :target_question_index, Float

              # @!method initialize(action:, target_end_page_index: nil, target_question_index: nil)
              #   Where the form goes when this choice is selected. Absent when the form just
              #   continues to the next question.
              #
              #   @param action [Symbol, WhopSDK::Models::Ad::LeadForm::Question::Option::Logic::Action] What happens when the choice is selected.
              #
              #   @param target_end_page_index [Float] Zero-based index of the ending screen to jump to.
              #
              #   @param target_question_index [Float] Zero-based index of the question to jump to, for `go_to_question`.

              # What happens when the choice is selected.
              #
              # @see WhopSDK::Models::Ad::LeadForm::Question::Option::Logic#action
              module Action
                extend WhopSDK::Internal::Type::Enum

                GO_TO_QUESTION = :go_to_question
                SUBMIT_FORM = :submit_form
                CLOSE_FORM = :close_form

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end

      # @see WhopSDK::Models::Ad#messaging_config
      class MessagingConfig < WhopSDK::Internal::Type::BaseModel
        # @!attribute keyword
        #   Suggested reply the person can tap to start the conversation.
        #
        #   @return [String, nil]
        required :keyword, String, nil?: true

        # @!attribute message
        #   Greeting shown when the conversation opens.
        #
        #   @return [String, nil]
        required :message, String, nil?: true

        # @!method initialize(keyword:, message:)
        #   Welcome message for click-to-message ads, shown when the conversation opens.
        #   `null` when the ad has none.
        #
        #   @param keyword [String, nil] Suggested reply the person can tap to start the conversation.
        #
        #   @param message [String, nil] Greeting shown when the conversation opens.
      end
    end
  end
end

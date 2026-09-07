# frozen_string_literal: true

module WhopSDK
  module Models
    class AdUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #
      #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data]
      required :data, -> { WhopSDK::AdUpdatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"ad.updated"]
      required :type, const: :"ad.updated"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"ad.updated")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdUpdatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::AdUpdatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"ad.updated"] The webhook event type

      # @see WhopSDK::Models::AdUpdatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the ad, prefixed `ad_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute ad_campaign
        #   The ad campaign this ad belongs to.
        #
        #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::AdCampaign]
        required :ad_campaign, -> { WhopSDK::AdUpdatedWebhookEvent::Data::AdCampaign }

        # @!attribute ad_group
        #   The ad group this ad belongs to.
        #
        #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::AdGroup]
        required :ad_group, -> { WhopSDK::AdUpdatedWebhookEvent::Data::AdGroup }

        # @!attribute call_to_action
        #   The call-to-action button shown on the ad.
        #
        #   @return [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::CallToAction, nil]
        required :call_to_action, enum: -> { WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction }, nil?: true

        # @!attribute created_at
        #   When the ad was created, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute creatives
        #
        #   @return [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative>]
        required :creatives,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdatedWebhookEvent::Data::Creative] }

        # @!attribute delivery_status
        #   Whether the ad is delivering right now, and if not, why. When several states
        #   apply at once, the highest-precedence one is returned.
        #
        #   @return [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::DeliveryStatus]
        required :delivery_status, enum: -> { WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus }

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

        # @!attribute headlines
        #
        #   @return [Array<String>]
        required :headlines, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute issues
        #
        #   @return [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::Issue>]
        required :issues, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdatedWebhookEvent::Data::Issue] }

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
        #   @return [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::PostSource, nil]
        required :post_source, enum: -> { WhopSDK::AdUpdatedWebhookEvent::Data::PostSource }, nil?: true

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

        # @!attribute social_accounts
        #
        #   @return [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::SocialAccount>]
        required :social_accounts,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdatedWebhookEvent::Data::SocialAccount] }

        # @!attribute status
        #   Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
        #   `rejected` come from ad review.
        #
        #   @return [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::AdUpdatedWebhookEvent::Data::Status }

        # @!attribute title
        #   Display title of the ad.
        #
        #   @return [String, nil]
        required :title, String, nil?: true

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

        # @!attribute lead_form
        #   The instant lead form shown when someone taps this ad. `null` when the ad
        #   group's conversion_location is not an instant-form destination.
        #
        #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm, nil]
        optional :lead_form, -> { WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm }, nil?: true

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
        #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::MessagingConfig, nil]
        optional :messaging_config, -> { WhopSDK::AdUpdatedWebhookEvent::Data::MessagingConfig }, nil?: true

        # @!attribute multi_advertiser_ads
        #   Whether the ad can appear alongside other advertisers' ads in the same unit.
        #   Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :multi_advertiser_ads, WhopSDK::Internal::Type::Boolean

        # @!attribute music
        #   The advertiser-uploaded MP3 a TikTok carousel ad plays. TikTok-only; `null`
        #   elsewhere and for non-carousel ads.
        #
        #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::Music, nil]
        optional :music, -> { WhopSDK::AdUpdatedWebhookEvent::Data::Music }, nil?: true

        # @!method initialize(id:, ad_campaign:, ad_group:, call_to_action:, created_at:, creatives:, delivery_status:, descriptions:, existing_post_id:, headlines:, issues:, post_id:, post_source:, post_thumbnail_url:, primary_texts:, social_accounts:, status:, title:, updated_at:, url:, url_parameters:, lead_form: nil, lead_form_id: nil, messaging_config: nil, multi_advertiser_ads: nil, music: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdUpdatedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Unique identifier for the ad, prefixed `ad_`.
        #
        #   @param ad_campaign [WhopSDK::Models::AdUpdatedWebhookEvent::Data::AdCampaign] The ad campaign this ad belongs to.
        #
        #   @param ad_group [WhopSDK::Models::AdUpdatedWebhookEvent::Data::AdGroup] The ad group this ad belongs to.
        #
        #   @param call_to_action [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::CallToAction, nil] The call-to-action button shown on the ad.
        #
        #   @param created_at [String] When the ad was created, as an ISO 8601 timestamp.
        #
        #   @param creatives [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative>]
        #
        #   @param delivery_status [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::DeliveryStatus] Whether the ad is delivering right now, and if not, why. When several states app
        #
        #   @param descriptions [Array<String>]
        #
        #   @param existing_post_id [String, nil] The post you pointed this ad at, when it promotes one you already published — a
        #
        #   @param headlines [Array<String>]
        #
        #   @param issues [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::Issue>]
        #
        #   @param post_id [String, nil] The post the ad network serves for this ad, as `pageID_postID` on Meta — the pos
        #
        #   @param post_source [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::PostSource, nil] Identifies the network that owns `existing_post_id`; `null` when the ad uses upl
        #
        #   @param post_thumbnail_url [String, nil] Preview image of the post named by `existing_post_id`. `null` for ads that use u
        #
        #   @param primary_texts [Array<String>]
        #
        #   @param social_accounts [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::SocialAccount>]
        #
        #   @param status [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::Status] Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
        #
        #   @param title [String, nil] Display title of the ad.
        #
        #   @param updated_at [String] When the ad was last updated, as an ISO 8601 timestamp.
        #
        #   @param url [String, nil] The URL the ad links to, without its query string. Parameters belong in `url_par
        #
        #   @param url_parameters [Object] Every query parameter appended to the URL, keyed by parameter name — including a
        #
        #   @param lead_form [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm, nil] The instant lead form shown when someone taps this ad. `null` when the ad group'
        #
        #   @param lead_form_id [String, nil] The ad platform's ID for the instant form the ad uses. Set when the ad reference
        #
        #   @param messaging_config [WhopSDK::Models::AdUpdatedWebhookEvent::Data::MessagingConfig, nil] Welcome message for click-to-message ads, shown when the conversation opens. `nu
        #
        #   @param multi_advertiser_ads [Boolean] Whether the ad can appear alongside other advertisers' ads in the same unit. Def
        #
        #   @param music [WhopSDK::Models::AdUpdatedWebhookEvent::Data::Music, nil] The advertiser-uploaded MP3 a TikTok carousel ad plays. TikTok-only; `null` else

        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#ad_campaign
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

        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#ad_group
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
        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#call_to_action
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
          #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative::Crop, nil]
          required :crop, -> { WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Crop }, nil?: true

          # @!attribute format_
          #   The placement variant this asset covers, or null for the original asset.
          #
          #   @return [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative::Format, nil]
          required :format_,
                   enum: -> { WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format },
                   api_name: :format,
                   nil?: true

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
          #   {WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative} for more details.
          #
          #   The creative assets used by this ad. The original asset has a null format;
          #   square, vertical, and horizontal entries are placement-specific variants. A
          #   carousel ad returns one format-null entry per attachment, in order.
          #
          #   @param id [String] The creative attachment's file id.
          #
          #   @param crop [WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative::Crop, nil] The saved crop window for this creative, in source image pixels. Null for the or
          #
          #   @param format_ [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative::Format, nil] The placement variant this asset covers, or null for the original asset.
          #
          #   @param media_type [String, nil] The kind of asset, image or video.
          #
          #   @param url [String, nil] CDN url of the asset.

          # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative#crop
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
          # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::Creative#format_
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
        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#delivery_status
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
          #   @return [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::Issue::ResourceType]
          required :resource_type, enum: -> { WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType }

          # @!method initialize(id:, message:, resource_id:, resource_type:)
          #   Open issues affecting this ad. Empty when there are none.
          #
          #   @param id [String] Unique identifier for the issue.
          #
          #   @param message [String] A description of what the issue is and how it can be resolved.
          #
          #   @param resource_id [String, nil] The ID of the campaign, ad group, or ad the issue is attached to.
          #
          #   @param resource_type [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::Issue::ResourceType] The type of resource the issue is attached to.

          # The type of resource the issue is attached to.
          #
          # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::Issue#resource_type
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
        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#post_source
        module PostSource
          extend WhopSDK::Internal::Type::Enum

          FACEBOOK = :facebook
          INSTAGRAM = :instagram

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
        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          PAUSED = :paused
          IN_REVIEW = :in_review
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#lead_form
        class LeadForm < WhopSDK::Internal::Type::BaseModel
          # @!attribute completion
          #   Screen shown after the form is submitted. `null` when the form uses the default.
          #
          #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Completion, nil]
          required :completion, -> { WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Completion }, nil?: true

          # @!attribute disclaimer
          #   Custom consent disclaimer shown before submission. `null` when the form has
          #   none.
          #
          #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer, nil]
          required :disclaimer, -> { WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer }, nil?: true

          # @!attribute form_type
          #   `more_volume` is quickest to submit; `higher_intent` adds a confirmation step
          #   before submission.
          #
          #   @return [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::FormType]
          required :form_type, enum: -> { WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::FormType }

          # @!attribute intro
          #   Intro screen shown before the questions. `null` when the form has none.
          #
          #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Intro, nil]
          required :intro, -> { WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Intro }, nil?: true

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
          #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::PrivacyPolicy, nil]
          required :privacy_policy,
                   -> {
                     WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::PrivacyPolicy
                   },
                   nil?: true

          # @!attribute questions
          #
          #   @return [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question>]
          required :questions,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question] }

          # @!method initialize(completion:, disclaimer:, form_type:, intro:, name:, phone_verification:, privacy_policy:, questions:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm} for more details.
          #
          #   The instant lead form shown when someone taps this ad. `null` when the ad
          #   group's conversion_location is not an instant-form destination.
          #
          #   @param completion [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Completion, nil] Screen shown after the form is submitted. `null` when the form uses the default.
          #
          #   @param disclaimer [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer, nil] Custom consent disclaimer shown before submission. `null` when the form has none
          #
          #   @param form_type [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::FormType] `more_volume` is quickest to submit; `higher_intent` adds a confirmation step be
          #
          #   @param intro [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Intro, nil] Intro screen shown before the questions. `null` when the form has none.
          #
          #   @param name [String, nil] Internal name of the form.
          #
          #   @param phone_verification [Boolean] Whether the phone number must be verified by SMS before submitting.
          #
          #   @param privacy_policy [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::PrivacyPolicy, nil] Your privacy policy, linked from the form. `null` when unset.
          #
          #   @param questions [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question>]

          # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm#completion
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

          # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm#disclaimer
          class Disclaimer < WhopSDK::Internal::Type::BaseModel
            # @!attribute body
            #   Disclaimer text.
            #
            #   @return [String, nil]
            required :body, String, nil?: true

            # @!attribute checkboxes
            #
            #   @return [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::Checkbox>]
            required :checkboxes,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::Checkbox] }

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
            #   @param checkboxes [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::Checkbox>]
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
          # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm#form_type
          module FormType
            extend WhopSDK::Internal::Type::Enum

            MORE_VOLUME = :more_volume
            HIGHER_INTENT = :higher_intent

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm#intro
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

          # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm#privacy_policy
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
            #   @return [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option>, nil]
            optional :options,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option] }

            # @!method initialize(type:, format_: nil, label: nil, options: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question} for more
            #   details.
            #
            #   Questions on the form, in order.
            #
            #   @param type [String] Question type: a standard prefill type such as `email`, `phone`, or `full_name`,
            #
            #   @param format_ [String] Answer format for `custom` questions: `short_answer`, `multiple_choice`, or `app
            #
            #   @param label [String] Question text for `custom` questions. Absent for standard prefill questions.
            #
            #   @param options [Array<WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option>]

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
              #   @return [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic, nil]
              optional :logic, -> { WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic }

              # @!method initialize(value:, key: nil, logic: nil)
              #   Some parameter documentations has been truncated, see
              #   {WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option} for
              #   more details.
              #
              #   Choices for `multiple_choice` questions. Absent for other formats.
              #
              #   @param value [String] Choice text shown to the person.
              #
              #   @param key [String, nil] Stable identifier the choice's answers are stored under. Absent for simple choic
              #
              #   @param logic [WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic] Where the form goes when this choice is selected. Absent when the form just cont

              # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option#logic
              class Logic < WhopSDK::Internal::Type::BaseModel
                # @!attribute action
                #   What happens when the choice is selected.
                #
                #   @return [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action]
                required :action,
                         enum: -> { WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action }

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
                #   @param action [Symbol, WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action] What happens when the choice is selected.
                #
                #   @param target_end_page_index [Float] Zero-based index of the ending screen to jump to.
                #
                #   @param target_question_index [Float] Zero-based index of the question to jump to, for `go_to_question`.

                # What happens when the choice is selected.
                #
                # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic#action
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

        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#messaging_config
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

        # @see WhopSDK::Models::AdUpdatedWebhookEvent::Data#music
        class Music < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The music attachment's file id.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   The uploaded file's name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute url
          #   CDN url of the MP3.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, name:, url:)
          #   The advertiser-uploaded MP3 a TikTok carousel ad plays. TikTok-only; `null`
          #   elsewhere and for non-carousel ads.
          #
          #   @param id [String] The music attachment's file id.
          #
          #   @param name [String, nil] The uploaded file's name.
          #
          #   @param url [String, nil] CDN url of the MP3.
        end
      end
    end
  end
end

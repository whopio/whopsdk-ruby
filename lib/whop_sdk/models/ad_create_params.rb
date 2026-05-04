# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#create
    class AdCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute ad_group_id
      #   The unique identifier of the ad group to create this ad in.
      #
      #   @return [String]
      required :ad_group_id, String

      # @!attribute creative_set_id
      #   The unique identifier of the creative set to use.
      #
      #   @return [String, nil]
      optional :creative_set_id, String, nil?: true

      # @!attribute existing_instagram_media_id
      #   ID of an existing Instagram media item to use as the ad creative (instead of a
      #   creative set or Facebook post).
      #
      #   @return [String, nil]
      optional :existing_instagram_media_id, String, nil?: true

      # @!attribute existing_post_id
      #   ID of an existing Facebook post to use as the ad creative (instead of a creative
      #   set).
      #
      #   @return [String, nil]
      optional :existing_post_id, String, nil?: true

      # @!attribute platform_config
      #   Platform-specific configuration. Must match the campaign platform.
      #
      #   @return [WhopSDK::Models::AdCreateParams::PlatformConfig, nil]
      optional :platform_config, -> { WhopSDK::AdCreateParams::PlatformConfig }, nil?: true

      # @!attribute status
      #   The status of an external ad.
      #
      #   @return [Symbol, WhopSDK::Models::AdCreateParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AdCreateParams::Status }, nil?: true

      # @!method initialize(ad_group_id:, creative_set_id: nil, existing_instagram_media_id: nil, existing_post_id: nil, platform_config: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCreateParams} for more details.
      #
      #   @param ad_group_id [String] The unique identifier of the ad group to create this ad in.
      #
      #   @param creative_set_id [String, nil] The unique identifier of the creative set to use.
      #
      #   @param existing_instagram_media_id [String, nil] ID of an existing Instagram media item to use as the ad creative (instead of a c
      #
      #   @param existing_post_id [String, nil] ID of an existing Facebook post to use as the ad creative (instead of a creative
      #
      #   @param platform_config [WhopSDK::Models::AdCreateParams::PlatformConfig, nil] Platform-specific configuration. Must match the campaign platform.
      #
      #   @param status [Symbol, WhopSDK::Models::AdCreateParams::Status, nil] The status of an external ad.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class PlatformConfig < WhopSDK::Internal::Type::BaseModel
        # @!attribute meta
        #   Configuration for Meta (Facebook/Instagram) ads.
        #
        #   @return [WhopSDK::Models::AdCreateParams::PlatformConfig::Meta, nil]
        optional :meta, -> { WhopSDK::AdCreateParams::PlatformConfig::Meta }, nil?: true

        # @!attribute tiktok
        #   Configuration for TikTok ads.
        #
        #   @return [WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok, nil]
        optional :tiktok, -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok }, nil?: true

        # @!method initialize(meta: nil, tiktok: nil)
        #   Platform-specific configuration. Must match the campaign platform.
        #
        #   @param meta [WhopSDK::Models::AdCreateParams::PlatformConfig::Meta, nil] Configuration for Meta (Facebook/Instagram) ads.
        #
        #   @param tiktok [WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok, nil] Configuration for TikTok ads.

        # @see WhopSDK::Models::AdCreateParams::PlatformConfig#meta
        class Meta < WhopSDK::Internal::Type::BaseModel
          # @!attribute call_to_action_type
          #   Call-to-action button type.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Meta::CallToActionType, nil]
          optional :call_to_action_type,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType },
                   nil?: true

          # @!attribute carousel_cards
          #   Per-card carousel config.
          #
          #   @return [Array<WhopSDK::Models::AdCreateParams::PlatformConfig::Meta::CarouselCard>, nil]
          optional :carousel_cards,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCreateParams::PlatformConfig::Meta::CarouselCard]
                   },
                   nil?: true

          # @!attribute description
          #   Description of the ad creative (legacy single-value).
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute descriptions
          #   Up to 5 description variants, rendered via Meta asset_feed_spec.
          #
          #   @return [Array<String>, nil]
          optional :descriptions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute existing_instagram_media_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :existing_instagram_media_id, String, nil?: true

          # @!attribute existing_post_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :existing_post_id, String, nil?: true

          # @!attribute headline
          #   Headline of the ad creative (legacy single-value).
          #
          #   @return [String, nil]
          optional :headline, String, nil?: true

          # @!attribute headlines
          #   Up to 5 headline variants, rendered via Meta asset_feed_spec.
          #
          #   @return [Array<String>, nil]
          optional :headlines, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute instagram_actor_id
          #   Unique identifier of the Instagram account.
          #
          #   @return [String, nil]
          optional :instagram_actor_id, String, nil?: true

          # @!attribute lead_form_config
          #   Lead generation form configuration (JSON).
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :lead_form_config,
                   WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
                   nil?: true

          # @!attribute link_url
          #   Destination URL.
          #
          #   @return [String, nil]
          optional :link_url, String, nil?: true

          # @!attribute multi_advertiser_enrollment
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment, nil]
          optional :multi_advertiser_enrollment,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment },
                   nil?: true

          # @!attribute name
          #   Ad name.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute page_id
          #   Unique identifier of the Facebook Page.
          #
          #   @return [String, nil]
          optional :page_id, String, nil?: true

          # @!attribute page_welcome_message
          #   Messenger welcome message / ice-breaker template (JSON).
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :page_welcome_message,
                   WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
                   nil?: true

          # @!attribute primary_text
          #   Primary text of the ad creative (legacy single-value).
          #
          #   @return [String, nil]
          optional :primary_text, String, nil?: true

          # @!attribute primary_texts
          #   Up to 5 primary-text variants, rendered via Meta asset_feed_spec.
          #
          #   @return [Array<String>, nil]
          optional :primary_texts, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute url_tags
          #   URL query parameters appended to the destination link.
          #
          #   @return [String, nil]
          optional :url_tags, String, nil?: true

          # @!method initialize(call_to_action_type: nil, carousel_cards: nil, description: nil, descriptions: nil, existing_instagram_media_id: nil, existing_post_id: nil, headline: nil, headlines: nil, instagram_actor_id: nil, lead_form_config: nil, link_url: nil, multi_advertiser_enrollment: nil, name: nil, page_id: nil, page_welcome_message: nil, primary_text: nil, primary_texts: nil, url_tags: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdCreateParams::PlatformConfig::Meta} for more details.
          #
          #   Configuration for Meta (Facebook/Instagram) ads.
          #
          #   @param call_to_action_type [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Meta::CallToActionType, nil] Call-to-action button type.
          #
          #   @param carousel_cards [Array<WhopSDK::Models::AdCreateParams::PlatformConfig::Meta::CarouselCard>, nil] Per-card carousel config.
          #
          #   @param description [String, nil] Description of the ad creative (legacy single-value).
          #
          #   @param descriptions [Array<String>, nil] Up to 5 description variants, rendered via Meta asset_feed_spec.
          #
          #   @param existing_instagram_media_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param existing_post_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param headline [String, nil] Headline of the ad creative (legacy single-value).
          #
          #   @param headlines [Array<String>, nil] Up to 5 headline variants, rendered via Meta asset_feed_spec.
          #
          #   @param instagram_actor_id [String, nil] Unique identifier of the Instagram account.
          #
          #   @param lead_form_config [Hash{Symbol=>Object}, nil] Lead generation form configuration (JSON).
          #
          #   @param link_url [String, nil] Destination URL.
          #
          #   @param multi_advertiser_enrollment [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment, nil]
          #
          #   @param name [String, nil] Ad name.
          #
          #   @param page_id [String, nil] Unique identifier of the Facebook Page.
          #
          #   @param page_welcome_message [Hash{Symbol=>Object}, nil] Messenger welcome message / ice-breaker template (JSON).
          #
          #   @param primary_text [String, nil] Primary text of the ad creative (legacy single-value).
          #
          #   @param primary_texts [Array<String>, nil] Up to 5 primary-text variants, rendered via Meta asset_feed_spec.
          #
          #   @param url_tags [String, nil] URL query parameters appended to the destination link.

          # Call-to-action button type.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Meta#call_to_action_type
          module CallToActionType
            extend WhopSDK::Internal::Type::Enum

            LEARN_MORE = :LEARN_MORE
            SHOP_NOW = :SHOP_NOW
            SIGN_UP = :SIGN_UP
            SUBSCRIBE = :SUBSCRIBE
            GET_STARTED = :GET_STARTED
            BOOK_NOW = :BOOK_NOW
            APPLY_NOW = :APPLY_NOW
            CONTACT_US = :CONTACT_US
            DOWNLOAD = :DOWNLOAD
            ORDER_NOW = :ORDER_NOW
            BUY_NOW = :BUY_NOW
            GET_QUOTE = :GET_QUOTE
            MESSAGE_PAGE = :MESSAGE_PAGE
            WHATSAPP_MESSAGE = :WHATSAPP_MESSAGE
            INSTAGRAM_MESSAGE = :INSTAGRAM_MESSAGE
            CALL_NOW = :CALL_NOW
            GET_DIRECTIONS = :GET_DIRECTIONS
            SEND_UPDATES = :SEND_UPDATES
            GET_OFFER = :GET_OFFER
            WATCH_MORE = :WATCH_MORE
            LISTEN_NOW = :LISTEN_NOW
            PLAY_GAME = :PLAY_GAME
            OPEN_LINK = :OPEN_LINK
            NO_BUTTON = :NO_BUTTON
            GET_OFFER_VIEW = :GET_OFFER_VIEW
            GET_EVENT_TICKETS = :GET_EVENT_TICKETS
            SEE_MENU = :SEE_MENU
            REQUEST_TIME = :REQUEST_TIME
            EVENT_RSVP = :EVENT_RSVP
            SEE_DETAILS = :SEE_DETAILS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class CarouselCard < WhopSDK::Internal::Type::BaseModel
            # @!attribute call_to_action_type
            #   CTA button type (e.g., SHOP_NOW, LEARN_MORE).
            #
            #   @return [String, nil]
            optional :call_to_action_type, String, nil?: true

            # @!attribute description
            #   Card description (max 30 chars recommended).
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute link
            #   Destination URL for this card (defaults to ad destination).
            #
            #   @return [String, nil]
            optional :link, String, nil?: true

            # @!attribute name
            #   Card title (max 35 chars recommended).
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!method initialize(call_to_action_type: nil, description: nil, link: nil, name: nil)
            #   Per-card configuration for a carousel ad.
            #
            #   @param call_to_action_type [String, nil] CTA button type (e.g., SHOP_NOW, LEARN_MORE).
            #
            #   @param description [String, nil] Card description (max 30 chars recommended).
            #
            #   @param link [String, nil] Destination URL for this card (defaults to ad destination).
            #
            #   @param name [String, nil] Card title (max 35 chars recommended).
          end

          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Meta#multi_advertiser_enrollment
          module MultiAdvertiserEnrollment
            extend WhopSDK::Internal::Type::Enum

            OPT_IN = :OPT_IN
            OPT_OUT = :OPT_OUT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::AdCreateParams::PlatformConfig#tiktok
        class Tiktok < WhopSDK::Internal::Type::BaseModel
          # @!attribute access_pass_tag
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :access_pass_tag, String, nil?: true

          # @!attribute ad_format
          #   Ad format (SINGLE_IMAGE, SINGLE_VIDEO, CAROUSEL_ADS, CATALOG_CAROUSEL,
          #   LIVE_CONTENT).
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::AdFormat, nil]
          optional :ad_format,
                   enum: -> {
                     WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat
                   },
                   nil?: true

          # @!attribute ad_name
          #   Ad name.
          #
          #   @return [String, nil]
          optional :ad_name, String, nil?: true

          # @!attribute ad_text
          #   Ad copy (single variant).
          #
          #   @return [String, nil]
          optional :ad_text, String, nil?: true

          # @!attribute ad_texts
          #   Ad copy variants for search ads (up to 5).
          #
          #   @return [Array<String>, nil]
          optional :ad_texts, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute aigc_disclosure_type
          #   Whether the ad creative is AI-generated content. See docs/tiktok_api/ad.md §
          #   aigc_disclosure_type.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType, nil]
          optional :aigc_disclosure_type,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType },
                   nil?: true

          # @!attribute auto_disclaimer_types
          #   Automatic disclaimer categories (e.g., FINANCE, ALCOHOL).
          #
          #   @return [Array<String>, nil]
          optional :auto_disclaimer_types, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute automate_creative_enabled
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :automate_creative_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute brand_safety_postbid_partner
          #   Post-bid brand-safety vendor. See docs/tiktok_api/ad.md §
          #   brand_safety_postbid_partner.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner, nil]
          optional :brand_safety_postbid_partner,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner },
                   nil?: true

          # @!attribute brand_safety_vast_url
          #   VAST URL for brand safety measurement.
          #
          #   @return [String, nil]
          optional :brand_safety_vast_url, String, nil?: true

          # @!attribute call_to_action
          #   TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::CallToAction, nil]
          optional :call_to_action,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction },
                   nil?: true

          # @!attribute call_to_action_enabled
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :call_to_action_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute call_to_action_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :call_to_action_id, String, nil?: true

          # @!attribute call_to_action_mode
          #   How the call-to-action text is chosen. STANDARD uses a single fixed CTA; DYNAMIC
          #   lets TikTok rotate through a set of CTAs to maximize performance.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode, nil]
          optional :call_to_action_mode,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode },
                   nil?: true

          # @!attribute card_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :card_id, String, nil?: true

          # @!attribute carousel_image_index
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          optional :carousel_image_index, Integer, nil?: true

          # @!attribute catalog_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :catalog_id, String, nil?: true

          # @!attribute click_tracking_url
          #   Third-party click tracker URL.
          #
          #   @return [String, nil]
          optional :click_tracking_url, String, nil?: true

          # @!attribute cpp_url
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :cpp_url, String, nil?: true

          # @!attribute creative_authorized
          #   Whether the creator has authorized the use of this creative for paid promotion
          #   (Spark Ads).
          #
          #   @return [Boolean, nil]
          optional :creative_authorized, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute creative_auto_enhancement_strategy_list
          #
          #   @return [Array<String>, nil]
          optional :creative_auto_enhancement_strategy_list,
                   WhopSDK::Internal::Type::ArrayOf[String],
                   nil?: true

          # @!attribute dark_post_status
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus, nil]
          optional :dark_post_status,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus },
                   nil?: true

          # @!attribute deeplink
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :deeplink, String, nil?: true

          # @!attribute deeplink_format_type
          #   How the ad's deeplink is resolved. See docs/tiktok_api/ad.md §
          #   deeplink_format_type.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType, nil]
          optional :deeplink_format_type,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType },
                   nil?: true

          # @!attribute deeplink_type
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :deeplink_type, String, nil?: true

          # @!attribute deeplink_utm_params
          #   UTM params appended to the deeplink.
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :deeplink_utm_params,
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]],
                   nil?: true

          # @!attribute disclaimer_clickable_texts
          #   Clickable disclaimer segments (text + url).
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :disclaimer_clickable_texts,
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]],
                   nil?: true

          # @!attribute disclaimer_text
          #   Plain text shown when disclaimer_type is DISCLAIMER_TEXT / DISCLAIMER_WITH_URL.
          #
          #   @return [String, nil]
          optional :disclaimer_text, String, nil?: true

          # @!attribute disclaimer_type
          #   Ad disclaimer mode. See docs/tiktok_api/ad.md § disclaimer_type.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType, nil]
          optional :disclaimer_type,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType },
                   nil?: true

          # @!attribute dynamic_destination
          #   Dynamic destination strategy for shopping ads.
          #
          #   @return [String, nil]
          optional :dynamic_destination, String, nil?: true

          # @!attribute dynamic_format
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :dynamic_format, String, nil?: true

          # @!attribute end_card_cta
          #   End-card CTA text for video ads.
          #
          #   @return [String, nil]
          optional :end_card_cta, String, nil?: true

          # @!attribute fallback_type
          #   Destination fallback when a deferred deeplink cannot open the app. See
          #   docs/tiktok_api/ad.md § fallback_type.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::FallbackType, nil]
          optional :fallback_type,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType },
                   nil?: true

          # @!attribute identity_authorized_bc_id
          #   Business Center ID (required when identity_type is BC_AUTH_TT).
          #
          #   @return [String, nil]
          optional :identity_authorized_bc_id, String, nil?: true

          # @!attribute identity_id
          #   Unique identifier of the identity.
          #
          #   @return [String, nil]
          optional :identity_id, String, nil?: true

          # @!attribute identity_type
          #   Identity type.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::IdentityType, nil]
          optional :identity_type,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType },
                   nil?: true

          # @!attribute image_ids
          #   Unique identifiers of the images.
          #
          #   @return [Array<String>, nil]
          optional :image_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute impression_tracking_url
          #   Third-party impression tracker URL.
          #
          #   @return [String, nil]
          optional :impression_tracking_url, String, nil?: true

          # @!attribute item_duet_status
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus, nil]
          optional :item_duet_status,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus },
                   nil?: true

          # @!attribute item_group_ids
          #
          #   @return [Array<String>, nil]
          optional :item_group_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute item_stitch_status
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus, nil]
          optional :item_stitch_status,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus },
                   nil?: true

          # @!attribute landing_page_url
          #   Landing page URL.
          #
          #   @return [String, nil]
          optional :landing_page_url, String, nil?: true

          # @!attribute link_url
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :link_url, String, nil?: true

          # @!attribute music_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :music_id, String, nil?: true

          # @!attribute page_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :page_id, String, nil?: true

          # @!attribute product_display_field_list
          #   Fields displayed on dynamic product cards.
          #
          #   @return [Array<String>, nil]
          optional :product_display_field_list, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute product_set_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :product_set_id, String, nil?: true

          # @!attribute product_specific_type
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :product_specific_type, String, nil?: true

          # @!attribute promotional_music_disabled
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :promotional_music_disabled, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute shopping_ads_fallback_type
          #   Fallback destination for shopping ads when the primary target is unavailable.
          #   See docs/tiktok_api/ad.md § shopping_ads_fallback_type.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType, nil]
          optional :shopping_ads_fallback_type,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType },
                   nil?: true

          # @!attribute shopping_ads_video_package_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :shopping_ads_video_package_id, String, nil?: true

          # @!attribute showcase_products
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :showcase_products,
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]],
                   nil?: true

          # @!attribute sku_ids
          #
          #   @return [Array<String>, nil]
          optional :sku_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute tiktok_item_id
          #   TikTok item ID for Spark Ads (promotes an organic post).
          #
          #   @return [String, nil]
          optional :tiktok_item_id, String, nil?: true

          # @!attribute tracking_app_id
          #   TikTok MMP-tracked app ID.
          #
          #   @return [String, nil]
          optional :tracking_app_id, String, nil?: true

          # @!attribute tracking_message_event_set_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :tracking_message_event_set_id, String, nil?: true

          # @!attribute tracking_offline_event_set_ids
          #   Offline event set IDs for attribution.
          #
          #   @return [Array<String>, nil]
          optional :tracking_offline_event_set_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute tracking_pixel_id
          #   TikTok pixel ID used for conversion tracking on this ad.
          #
          #   @return [String, nil]
          optional :tracking_pixel_id, String, nil?: true

          # @!attribute utm_params
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :utm_params,
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]],
                   nil?: true

          # @!attribute vertical_video_strategy
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :vertical_video_strategy, String, nil?: true

          # @!attribute video_id
          #   Unique identifier of the video.
          #
          #   @return [String, nil]
          optional :video_id, String, nil?: true

          # @!attribute video_view_tracking_url
          #   Third-party video-view tracker URL.
          #
          #   @return [String, nil]
          optional :video_view_tracking_url, String, nil?: true

          # @!attribute viewability_postbid_partner
          #   Post-bid viewability measurement partner. See docs/tiktok_api/ad.md §
          #   viewability_postbid_partner.
          #
          #   @return [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner, nil]
          optional :viewability_postbid_partner,
                   enum: -> { WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner },
                   nil?: true

          # @!attribute viewability_vast_url
          #   VAST URL for viewability measurement.
          #
          #   @return [String, nil]
          optional :viewability_vast_url, String, nil?: true

          # @!method initialize(access_pass_tag: nil, ad_format: nil, ad_name: nil, ad_text: nil, ad_texts: nil, aigc_disclosure_type: nil, auto_disclaimer_types: nil, automate_creative_enabled: nil, brand_safety_postbid_partner: nil, brand_safety_vast_url: nil, call_to_action: nil, call_to_action_enabled: nil, call_to_action_id: nil, call_to_action_mode: nil, card_id: nil, carousel_image_index: nil, catalog_id: nil, click_tracking_url: nil, cpp_url: nil, creative_authorized: nil, creative_auto_enhancement_strategy_list: nil, dark_post_status: nil, deeplink: nil, deeplink_format_type: nil, deeplink_type: nil, deeplink_utm_params: nil, disclaimer_clickable_texts: nil, disclaimer_text: nil, disclaimer_type: nil, dynamic_destination: nil, dynamic_format: nil, end_card_cta: nil, fallback_type: nil, identity_authorized_bc_id: nil, identity_id: nil, identity_type: nil, image_ids: nil, impression_tracking_url: nil, item_duet_status: nil, item_group_ids: nil, item_stitch_status: nil, landing_page_url: nil, link_url: nil, music_id: nil, page_id: nil, product_display_field_list: nil, product_set_id: nil, product_specific_type: nil, promotional_music_disabled: nil, shopping_ads_fallback_type: nil, shopping_ads_video_package_id: nil, showcase_products: nil, sku_ids: nil, tiktok_item_id: nil, tracking_app_id: nil, tracking_message_event_set_id: nil, tracking_offline_event_set_ids: nil, tracking_pixel_id: nil, utm_params: nil, vertical_video_strategy: nil, video_id: nil, video_view_tracking_url: nil, viewability_postbid_partner: nil, viewability_vast_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok} for more details.
          #
          #   Configuration for TikTok ads.
          #
          #   @param access_pass_tag [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param ad_format [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::AdFormat, nil] Ad format (SINGLE_IMAGE, SINGLE_VIDEO, CAROUSEL_ADS, CATALOG_CAROUSEL, LIVE_CONT
          #
          #   @param ad_name [String, nil] Ad name.
          #
          #   @param ad_text [String, nil] Ad copy (single variant).
          #
          #   @param ad_texts [Array<String>, nil] Ad copy variants for search ads (up to 5).
          #
          #   @param aigc_disclosure_type [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType, nil] Whether the ad creative is AI-generated content. See docs/tiktok_api/ad.md § aig
          #
          #   @param auto_disclaimer_types [Array<String>, nil] Automatic disclaimer categories (e.g., FINANCE, ALCOHOL).
          #
          #   @param automate_creative_enabled [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param brand_safety_postbid_partner [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner, nil] Post-bid brand-safety vendor. See docs/tiktok_api/ad.md § brand_safety_postbid_p
          #
          #   @param brand_safety_vast_url [String, nil] VAST URL for brand safety measurement.
          #
          #   @param call_to_action [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::CallToAction, nil] TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          #
          #   @param call_to_action_enabled [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param call_to_action_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param call_to_action_mode [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode, nil] How the call-to-action text is chosen. STANDARD uses a single fixed CTA; DYNAMIC
          #
          #   @param card_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param carousel_image_index [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param catalog_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param click_tracking_url [String, nil] Third-party click tracker URL.
          #
          #   @param cpp_url [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param creative_authorized [Boolean, nil] Whether the creator has authorized the use of this creative for paid promotion (
          #
          #   @param creative_auto_enhancement_strategy_list [Array<String>, nil]
          #
          #   @param dark_post_status [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus, nil]
          #
          #   @param deeplink [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param deeplink_format_type [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType, nil] How the ad's deeplink is resolved. See docs/tiktok_api/ad.md § deeplink_format_t
          #
          #   @param deeplink_type [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param deeplink_utm_params [Array<Hash{Symbol=>Object}>, nil] UTM params appended to the deeplink.
          #
          #   @param disclaimer_clickable_texts [Array<Hash{Symbol=>Object}>, nil] Clickable disclaimer segments (text + url).
          #
          #   @param disclaimer_text [String, nil] Plain text shown when disclaimer_type is DISCLAIMER_TEXT / DISCLAIMER_WITH_URL.
          #
          #   @param disclaimer_type [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType, nil] Ad disclaimer mode. See docs/tiktok_api/ad.md § disclaimer_type.
          #
          #   @param dynamic_destination [String, nil] Dynamic destination strategy for shopping ads.
          #
          #   @param dynamic_format [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param end_card_cta [String, nil] End-card CTA text for video ads.
          #
          #   @param fallback_type [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::FallbackType, nil] Destination fallback when a deferred deeplink cannot open the app. See docs/tikt
          #
          #   @param identity_authorized_bc_id [String, nil] Business Center ID (required when identity_type is BC_AUTH_TT).
          #
          #   @param identity_id [String, nil] Unique identifier of the identity.
          #
          #   @param identity_type [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::IdentityType, nil] Identity type.
          #
          #   @param image_ids [Array<String>, nil] Unique identifiers of the images.
          #
          #   @param impression_tracking_url [String, nil] Third-party impression tracker URL.
          #
          #   @param item_duet_status [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus, nil]
          #
          #   @param item_group_ids [Array<String>, nil]
          #
          #   @param item_stitch_status [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus, nil]
          #
          #   @param landing_page_url [String, nil] Landing page URL.
          #
          #   @param link_url [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param music_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param page_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param product_display_field_list [Array<String>, nil] Fields displayed on dynamic product cards.
          #
          #   @param product_set_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param product_specific_type [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param promotional_music_disabled [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param shopping_ads_fallback_type [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType, nil] Fallback destination for shopping ads when the primary target is unavailable. Se
          #
          #   @param shopping_ads_video_package_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param showcase_products [Array<Hash{Symbol=>Object}>, nil]
          #
          #   @param sku_ids [Array<String>, nil]
          #
          #   @param tiktok_item_id [String, nil] TikTok item ID for Spark Ads (promotes an organic post).
          #
          #   @param tracking_app_id [String, nil] TikTok MMP-tracked app ID.
          #
          #   @param tracking_message_event_set_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param tracking_offline_event_set_ids [Array<String>, nil] Offline event set IDs for attribution.
          #
          #   @param tracking_pixel_id [String, nil] TikTok pixel ID used for conversion tracking on this ad.
          #
          #   @param utm_params [Array<Hash{Symbol=>Object}>, nil]
          #
          #   @param vertical_video_strategy [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param video_id [String, nil] Unique identifier of the video.
          #
          #   @param video_view_tracking_url [String, nil] Third-party video-view tracker URL.
          #
          #   @param viewability_postbid_partner [Symbol, WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner, nil] Post-bid viewability measurement partner. See docs/tiktok_api/ad.md § viewabilit
          #
          #   @param viewability_vast_url [String, nil] VAST URL for viewability measurement.

          # Ad format (SINGLE_IMAGE, SINGLE_VIDEO, CAROUSEL_ADS, CATALOG_CAROUSEL,
          # LIVE_CONTENT).
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#ad_format
          module AdFormat
            extend WhopSDK::Internal::Type::Enum

            SINGLE_IMAGE = :SINGLE_IMAGE
            SINGLE_VIDEO = :SINGLE_VIDEO
            CAROUSEL_ADS = :CAROUSEL_ADS
            CATALOG_CAROUSEL = :CATALOG_CAROUSEL
            LIVE_CONTENT = :LIVE_CONTENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Whether the ad creative is AI-generated content. See docs/tiktok_api/ad.md §
          # aigc_disclosure_type.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#aigc_disclosure_type
          module AigcDisclosureType
            extend WhopSDK::Internal::Type::Enum

            UNSET = :UNSET
            CONTAINS_AIGC = :CONTAINS_AIGC
            IS_AIGC = :IS_AIGC
            NOT_AIGC = :NOT_AIGC

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Post-bid brand-safety vendor. See docs/tiktok_api/ad.md §
          # brand_safety_postbid_partner.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#brand_safety_postbid_partner
          module BrandSafetyPostbidPartner
            extend WhopSDK::Internal::Type::Enum

            UNSET = :UNSET
            IAS = :IAS
            DOUBLE_VERIFY = :DOUBLE_VERIFY
            OPEN_SLATE = :OPEN_SLATE
            ZEFR = :ZEFR

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#call_to_action
          module CallToAction
            extend WhopSDK::Internal::Type::Enum

            LEARN_MORE = :LEARN_MORE
            DOWNLOAD = :DOWNLOAD
            SHOP_NOW = :SHOP_NOW
            SIGN_UP = :SIGN_UP
            CONTACT_US = :CONTACT_US
            APPLY_NOW = :APPLY_NOW
            BOOK_NOW = :BOOK_NOW
            PLAY_GAME = :PLAY_GAME
            WATCH_NOW = :WATCH_NOW
            READ_MORE = :READ_MORE
            VIEW_NOW = :VIEW_NOW
            GET_QUOTE = :GET_QUOTE
            ORDER_NOW = :ORDER_NOW
            INSTALL_NOW = :INSTALL_NOW
            GET_SHOWTIMES = :GET_SHOWTIMES
            LISTEN_NOW = :LISTEN_NOW
            INTERESTED = :INTERESTED
            SUBSCRIBE = :SUBSCRIBE
            GET_TICKETS_NOW = :GET_TICKETS_NOW
            EXPERIENCE_NOW = :EXPERIENCE_NOW
            PRE_ORDER_NOW = :PRE_ORDER_NOW
            VISIT_STORE = :VISIT_STORE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # How the call-to-action text is chosen. STANDARD uses a single fixed CTA; DYNAMIC
          # lets TikTok rotate through a set of CTAs to maximize performance.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#call_to_action_mode
          module CallToActionMode
            extend WhopSDK::Internal::Type::Enum

            STANDARD = :STANDARD
            DYNAMIC = :DYNAMIC

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#dark_post_status
          module DarkPostStatus
            extend WhopSDK::Internal::Type::Enum

            ON = :ON
            OFF = :OFF

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # How the ad's deeplink is resolved. See docs/tiktok_api/ad.md §
          # deeplink_format_type.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#deeplink_format_type
          module DeeplinkFormatType
            extend WhopSDK::Internal::Type::Enum

            UNSET = :UNSET
            DEEPLINK = :DEEPLINK
            DEFERRED_DEEPLINK = :DEFERRED_DEEPLINK

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Ad disclaimer mode. See docs/tiktok_api/ad.md § disclaimer_type.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#disclaimer_type
          module DisclaimerType
            extend WhopSDK::Internal::Type::Enum

            NONE = :NONE
            DISCLAIMER_TEXT = :DISCLAIMER_TEXT
            DISCLAIMER_WITH_URL = :DISCLAIMER_WITH_URL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Destination fallback when a deferred deeplink cannot open the app. See
          # docs/tiktok_api/ad.md § fallback_type.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#fallback_type
          module FallbackType
            extend WhopSDK::Internal::Type::Enum

            UNSET = :UNSET
            APP_STORE = :APP_STORE
            LANDING_PAGE = :LANDING_PAGE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Identity type.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#identity_type
          module IdentityType
            extend WhopSDK::Internal::Type::Enum

            CUSTOMIZED_USER = :CUSTOMIZED_USER
            AUTH_CODE = :AUTH_CODE
            TT_USER = :TT_USER
            BC_AUTH_TT = :BC_AUTH_TT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#item_duet_status
          module ItemDuetStatus
            extend WhopSDK::Internal::Type::Enum

            ENABLE = :ENABLE
            DISABLE = :DISABLE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#item_stitch_status
          module ItemStitchStatus
            extend WhopSDK::Internal::Type::Enum

            ENABLE = :ENABLE
            DISABLE = :DISABLE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Fallback destination for shopping ads when the primary target is unavailable.
          # See docs/tiktok_api/ad.md § shopping_ads_fallback_type.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#shopping_ads_fallback_type
          module ShoppingAdsFallbackType
            extend WhopSDK::Internal::Type::Enum

            UNSET = :UNSET
            LANDING_PAGE = :LANDING_PAGE
            STORE = :STORE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Post-bid viewability measurement partner. See docs/tiktok_api/ad.md §
          # viewability_postbid_partner.
          #
          # @see WhopSDK::Models::AdCreateParams::PlatformConfig::Tiktok#viewability_postbid_partner
          module ViewabilityPostbidPartner
            extend WhopSDK::Internal::Type::Enum

            UNSET = :UNSET
            IAS = :IAS
            DOUBLE_VERIFY = :DOUBLE_VERIFY
            MOAT = :MOAT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # The status of an external ad.
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        INACTIVE = :inactive
        IN_REVIEW = :in_review
        REJECTED = :rejected
        FLAGGED = :flagged

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

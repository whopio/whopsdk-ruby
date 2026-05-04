# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#list
    class AdListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the ad.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the ad was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute platform_config
      #   Typed platform-specific configuration.
      #
      #   @return [WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType, nil]
      required :platform_config, union: -> { WhopSDK::Models::AdListResponse::PlatformConfig }

      # @!attribute status
      #   Current status of the ad.
      #
      #   @return [Symbol, WhopSDK::Models::AdListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AdListResponse::Status }

      # @!attribute updated_at
      #   When the ad was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, platform_config:, status:, updated_at:)
      #   An ad belonging to an ad group
      #
      #   @param id [String] Unique identifier for the ad.
      #
      #   @param created_at [Time] When the ad was created.
      #
      #   @param platform_config [WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType, nil] Typed platform-specific configuration.
      #
      #   @param status [Symbol, WhopSDK::Models::AdListResponse::Status] Current status of the ad.
      #
      #   @param updated_at [Time] When the ad was last updated.

      # Typed platform-specific configuration.
      #
      # @see WhopSDK::Models::AdListResponse#platform_config
      module PlatformConfig
        extend WhopSDK::Internal::Type::Union

        discriminator :typename

        # Meta (Facebook/Instagram) ad configuration.
        variant :MetaAdPlatformConfigType,
                -> { WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType }

        # TikTok ad configuration.
        variant :TiktokAdPlatformConfigType,
                -> { WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType }

        class MetaAdPlatformConfigType < WhopSDK::Internal::Type::BaseModel
          # @!attribute call_to_action_type
          #
          #   @return [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType, nil]
          required :call_to_action_type,
                   enum: -> { WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType },
                   nil?: true

          # @!attribute headline
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :headline, String, nil?: true

          # @!attribute instagram_actor_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :instagram_actor_id, String, nil?: true

          # @!attribute link_url
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :link_url, String, nil?: true

          # @!attribute name
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute page_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :page_id, String, nil?: true

          # @!attribute platform
          #   The ad platform.
          #
          #   @return [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType::Platform]
          required :platform,
                   enum: -> { WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType::Platform }

          # @!attribute primary_text
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :primary_text, String, nil?: true

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :MetaAdPlatformConfigType]
          required :typename, const: :MetaAdPlatformConfigType

          # @!attribute url_tags
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :url_tags, String, nil?: true

          # @!method initialize(call_to_action_type:, headline:, instagram_actor_id:, link_url:, name:, page_id:, platform:, primary_text:, url_tags:, typename: :MetaAdPlatformConfigType)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType} for
          #   more details.
          #
          #   Meta (Facebook/Instagram) ad configuration.
          #
          #   @param call_to_action_type [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType, nil]
          #
          #   @param headline [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param instagram_actor_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param link_url [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param name [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param page_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param platform [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType::Platform] The ad platform.
          #
          #   @param primary_text [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param url_tags [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param typename [Symbol, :MetaAdPlatformConfigType] The typename of this object

          # @see WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType#call_to_action_type
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

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The ad platform.
          #
          # @see WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType#platform
          module Platform
            extend WhopSDK::Internal::Type::Enum

            META = :meta
            TIKTOK = :tiktok

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class TiktokAdPlatformConfigType < WhopSDK::Internal::Type::BaseModel
          # @!attribute ad_format
          #
          #   @return [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat, nil]
          required :ad_format,
                   enum: -> { WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat },
                   nil?: true

          # @!attribute ad_name
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :ad_name, String, nil?: true

          # @!attribute ad_text
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :ad_text, String, nil?: true

          # @!attribute call_to_action
          #   TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          #
          #   @return [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction, nil]
          required :call_to_action,
                   enum: -> { WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction },
                   nil?: true

          # @!attribute identity_authorized_bc_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :identity_authorized_bc_id, String, nil?: true

          # @!attribute identity_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :identity_id, String, nil?: true

          # @!attribute identity_type
          #
          #   @return [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType, nil]
          required :identity_type,
                   enum: -> { WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType },
                   nil?: true

          # @!attribute image_ids
          #
          #   @return [Array<String>, nil]
          required :image_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute landing_page_url
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :landing_page_url, String, nil?: true

          # @!attribute platform
          #   The ad platform.
          #
          #   @return [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform]
          required :platform,
                   enum: -> { WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform }

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :TiktokAdPlatformConfigType]
          required :typename, const: :TiktokAdPlatformConfigType

          # @!attribute video_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :video_id, String, nil?: true

          # @!method initialize(ad_format:, ad_name:, ad_text:, call_to_action:, identity_authorized_bc_id:, identity_id:, identity_type:, image_ids:, landing_page_url:, platform:, video_id:, typename: :TiktokAdPlatformConfigType)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType}
          #   for more details.
          #
          #   TikTok ad configuration.
          #
          #   @param ad_format [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat, nil]
          #
          #   @param ad_name [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param ad_text [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param call_to_action [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction, nil] TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          #
          #   @param identity_authorized_bc_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param identity_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param identity_type [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType, nil]
          #
          #   @param image_ids [Array<String>, nil]
          #
          #   @param landing_page_url [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param platform [Symbol, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform] The ad platform.
          #
          #   @param video_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param typename [Symbol, :TiktokAdPlatformConfigType] The typename of this object

          # @see WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType#ad_format
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

          # TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          #
          # @see WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType#call_to_action
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

          # @see WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType#identity_type
          module IdentityType
            extend WhopSDK::Internal::Type::Enum

            CUSTOMIZED_USER = :CUSTOMIZED_USER
            AUTH_CODE = :AUTH_CODE
            TT_USER = :TT_USER
            BC_AUTH_TT = :BC_AUTH_TT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The ad platform.
          #
          # @see WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType#platform
          module Platform
            extend WhopSDK::Internal::Type::Enum

            META = :meta
            TIKTOK = :tiktok

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::AdListResponse::PlatformConfig::MetaAdPlatformConfigType, WhopSDK::Models::AdListResponse::PlatformConfig::TiktokAdPlatformConfigType)]
      end

      # Current status of the ad.
      #
      # @see WhopSDK::Models::AdListResponse#status
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

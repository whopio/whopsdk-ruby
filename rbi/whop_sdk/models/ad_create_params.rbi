# typed: strong

module WhopSDK
  module Models
    class AdCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the ad group to create this ad in.
      sig { returns(String) }
      attr_accessor :ad_group_id

      # The unique identifier of the creative set to use.
      sig { returns(T.nilable(String)) }
      attr_accessor :creative_set_id

      # ID of an existing Instagram media item to use as the ad creative (instead of a
      # creative set or Facebook post).
      sig { returns(T.nilable(String)) }
      attr_accessor :existing_instagram_media_id

      # ID of an existing Facebook post to use as the ad creative (instead of a creative
      # set).
      sig { returns(T.nilable(String)) }
      attr_accessor :existing_post_id

      # Platform-specific configuration. Must match the campaign platform.
      sig { returns(T.nilable(WhopSDK::AdCreateParams::PlatformConfig)) }
      attr_reader :platform_config

      sig do
        params(
          platform_config:
            T.nilable(WhopSDK::AdCreateParams::PlatformConfig::OrHash)
        ).void
      end
      attr_writer :platform_config

      # The status of an external ad.
      sig { returns(T.nilable(WhopSDK::AdCreateParams::Status::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          ad_group_id: String,
          creative_set_id: T.nilable(String),
          existing_instagram_media_id: T.nilable(String),
          existing_post_id: T.nilable(String),
          platform_config:
            T.nilable(WhopSDK::AdCreateParams::PlatformConfig::OrHash),
          status: T.nilable(WhopSDK::AdCreateParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the ad group to create this ad in.
        ad_group_id:,
        # The unique identifier of the creative set to use.
        creative_set_id: nil,
        # ID of an existing Instagram media item to use as the ad creative (instead of a
        # creative set or Facebook post).
        existing_instagram_media_id: nil,
        # ID of an existing Facebook post to use as the ad creative (instead of a creative
        # set).
        existing_post_id: nil,
        # Platform-specific configuration. Must match the campaign platform.
        platform_config: nil,
        # The status of an external ad.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ad_group_id: String,
            creative_set_id: T.nilable(String),
            existing_instagram_media_id: T.nilable(String),
            existing_post_id: T.nilable(String),
            platform_config: T.nilable(WhopSDK::AdCreateParams::PlatformConfig),
            status: T.nilable(WhopSDK::AdCreateParams::Status::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PlatformConfig < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdCreateParams::PlatformConfig,
              WhopSDK::Internal::AnyHash
            )
          end

        # Configuration for Meta (Facebook/Instagram) ads.
        sig do
          returns(T.nilable(WhopSDK::AdCreateParams::PlatformConfig::Meta))
        end
        attr_reader :meta

        sig do
          params(
            meta:
              T.nilable(WhopSDK::AdCreateParams::PlatformConfig::Meta::OrHash)
          ).void
        end
        attr_writer :meta

        # Configuration for TikTok ads.
        sig do
          returns(T.nilable(WhopSDK::AdCreateParams::PlatformConfig::Tiktok))
        end
        attr_reader :tiktok

        sig do
          params(
            tiktok:
              T.nilable(WhopSDK::AdCreateParams::PlatformConfig::Tiktok::OrHash)
          ).void
        end
        attr_writer :tiktok

        # Platform-specific configuration. Must match the campaign platform.
        sig do
          params(
            meta:
              T.nilable(WhopSDK::AdCreateParams::PlatformConfig::Meta::OrHash),
            tiktok:
              T.nilable(WhopSDK::AdCreateParams::PlatformConfig::Tiktok::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # Configuration for Meta (Facebook/Instagram) ads.
          meta: nil,
          # Configuration for TikTok ads.
          tiktok: nil
        )
        end

        sig do
          override.returns(
            {
              meta: T.nilable(WhopSDK::AdCreateParams::PlatformConfig::Meta),
              tiktok: T.nilable(WhopSDK::AdCreateParams::PlatformConfig::Tiktok)
            }
          )
        end
        def to_hash
        end

        class Meta < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCreateParams::PlatformConfig::Meta,
                WhopSDK::Internal::AnyHash
              )
            end

          # Call-to-action button type.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::OrSymbol
              )
            )
          end
          attr_accessor :call_to_action_type

          # Per-card carousel config.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Meta::CarouselCard
                ]
              )
            )
          end
          attr_accessor :carousel_cards

          # Description of the ad creative (legacy single-value).
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Up to 5 description variants, rendered via Meta asset_feed_spec.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :descriptions

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :existing_instagram_media_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :existing_post_id

          # Headline of the ad creative (legacy single-value).
          sig { returns(T.nilable(String)) }
          attr_accessor :headline

          # Up to 5 headline variants, rendered via Meta asset_feed_spec.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :headlines

          # Unique identifier of the Instagram account.
          sig { returns(T.nilable(String)) }
          attr_accessor :instagram_actor_id

          # Lead generation form configuration (JSON).
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :lead_form_config

          # Destination URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :link_url

          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment::OrSymbol
              )
            )
          end
          attr_accessor :multi_advertiser_enrollment

          # Ad name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Unique identifier of the Facebook Page.
          sig { returns(T.nilable(String)) }
          attr_accessor :page_id

          # Messenger welcome message / ice-breaker template (JSON).
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :page_welcome_message

          # Primary text of the ad creative (legacy single-value).
          sig { returns(T.nilable(String)) }
          attr_accessor :primary_text

          # Up to 5 primary-text variants, rendered via Meta asset_feed_spec.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :primary_texts

          # URL query parameters appended to the destination link.
          sig { returns(T.nilable(String)) }
          attr_accessor :url_tags

          # Configuration for Meta (Facebook/Instagram) ads.
          sig do
            params(
              call_to_action_type:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::OrSymbol
                ),
              carousel_cards:
                T.nilable(
                  T::Array[
                    WhopSDK::AdCreateParams::PlatformConfig::Meta::CarouselCard::OrHash
                  ]
                ),
              description: T.nilable(String),
              descriptions: T.nilable(T::Array[String]),
              existing_instagram_media_id: T.nilable(String),
              existing_post_id: T.nilable(String),
              headline: T.nilable(String),
              headlines: T.nilable(T::Array[String]),
              instagram_actor_id: T.nilable(String),
              lead_form_config: T.nilable(T::Hash[Symbol, T.anything]),
              link_url: T.nilable(String),
              multi_advertiser_enrollment:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment::OrSymbol
                ),
              name: T.nilable(String),
              page_id: T.nilable(String),
              page_welcome_message: T.nilable(T::Hash[Symbol, T.anything]),
              primary_text: T.nilable(String),
              primary_texts: T.nilable(T::Array[String]),
              url_tags: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Call-to-action button type.
            call_to_action_type: nil,
            # Per-card carousel config.
            carousel_cards: nil,
            # Description of the ad creative (legacy single-value).
            description: nil,
            # Up to 5 description variants, rendered via Meta asset_feed_spec.
            descriptions: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            existing_instagram_media_id: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            existing_post_id: nil,
            # Headline of the ad creative (legacy single-value).
            headline: nil,
            # Up to 5 headline variants, rendered via Meta asset_feed_spec.
            headlines: nil,
            # Unique identifier of the Instagram account.
            instagram_actor_id: nil,
            # Lead generation form configuration (JSON).
            lead_form_config: nil,
            # Destination URL.
            link_url: nil,
            multi_advertiser_enrollment: nil,
            # Ad name.
            name: nil,
            # Unique identifier of the Facebook Page.
            page_id: nil,
            # Messenger welcome message / ice-breaker template (JSON).
            page_welcome_message: nil,
            # Primary text of the ad creative (legacy single-value).
            primary_text: nil,
            # Up to 5 primary-text variants, rendered via Meta asset_feed_spec.
            primary_texts: nil,
            # URL query parameters appended to the destination link.
            url_tags: nil
          )
          end

          sig do
            override.returns(
              {
                call_to_action_type:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::OrSymbol
                  ),
                carousel_cards:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdCreateParams::PlatformConfig::Meta::CarouselCard
                    ]
                  ),
                description: T.nilable(String),
                descriptions: T.nilable(T::Array[String]),
                existing_instagram_media_id: T.nilable(String),
                existing_post_id: T.nilable(String),
                headline: T.nilable(String),
                headlines: T.nilable(T::Array[String]),
                instagram_actor_id: T.nilable(String),
                lead_form_config: T.nilable(T::Hash[Symbol, T.anything]),
                link_url: T.nilable(String),
                multi_advertiser_enrollment:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment::OrSymbol
                  ),
                name: T.nilable(String),
                page_id: T.nilable(String),
                page_welcome_message: T.nilable(T::Hash[Symbol, T.anything]),
                primary_text: T.nilable(String),
                primary_texts: T.nilable(T::Array[String]),
                url_tags: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Call-to-action button type.
          module CallToActionType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LEARN_MORE =
              T.let(
                :LEARN_MORE,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            SHOP_NOW =
              T.let(
                :SHOP_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            SIGN_UP =
              T.let(
                :SIGN_UP,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            SUBSCRIBE =
              T.let(
                :SUBSCRIBE,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            GET_STARTED =
              T.let(
                :GET_STARTED,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            BOOK_NOW =
              T.let(
                :BOOK_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            APPLY_NOW =
              T.let(
                :APPLY_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            CONTACT_US =
              T.let(
                :CONTACT_US,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            DOWNLOAD =
              T.let(
                :DOWNLOAD,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            ORDER_NOW =
              T.let(
                :ORDER_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            BUY_NOW =
              T.let(
                :BUY_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            GET_QUOTE =
              T.let(
                :GET_QUOTE,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            MESSAGE_PAGE =
              T.let(
                :MESSAGE_PAGE,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            WHATSAPP_MESSAGE =
              T.let(
                :WHATSAPP_MESSAGE,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            INSTAGRAM_MESSAGE =
              T.let(
                :INSTAGRAM_MESSAGE,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            CALL_NOW =
              T.let(
                :CALL_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            GET_DIRECTIONS =
              T.let(
                :GET_DIRECTIONS,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            SEND_UPDATES =
              T.let(
                :SEND_UPDATES,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            GET_OFFER =
              T.let(
                :GET_OFFER,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            WATCH_MORE =
              T.let(
                :WATCH_MORE,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            LISTEN_NOW =
              T.let(
                :LISTEN_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            PLAY_GAME =
              T.let(
                :PLAY_GAME,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            OPEN_LINK =
              T.let(
                :OPEN_LINK,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            NO_BUTTON =
              T.let(
                :NO_BUTTON,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            GET_OFFER_VIEW =
              T.let(
                :GET_OFFER_VIEW,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            GET_EVENT_TICKETS =
              T.let(
                :GET_EVENT_TICKETS,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            SEE_MENU =
              T.let(
                :SEE_MENU,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            REQUEST_TIME =
              T.let(
                :REQUEST_TIME,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            EVENT_RSVP =
              T.let(
                :EVENT_RSVP,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            SEE_DETAILS =
              T.let(
                :SEE_DETAILS,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )
            VIEW_INSTAGRAM_PROFILE =
              T.let(
                :VIEW_INSTAGRAM_PROFILE,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Meta::CallToActionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class CarouselCard < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdCreateParams::PlatformConfig::Meta::CarouselCard,
                  WhopSDK::Internal::AnyHash
                )
              end

            # CTA button type (e.g., SHOP_NOW, LEARN_MORE).
            sig { returns(T.nilable(String)) }
            attr_accessor :call_to_action_type

            # Card description (max 30 chars recommended).
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # Destination URL for this card (defaults to ad destination).
            sig { returns(T.nilable(String)) }
            attr_accessor :link

            # Card title (max 35 chars recommended).
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Per-card configuration for a carousel ad.
            sig do
              params(
                call_to_action_type: T.nilable(String),
                description: T.nilable(String),
                link: T.nilable(String),
                name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # CTA button type (e.g., SHOP_NOW, LEARN_MORE).
              call_to_action_type: nil,
              # Card description (max 30 chars recommended).
              description: nil,
              # Destination URL for this card (defaults to ad destination).
              link: nil,
              # Card title (max 35 chars recommended).
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  call_to_action_type: T.nilable(String),
                  description: T.nilable(String),
                  link: T.nilable(String),
                  name: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          module MultiAdvertiserEnrollment
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OPT_IN =
              T.let(
                :OPT_IN,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment::TaggedSymbol
              )
            OPT_OUT =
              T.let(
                :OPT_OUT,
                WhopSDK::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Meta::MultiAdvertiserEnrollment::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Tiktok < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok,
                WhopSDK::Internal::AnyHash
              )
            end

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :access_pass_tag

          # Ad format (SINGLE_IMAGE, SINGLE_VIDEO, CAROUSEL_ADS, CATALOG_CAROUSEL,
          # LIVE_CONTENT).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::OrSymbol
              )
            )
          end
          attr_accessor :ad_format

          # Ad name.
          sig { returns(T.nilable(String)) }
          attr_accessor :ad_name

          # Ad copy (single variant).
          sig { returns(T.nilable(String)) }
          attr_accessor :ad_text

          # Ad copy variants for search ads (up to 5).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :ad_texts

          # Whether the ad creative is AI-generated content. See docs/tiktok_api/ad.md §
          # aigc_disclosure_type.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType::OrSymbol
              )
            )
          end
          attr_accessor :aigc_disclosure_type

          # Automatic disclaimer categories (e.g., FINANCE, ALCOHOL).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :auto_disclaimer_types

          # Represents `true` or `false` values.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :automate_creative_enabled

          # Post-bid brand-safety vendor. See docs/tiktok_api/ad.md §
          # brand_safety_postbid_partner.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::OrSymbol
              )
            )
          end
          attr_accessor :brand_safety_postbid_partner

          # VAST URL for brand safety measurement.
          sig { returns(T.nilable(String)) }
          attr_accessor :brand_safety_vast_url

          # TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::OrSymbol
              )
            )
          end
          attr_accessor :call_to_action

          # Represents `true` or `false` values.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :call_to_action_enabled

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :call_to_action_id

          # How the call-to-action text is chosen. STANDARD uses a single fixed CTA; DYNAMIC
          # lets TikTok rotate through a set of CTAs to maximize performance.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode::OrSymbol
              )
            )
          end
          attr_accessor :call_to_action_mode

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :card_id

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :carousel_image_index

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :catalog_id

          # Third-party click tracker URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :click_tracking_url

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :cpp_url

          # Whether the creator has authorized the use of this creative for paid promotion
          # (Spark Ads).
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :creative_authorized

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :creative_auto_enhancement_strategy_list

          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus::OrSymbol
              )
            )
          end
          attr_accessor :dark_post_status

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :deeplink

          # How the ad's deeplink is resolved. See docs/tiktok_api/ad.md §
          # deeplink_format_type.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType::OrSymbol
              )
            )
          end
          attr_accessor :deeplink_format_type

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :deeplink_type

          # UTM params appended to the deeplink.
          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_accessor :deeplink_utm_params

          # Clickable disclaimer segments (text + url).
          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_accessor :disclaimer_clickable_texts

          # Plain text shown when disclaimer_type is DISCLAIMER_TEXT / DISCLAIMER_WITH_URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :disclaimer_text

          # Ad disclaimer mode. See docs/tiktok_api/ad.md § disclaimer_type.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType::OrSymbol
              )
            )
          end
          attr_accessor :disclaimer_type

          # Dynamic destination strategy for shopping ads.
          sig { returns(T.nilable(String)) }
          attr_accessor :dynamic_destination

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :dynamic_format

          # End-card CTA text for video ads.
          sig { returns(T.nilable(String)) }
          attr_accessor :end_card_cta

          # Destination fallback when a deferred deeplink cannot open the app. See
          # docs/tiktok_api/ad.md § fallback_type.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType::OrSymbol
              )
            )
          end
          attr_accessor :fallback_type

          # Business Center ID (required when identity_type is BC_AUTH_TT).
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_authorized_bc_id

          # Unique identifier of the identity.
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_id

          # Identity type.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType::OrSymbol
              )
            )
          end
          attr_accessor :identity_type

          # Unique identifiers of the images.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :image_ids

          # Third-party impression tracker URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :impression_tracking_url

          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus::OrSymbol
              )
            )
          end
          attr_accessor :item_duet_status

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :item_group_ids

          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus::OrSymbol
              )
            )
          end
          attr_accessor :item_stitch_status

          # Landing page URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :landing_page_url

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :link_url

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :music_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :page_id

          # Fields displayed on dynamic product cards.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :product_display_field_list

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_set_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_specific_type

          # Represents `true` or `false` values.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :promotional_music_disabled

          # Fallback destination for shopping ads when the primary target is unavailable.
          # See docs/tiktok_api/ad.md § shopping_ads_fallback_type.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType::OrSymbol
              )
            )
          end
          attr_accessor :shopping_ads_fallback_type

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :shopping_ads_video_package_id

          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_accessor :showcase_products

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :sku_ids

          # TikTok item ID for Spark Ads (promotes an organic post).
          sig { returns(T.nilable(String)) }
          attr_accessor :tiktok_item_id

          # TikTok MMP-tracked app ID.
          sig { returns(T.nilable(String)) }
          attr_accessor :tracking_app_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :tracking_message_event_set_id

          # Offline event set IDs for attribution.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tracking_offline_event_set_ids

          # TikTok pixel ID used for conversion tracking on this ad.
          sig { returns(T.nilable(String)) }
          attr_accessor :tracking_pixel_id

          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_accessor :utm_params

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :vertical_video_strategy

          # Unique identifier of the video.
          sig { returns(T.nilable(String)) }
          attr_accessor :video_id

          # Third-party video-view tracker URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :video_view_tracking_url

          # Post-bid viewability measurement partner. See docs/tiktok_api/ad.md §
          # viewability_postbid_partner.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner::OrSymbol
              )
            )
          end
          attr_accessor :viewability_postbid_partner

          # VAST URL for viewability measurement.
          sig { returns(T.nilable(String)) }
          attr_accessor :viewability_vast_url

          # Configuration for TikTok ads.
          sig do
            params(
              access_pass_tag: T.nilable(String),
              ad_format:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::OrSymbol
                ),
              ad_name: T.nilable(String),
              ad_text: T.nilable(String),
              ad_texts: T.nilable(T::Array[String]),
              aigc_disclosure_type:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType::OrSymbol
                ),
              auto_disclaimer_types: T.nilable(T::Array[String]),
              automate_creative_enabled: T.nilable(T::Boolean),
              brand_safety_postbid_partner:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::OrSymbol
                ),
              brand_safety_vast_url: T.nilable(String),
              call_to_action:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::OrSymbol
                ),
              call_to_action_enabled: T.nilable(T::Boolean),
              call_to_action_id: T.nilable(String),
              call_to_action_mode:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode::OrSymbol
                ),
              card_id: T.nilable(String),
              carousel_image_index: T.nilable(Integer),
              catalog_id: T.nilable(String),
              click_tracking_url: T.nilable(String),
              cpp_url: T.nilable(String),
              creative_authorized: T.nilable(T::Boolean),
              creative_auto_enhancement_strategy_list:
                T.nilable(T::Array[String]),
              dark_post_status:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus::OrSymbol
                ),
              deeplink: T.nilable(String),
              deeplink_format_type:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType::OrSymbol
                ),
              deeplink_type: T.nilable(String),
              deeplink_utm_params:
                T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
              disclaimer_clickable_texts:
                T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
              disclaimer_text: T.nilable(String),
              disclaimer_type:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType::OrSymbol
                ),
              dynamic_destination: T.nilable(String),
              dynamic_format: T.nilable(String),
              end_card_cta: T.nilable(String),
              fallback_type:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType::OrSymbol
                ),
              identity_authorized_bc_id: T.nilable(String),
              identity_id: T.nilable(String),
              identity_type:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType::OrSymbol
                ),
              image_ids: T.nilable(T::Array[String]),
              impression_tracking_url: T.nilable(String),
              item_duet_status:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus::OrSymbol
                ),
              item_group_ids: T.nilable(T::Array[String]),
              item_stitch_status:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus::OrSymbol
                ),
              landing_page_url: T.nilable(String),
              link_url: T.nilable(String),
              music_id: T.nilable(String),
              page_id: T.nilable(String),
              product_display_field_list: T.nilable(T::Array[String]),
              product_set_id: T.nilable(String),
              product_specific_type: T.nilable(String),
              promotional_music_disabled: T.nilable(T::Boolean),
              shopping_ads_fallback_type:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType::OrSymbol
                ),
              shopping_ads_video_package_id: T.nilable(String),
              showcase_products:
                T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
              sku_ids: T.nilable(T::Array[String]),
              tiktok_item_id: T.nilable(String),
              tracking_app_id: T.nilable(String),
              tracking_message_event_set_id: T.nilable(String),
              tracking_offline_event_set_ids: T.nilable(T::Array[String]),
              tracking_pixel_id: T.nilable(String),
              utm_params: T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
              vertical_video_strategy: T.nilable(String),
              video_id: T.nilable(String),
              video_view_tracking_url: T.nilable(String),
              viewability_postbid_partner:
                T.nilable(
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner::OrSymbol
                ),
              viewability_vast_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            access_pass_tag: nil,
            # Ad format (SINGLE_IMAGE, SINGLE_VIDEO, CAROUSEL_ADS, CATALOG_CAROUSEL,
            # LIVE_CONTENT).
            ad_format: nil,
            # Ad name.
            ad_name: nil,
            # Ad copy (single variant).
            ad_text: nil,
            # Ad copy variants for search ads (up to 5).
            ad_texts: nil,
            # Whether the ad creative is AI-generated content. See docs/tiktok_api/ad.md §
            # aigc_disclosure_type.
            aigc_disclosure_type: nil,
            # Automatic disclaimer categories (e.g., FINANCE, ALCOHOL).
            auto_disclaimer_types: nil,
            # Represents `true` or `false` values.
            automate_creative_enabled: nil,
            # Post-bid brand-safety vendor. See docs/tiktok_api/ad.md §
            # brand_safety_postbid_partner.
            brand_safety_postbid_partner: nil,
            # VAST URL for brand safety measurement.
            brand_safety_vast_url: nil,
            # TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
            call_to_action: nil,
            # Represents `true` or `false` values.
            call_to_action_enabled: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            call_to_action_id: nil,
            # How the call-to-action text is chosen. STANDARD uses a single fixed CTA; DYNAMIC
            # lets TikTok rotate through a set of CTAs to maximize performance.
            call_to_action_mode: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            card_id: nil,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            carousel_image_index: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            catalog_id: nil,
            # Third-party click tracker URL.
            click_tracking_url: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            cpp_url: nil,
            # Whether the creator has authorized the use of this creative for paid promotion
            # (Spark Ads).
            creative_authorized: nil,
            creative_auto_enhancement_strategy_list: nil,
            dark_post_status: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            deeplink: nil,
            # How the ad's deeplink is resolved. See docs/tiktok_api/ad.md §
            # deeplink_format_type.
            deeplink_format_type: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            deeplink_type: nil,
            # UTM params appended to the deeplink.
            deeplink_utm_params: nil,
            # Clickable disclaimer segments (text + url).
            disclaimer_clickable_texts: nil,
            # Plain text shown when disclaimer_type is DISCLAIMER_TEXT / DISCLAIMER_WITH_URL.
            disclaimer_text: nil,
            # Ad disclaimer mode. See docs/tiktok_api/ad.md § disclaimer_type.
            disclaimer_type: nil,
            # Dynamic destination strategy for shopping ads.
            dynamic_destination: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            dynamic_format: nil,
            # End-card CTA text for video ads.
            end_card_cta: nil,
            # Destination fallback when a deferred deeplink cannot open the app. See
            # docs/tiktok_api/ad.md § fallback_type.
            fallback_type: nil,
            # Business Center ID (required when identity_type is BC_AUTH_TT).
            identity_authorized_bc_id: nil,
            # Unique identifier of the identity.
            identity_id: nil,
            # Identity type.
            identity_type: nil,
            # Unique identifiers of the images.
            image_ids: nil,
            # Third-party impression tracker URL.
            impression_tracking_url: nil,
            item_duet_status: nil,
            item_group_ids: nil,
            item_stitch_status: nil,
            # Landing page URL.
            landing_page_url: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            link_url: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            music_id: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            page_id: nil,
            # Fields displayed on dynamic product cards.
            product_display_field_list: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            product_set_id: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            product_specific_type: nil,
            # Represents `true` or `false` values.
            promotional_music_disabled: nil,
            # Fallback destination for shopping ads when the primary target is unavailable.
            # See docs/tiktok_api/ad.md § shopping_ads_fallback_type.
            shopping_ads_fallback_type: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            shopping_ads_video_package_id: nil,
            showcase_products: nil,
            sku_ids: nil,
            # TikTok item ID for Spark Ads (promotes an organic post).
            tiktok_item_id: nil,
            # TikTok MMP-tracked app ID.
            tracking_app_id: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            tracking_message_event_set_id: nil,
            # Offline event set IDs for attribution.
            tracking_offline_event_set_ids: nil,
            # TikTok pixel ID used for conversion tracking on this ad.
            tracking_pixel_id: nil,
            utm_params: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            vertical_video_strategy: nil,
            # Unique identifier of the video.
            video_id: nil,
            # Third-party video-view tracker URL.
            video_view_tracking_url: nil,
            # Post-bid viewability measurement partner. See docs/tiktok_api/ad.md §
            # viewability_postbid_partner.
            viewability_postbid_partner: nil,
            # VAST URL for viewability measurement.
            viewability_vast_url: nil
          )
          end

          sig do
            override.returns(
              {
                access_pass_tag: T.nilable(String),
                ad_format:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::OrSymbol
                  ),
                ad_name: T.nilable(String),
                ad_text: T.nilable(String),
                ad_texts: T.nilable(T::Array[String]),
                aigc_disclosure_type:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType::OrSymbol
                  ),
                auto_disclaimer_types: T.nilable(T::Array[String]),
                automate_creative_enabled: T.nilable(T::Boolean),
                brand_safety_postbid_partner:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::OrSymbol
                  ),
                brand_safety_vast_url: T.nilable(String),
                call_to_action:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::OrSymbol
                  ),
                call_to_action_enabled: T.nilable(T::Boolean),
                call_to_action_id: T.nilable(String),
                call_to_action_mode:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode::OrSymbol
                  ),
                card_id: T.nilable(String),
                carousel_image_index: T.nilable(Integer),
                catalog_id: T.nilable(String),
                click_tracking_url: T.nilable(String),
                cpp_url: T.nilable(String),
                creative_authorized: T.nilable(T::Boolean),
                creative_auto_enhancement_strategy_list:
                  T.nilable(T::Array[String]),
                dark_post_status:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus::OrSymbol
                  ),
                deeplink: T.nilable(String),
                deeplink_format_type:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType::OrSymbol
                  ),
                deeplink_type: T.nilable(String),
                deeplink_utm_params:
                  T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
                disclaimer_clickable_texts:
                  T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
                disclaimer_text: T.nilable(String),
                disclaimer_type:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType::OrSymbol
                  ),
                dynamic_destination: T.nilable(String),
                dynamic_format: T.nilable(String),
                end_card_cta: T.nilable(String),
                fallback_type:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType::OrSymbol
                  ),
                identity_authorized_bc_id: T.nilable(String),
                identity_id: T.nilable(String),
                identity_type:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType::OrSymbol
                  ),
                image_ids: T.nilable(T::Array[String]),
                impression_tracking_url: T.nilable(String),
                item_duet_status:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus::OrSymbol
                  ),
                item_group_ids: T.nilable(T::Array[String]),
                item_stitch_status:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus::OrSymbol
                  ),
                landing_page_url: T.nilable(String),
                link_url: T.nilable(String),
                music_id: T.nilable(String),
                page_id: T.nilable(String),
                product_display_field_list: T.nilable(T::Array[String]),
                product_set_id: T.nilable(String),
                product_specific_type: T.nilable(String),
                promotional_music_disabled: T.nilable(T::Boolean),
                shopping_ads_fallback_type:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType::OrSymbol
                  ),
                shopping_ads_video_package_id: T.nilable(String),
                showcase_products:
                  T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
                sku_ids: T.nilable(T::Array[String]),
                tiktok_item_id: T.nilable(String),
                tracking_app_id: T.nilable(String),
                tracking_message_event_set_id: T.nilable(String),
                tracking_offline_event_set_ids: T.nilable(T::Array[String]),
                tracking_pixel_id: T.nilable(String),
                utm_params: T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
                vertical_video_strategy: T.nilable(String),
                video_id: T.nilable(String),
                video_view_tracking_url: T.nilable(String),
                viewability_postbid_partner:
                  T.nilable(
                    WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner::OrSymbol
                  ),
                viewability_vast_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Ad format (SINGLE_IMAGE, SINGLE_VIDEO, CAROUSEL_ADS, CATALOG_CAROUSEL,
          # LIVE_CONTENT).
          module AdFormat
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SINGLE_IMAGE =
              T.let(
                :SINGLE_IMAGE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::TaggedSymbol
              )
            SINGLE_VIDEO =
              T.let(
                :SINGLE_VIDEO,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::TaggedSymbol
              )
            CAROUSEL_ADS =
              T.let(
                :CAROUSEL_ADS,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::TaggedSymbol
              )
            CATALOG_CAROUSEL =
              T.let(
                :CATALOG_CAROUSEL,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::TaggedSymbol
              )
            LIVE_CONTENT =
              T.let(
                :LIVE_CONTENT,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AdFormat::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Whether the ad creative is AI-generated content. See docs/tiktok_api/ad.md §
          # aigc_disclosure_type.
          module AigcDisclosureType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSET =
              T.let(
                :UNSET,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType::TaggedSymbol
              )
            CONTAINS_AIGC =
              T.let(
                :CONTAINS_AIGC,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType::TaggedSymbol
              )
            IS_AIGC =
              T.let(
                :IS_AIGC,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType::TaggedSymbol
              )
            NOT_AIGC =
              T.let(
                :NOT_AIGC,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::AigcDisclosureType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Post-bid brand-safety vendor. See docs/tiktok_api/ad.md §
          # brand_safety_postbid_partner.
          module BrandSafetyPostbidPartner
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSET =
              T.let(
                :UNSET,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::TaggedSymbol
              )
            IAS =
              T.let(
                :IAS,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::TaggedSymbol
              )
            DOUBLE_VERIFY =
              T.let(
                :DOUBLE_VERIFY,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::TaggedSymbol
              )
            OPEN_SLATE =
              T.let(
                :OPEN_SLATE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::TaggedSymbol
              )
            ZEFR =
              T.let(
                :ZEFR,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::BrandSafetyPostbidPartner::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          module CallToAction
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LEARN_MORE =
              T.let(
                :LEARN_MORE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            DOWNLOAD =
              T.let(
                :DOWNLOAD,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            SHOP_NOW =
              T.let(
                :SHOP_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            SIGN_UP =
              T.let(
                :SIGN_UP,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            CONTACT_US =
              T.let(
                :CONTACT_US,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            APPLY_NOW =
              T.let(
                :APPLY_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            BOOK_NOW =
              T.let(
                :BOOK_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            PLAY_GAME =
              T.let(
                :PLAY_GAME,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            WATCH_NOW =
              T.let(
                :WATCH_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            READ_MORE =
              T.let(
                :READ_MORE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            VIEW_NOW =
              T.let(
                :VIEW_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            GET_QUOTE =
              T.let(
                :GET_QUOTE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            ORDER_NOW =
              T.let(
                :ORDER_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            INSTALL_NOW =
              T.let(
                :INSTALL_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            GET_SHOWTIMES =
              T.let(
                :GET_SHOWTIMES,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            LISTEN_NOW =
              T.let(
                :LISTEN_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            INTERESTED =
              T.let(
                :INTERESTED,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            SUBSCRIBE =
              T.let(
                :SUBSCRIBE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            GET_TICKETS_NOW =
              T.let(
                :GET_TICKETS_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            EXPERIENCE_NOW =
              T.let(
                :EXPERIENCE_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            PRE_ORDER_NOW =
              T.let(
                :PRE_ORDER_NOW,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )
            VISIT_STORE =
              T.let(
                :VISIT_STORE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToAction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # How the call-to-action text is chosen. STANDARD uses a single fixed CTA; DYNAMIC
          # lets TikTok rotate through a set of CTAs to maximize performance.
          module CallToActionMode
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :STANDARD,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode::TaggedSymbol
              )
            DYNAMIC =
              T.let(
                :DYNAMIC,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::CallToActionMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module DarkPostStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ON =
              T.let(
                :ON,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus::TaggedSymbol
              )
            OFF =
              T.let(
                :OFF,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DarkPostStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # How the ad's deeplink is resolved. See docs/tiktok_api/ad.md §
          # deeplink_format_type.
          module DeeplinkFormatType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSET =
              T.let(
                :UNSET,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType::TaggedSymbol
              )
            DEEPLINK =
              T.let(
                :DEEPLINK,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType::TaggedSymbol
              )
            DEFERRED_DEEPLINK =
              T.let(
                :DEFERRED_DEEPLINK,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DeeplinkFormatType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Ad disclaimer mode. See docs/tiktok_api/ad.md § disclaimer_type.
          module DisclaimerType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType::TaggedSymbol
              )
            DISCLAIMER_TEXT =
              T.let(
                :DISCLAIMER_TEXT,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType::TaggedSymbol
              )
            DISCLAIMER_WITH_URL =
              T.let(
                :DISCLAIMER_WITH_URL,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::DisclaimerType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Destination fallback when a deferred deeplink cannot open the app. See
          # docs/tiktok_api/ad.md § fallback_type.
          module FallbackType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSET =
              T.let(
                :UNSET,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType::TaggedSymbol
              )
            APP_STORE =
              T.let(
                :APP_STORE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType::TaggedSymbol
              )
            LANDING_PAGE =
              T.let(
                :LANDING_PAGE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::FallbackType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Identity type.
          module IdentityType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOMIZED_USER =
              T.let(
                :CUSTOMIZED_USER,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType::TaggedSymbol
              )
            AUTH_CODE =
              T.let(
                :AUTH_CODE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType::TaggedSymbol
              )
            TT_USER =
              T.let(
                :TT_USER,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType::TaggedSymbol
              )
            BC_AUTH_TT =
              T.let(
                :BC_AUTH_TT,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::IdentityType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ItemDuetStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :ENABLE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus::TaggedSymbol
              )
            DISABLE =
              T.let(
                :DISABLE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemDuetStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ItemStitchStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :ENABLE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus::TaggedSymbol
              )
            DISABLE =
              T.let(
                :DISABLE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ItemStitchStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Fallback destination for shopping ads when the primary target is unavailable.
          # See docs/tiktok_api/ad.md § shopping_ads_fallback_type.
          module ShoppingAdsFallbackType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSET =
              T.let(
                :UNSET,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType::TaggedSymbol
              )
            LANDING_PAGE =
              T.let(
                :LANDING_PAGE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType::TaggedSymbol
              )
            STORE =
              T.let(
                :STORE,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ShoppingAdsFallbackType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Post-bid viewability measurement partner. See docs/tiktok_api/ad.md §
          # viewability_postbid_partner.
          module ViewabilityPostbidPartner
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSET =
              T.let(
                :UNSET,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner::TaggedSymbol
              )
            IAS =
              T.let(
                :IAS,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner::TaggedSymbol
              )
            DOUBLE_VERIFY =
              T.let(
                :DOUBLE_VERIFY,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner::TaggedSymbol
              )
            MOAT =
              T.let(
                :MOAT,
                WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCreateParams::PlatformConfig::Tiktok::ViewabilityPostbidPartner::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # The status of an external ad.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdCreateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, WhopSDK::AdCreateParams::Status::TaggedSymbol)
        PAUSED = T.let(:paused, WhopSDK::AdCreateParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, WhopSDK::AdCreateParams::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, WhopSDK::AdCreateParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, WhopSDK::AdCreateParams::Status::TaggedSymbol)
        FLAGGED = T.let(:flagged, WhopSDK::AdCreateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCreateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

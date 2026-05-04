# typed: strong

module WhopSDK
  module Models
    class AdCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AdCreateResponse, WhopSDK::Internal::AnyHash)
        end

      # Unique identifier for the ad.
      sig { returns(String) }
      attr_accessor :id

      # When the ad was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The creative set used by this ad.
      sig do
        returns(
          T.nilable(WhopSDK::Models::AdCreateResponse::ExternalAdCreativeSet)
        )
      end
      attr_reader :external_ad_creative_set

      sig do
        params(
          external_ad_creative_set:
            T.nilable(
              WhopSDK::Models::AdCreateResponse::ExternalAdCreativeSet::OrHash
            )
        ).void
      end
      attr_writer :external_ad_creative_set

      # The parent ad group.
      sig { returns(WhopSDK::Models::AdCreateResponse::ExternalAdGroup) }
      attr_reader :external_ad_group

      sig do
        params(
          external_ad_group:
            WhopSDK::Models::AdCreateResponse::ExternalAdGroup::OrHash
        ).void
      end
      attr_writer :external_ad_group

      # Typed platform-specific configuration.
      sig do
        returns(
          T.nilable(WhopSDK::Models::AdCreateResponse::PlatformConfig::Variants)
        )
      end
      attr_accessor :platform_config

      # Current status of the ad.
      sig { returns(WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # When the ad was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An ad belonging to an ad group
      sig do
        params(
          id: String,
          created_at: Time,
          external_ad_creative_set:
            T.nilable(
              WhopSDK::Models::AdCreateResponse::ExternalAdCreativeSet::OrHash
            ),
          external_ad_group:
            WhopSDK::Models::AdCreateResponse::ExternalAdGroup::OrHash,
          platform_config:
            T.nilable(
              T.any(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::OrHash,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::OrHash
              )
            ),
          status: WhopSDK::Models::AdCreateResponse::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the ad.
        id:,
        # When the ad was created.
        created_at:,
        # The creative set used by this ad.
        external_ad_creative_set:,
        # The parent ad group.
        external_ad_group:,
        # Typed platform-specific configuration.
        platform_config:,
        # Current status of the ad.
        status:,
        # When the ad was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            external_ad_creative_set:
              T.nilable(
                WhopSDK::Models::AdCreateResponse::ExternalAdCreativeSet
              ),
            external_ad_group:
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup,
            platform_config:
              T.nilable(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::Variants
              ),
            status: WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class ExternalAdCreativeSet < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCreateResponse::ExternalAdCreativeSet,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the external ad creative set.
        sig { returns(String) }
        attr_accessor :id

        # The creative set used by this ad.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the external ad creative set.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class ExternalAdGroup < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the external ad group.
        sig { returns(String) }
        attr_accessor :id

        # Human-readable ad group name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Current operational status of the ad group
        sig do
          returns(
            WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The parent ad group.
        sig do
          params(
            id: String,
            name: T.nilable(String),
            status:
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the external ad group.
          id:,
          # Human-readable ad group name
          name:,
          # Current operational status of the ad group
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: T.nilable(String),
              status:
                WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Current operational status of the ad group
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
            )
          FLAGGED =
            T.let(
              :flagged,
              WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCreateResponse::ExternalAdGroup::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Typed platform-specific configuration.
      module PlatformConfig
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.nilable(
              T.any(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType
              )
            )
          end

        class MetaAdPlatformConfigType < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            )
          end
          attr_accessor :call_to_action_type

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :headline

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :instagram_actor_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :link_url

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :page_id

          # The ad platform.
          sig do
            returns(
              WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::Platform::TaggedSymbol
            )
          end
          attr_accessor :platform

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :primary_text

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :url_tags

          # Meta (Facebook/Instagram) ad configuration.
          sig do
            params(
              call_to_action_type:
                T.nilable(
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::OrSymbol
                ),
              headline: T.nilable(String),
              instagram_actor_id: T.nilable(String),
              link_url: T.nilable(String),
              name: T.nilable(String),
              page_id: T.nilable(String),
              platform:
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::Platform::OrSymbol,
              primary_text: T.nilable(String),
              url_tags: T.nilable(String),
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            call_to_action_type:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            headline:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            instagram_actor_id:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            link_url:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            name:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            page_id:,
            # The ad platform.
            platform:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            primary_text:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            url_tags:,
            # The typename of this object
            typename: :MetaAdPlatformConfigType
          )
          end

          sig do
            override.returns(
              {
                call_to_action_type:
                  T.nilable(
                    WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
                  ),
                headline: T.nilable(String),
                instagram_actor_id: T.nilable(String),
                link_url: T.nilable(String),
                name: T.nilable(String),
                page_id: T.nilable(String),
                platform:
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::Platform::TaggedSymbol,
                primary_text: T.nilable(String),
                typename: Symbol,
                url_tags: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module CallToActionType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LEARN_MORE =
              T.let(
                :LEARN_MORE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            SHOP_NOW =
              T.let(
                :SHOP_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            SIGN_UP =
              T.let(
                :SIGN_UP,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            SUBSCRIBE =
              T.let(
                :SUBSCRIBE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            GET_STARTED =
              T.let(
                :GET_STARTED,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            BOOK_NOW =
              T.let(
                :BOOK_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            APPLY_NOW =
              T.let(
                :APPLY_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            CONTACT_US =
              T.let(
                :CONTACT_US,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            DOWNLOAD =
              T.let(
                :DOWNLOAD,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            ORDER_NOW =
              T.let(
                :ORDER_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            BUY_NOW =
              T.let(
                :BUY_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            GET_QUOTE =
              T.let(
                :GET_QUOTE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            MESSAGE_PAGE =
              T.let(
                :MESSAGE_PAGE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            WHATSAPP_MESSAGE =
              T.let(
                :WHATSAPP_MESSAGE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            INSTAGRAM_MESSAGE =
              T.let(
                :INSTAGRAM_MESSAGE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            CALL_NOW =
              T.let(
                :CALL_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            GET_DIRECTIONS =
              T.let(
                :GET_DIRECTIONS,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            SEND_UPDATES =
              T.let(
                :SEND_UPDATES,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            GET_OFFER =
              T.let(
                :GET_OFFER,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            WATCH_MORE =
              T.let(
                :WATCH_MORE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            LISTEN_NOW =
              T.let(
                :LISTEN_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            PLAY_GAME =
              T.let(
                :PLAY_GAME,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            OPEN_LINK =
              T.let(
                :OPEN_LINK,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            NO_BUTTON =
              T.let(
                :NO_BUTTON,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            GET_OFFER_VIEW =
              T.let(
                :GET_OFFER_VIEW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            GET_EVENT_TICKETS =
              T.let(
                :GET_EVENT_TICKETS,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            SEE_MENU =
              T.let(
                :SEE_MENU,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            REQUEST_TIME =
              T.let(
                :REQUEST_TIME,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )
            EVENT_RSVP =
              T.let(
                :EVENT_RSVP,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::CallToActionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The ad platform.
          module Platform
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            META =
              T.let(
                :meta,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::Platform::TaggedSymbol
              )
            TIKTOK =
              T.let(
                :tiktok,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::MetaAdPlatformConfigType::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class TiktokAdPlatformConfigType < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::TaggedSymbol
              )
            )
          end
          attr_accessor :ad_format

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :ad_name

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :ad_text

          # TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            )
          end
          attr_accessor :call_to_action

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_authorized_bc_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_id

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType::TaggedSymbol
              )
            )
          end
          attr_accessor :identity_type

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :image_ids

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :landing_page_url

          # The ad platform.
          sig do
            returns(
              WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform::TaggedSymbol
            )
          end
          attr_accessor :platform

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :video_id

          # TikTok ad configuration.
          sig do
            params(
              ad_format:
                T.nilable(
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::OrSymbol
                ),
              ad_name: T.nilable(String),
              ad_text: T.nilable(String),
              call_to_action:
                T.nilable(
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::OrSymbol
                ),
              identity_authorized_bc_id: T.nilable(String),
              identity_id: T.nilable(String),
              identity_type:
                T.nilable(
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType::OrSymbol
                ),
              image_ids: T.nilable(T::Array[String]),
              landing_page_url: T.nilable(String),
              platform:
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform::OrSymbol,
              video_id: T.nilable(String),
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            ad_format:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            ad_name:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            ad_text:,
            # TikTok call-to-action button text. See docs/tiktok_api/ad.md § call_to_action.
            call_to_action:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            identity_authorized_bc_id:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            identity_id:,
            identity_type:,
            image_ids:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            landing_page_url:,
            # The ad platform.
            platform:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            video_id:,
            # The typename of this object
            typename: :TiktokAdPlatformConfigType
          )
          end

          sig do
            override.returns(
              {
                ad_format:
                  T.nilable(
                    WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::TaggedSymbol
                  ),
                ad_name: T.nilable(String),
                ad_text: T.nilable(String),
                call_to_action:
                  T.nilable(
                    WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
                  ),
                identity_authorized_bc_id: T.nilable(String),
                identity_id: T.nilable(String),
                identity_type:
                  T.nilable(
                    WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType::TaggedSymbol
                  ),
                image_ids: T.nilable(T::Array[String]),
                landing_page_url: T.nilable(String),
                platform:
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform::TaggedSymbol,
                typename: Symbol,
                video_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module AdFormat
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SINGLE_IMAGE =
              T.let(
                :SINGLE_IMAGE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::TaggedSymbol
              )
            SINGLE_VIDEO =
              T.let(
                :SINGLE_VIDEO,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::TaggedSymbol
              )
            CAROUSEL_ADS =
              T.let(
                :CAROUSEL_ADS,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::TaggedSymbol
              )
            CATALOG_CAROUSEL =
              T.let(
                :CATALOG_CAROUSEL,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::TaggedSymbol
              )
            LIVE_CONTENT =
              T.let(
                :LIVE_CONTENT,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::AdFormat::TaggedSymbol
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
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LEARN_MORE =
              T.let(
                :LEARN_MORE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            DOWNLOAD =
              T.let(
                :DOWNLOAD,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            SHOP_NOW =
              T.let(
                :SHOP_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            SIGN_UP =
              T.let(
                :SIGN_UP,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            CONTACT_US =
              T.let(
                :CONTACT_US,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            APPLY_NOW =
              T.let(
                :APPLY_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            BOOK_NOW =
              T.let(
                :BOOK_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            PLAY_GAME =
              T.let(
                :PLAY_GAME,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            WATCH_NOW =
              T.let(
                :WATCH_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            READ_MORE =
              T.let(
                :READ_MORE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            VIEW_NOW =
              T.let(
                :VIEW_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            GET_QUOTE =
              T.let(
                :GET_QUOTE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            ORDER_NOW =
              T.let(
                :ORDER_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            INSTALL_NOW =
              T.let(
                :INSTALL_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            GET_SHOWTIMES =
              T.let(
                :GET_SHOWTIMES,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            LISTEN_NOW =
              T.let(
                :LISTEN_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            INTERESTED =
              T.let(
                :INTERESTED,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            SUBSCRIBE =
              T.let(
                :SUBSCRIBE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            GET_TICKETS_NOW =
              T.let(
                :GET_TICKETS_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            EXPERIENCE_NOW =
              T.let(
                :EXPERIENCE_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            PRE_ORDER_NOW =
              T.let(
                :PRE_ORDER_NOW,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )
            VISIT_STORE =
              T.let(
                :VISIT_STORE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::CallToAction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module IdentityType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOMIZED_USER =
              T.let(
                :CUSTOMIZED_USER,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType::TaggedSymbol
              )
            AUTH_CODE =
              T.let(
                :AUTH_CODE,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType::TaggedSymbol
              )
            TT_USER =
              T.let(
                :TT_USER,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType::TaggedSymbol
              )
            BC_AUTH_TT =
              T.let(
                :BC_AUTH_TT,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::IdentityType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The ad platform.
          module Platform
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            META =
              T.let(
                :meta,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform::TaggedSymbol
              )
            TIKTOK =
              T.let(
                :tiktok,
                WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdCreateResponse::PlatformConfig::TiktokAdPlatformConfigType::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCreateResponse::PlatformConfig::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # Current status of the ad.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCreateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AdCreateResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

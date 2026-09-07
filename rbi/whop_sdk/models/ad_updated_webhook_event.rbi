# typed: strong

module WhopSDK
  module Models
    class AdUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdUpdatedWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      sig { returns(WhopSDK::AdUpdatedWebhookEvent::Data) }
      attr_reader :data

      sig { params(data: WhopSDK::AdUpdatedWebhookEvent::Data::OrHash).void }
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::AdUpdatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"ad.updated"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::AdUpdatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdUpdatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the ad, prefixed `ad_`.
        sig { returns(String) }
        attr_accessor :id

        # The ad campaign this ad belongs to.
        sig { returns(WhopSDK::AdUpdatedWebhookEvent::Data::AdCampaign) }
        attr_reader :ad_campaign

        sig do
          params(
            ad_campaign:
              WhopSDK::AdUpdatedWebhookEvent::Data::AdCampaign::OrHash
          ).void
        end
        attr_writer :ad_campaign

        # The ad group this ad belongs to.
        sig { returns(WhopSDK::AdUpdatedWebhookEvent::Data::AdGroup) }
        attr_reader :ad_group

        sig do
          params(
            ad_group: WhopSDK::AdUpdatedWebhookEvent::Data::AdGroup::OrHash
          ).void
        end
        attr_writer :ad_group

        # The call-to-action button shown on the ad.
        sig do
          returns(
            T.nilable(
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          )
        end
        attr_accessor :call_to_action

        # When the ad was created, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        sig do
          returns(T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::Creative])
        end
        attr_accessor :creatives

        # Whether the ad is delivering right now, and if not, why. When several states
        # apply at once, the highest-precedence one is returned.
        sig do
          returns(
            WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
          )
        end
        attr_accessor :delivery_status

        sig { returns(T::Array[String]) }
        attr_accessor :descriptions

        # The post you pointed this ad at, when it promotes one you already published — a
        # Facebook post, Instagram media, or TikTok video ID. `null` when the ad uses
        # uploaded creatives.
        sig { returns(T.nilable(String)) }
        attr_accessor :existing_post_id

        sig { returns(T::Array[String]) }
        attr_accessor :headlines

        sig { returns(T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::Issue]) }
        attr_accessor :issues

        # The post the ad network serves for this ad, as `pageID_postID` on Meta — the
        # post Meta created for an uploaded creative, or the post being promoted. Use it
        # to open the live post, or to promote the same post from another ad. `null` until
        # the network has created the post.
        sig { returns(T.nilable(String)) }
        attr_accessor :post_id

        # Identifies the network that owns `existing_post_id`; `null` when the ad uses
        # uploaded creatives.
        sig do
          returns(
            T.nilable(
              WhopSDK::AdUpdatedWebhookEvent::Data::PostSource::TaggedSymbol
            )
          )
        end
        attr_accessor :post_source

        # Preview image of the post named by `existing_post_id`. `null` for ads that use
        # uploaded creatives, or until the post's media has been fetched from the network.
        sig { returns(T.nilable(String)) }
        attr_accessor :post_thumbnail_url

        sig { returns(T::Array[String]) }
        attr_accessor :primary_texts

        sig do
          returns(T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::SocialAccount])
        end
        attr_accessor :social_accounts

        # Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
        # `rejected` come from ad review.
        sig do
          returns(WhopSDK::AdUpdatedWebhookEvent::Data::Status::TaggedSymbol)
        end
        attr_accessor :status

        # Display title of the ad.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

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

        # The instant lead form shown when someone taps this ad. `null` when the ad
        # group's conversion_location is not an instant-form destination.
        sig do
          returns(T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm))
        end
        attr_reader :lead_form

        sig do
          params(
            lead_form:
              T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::OrHash)
          ).void
        end
        attr_writer :lead_form

        # The ad platform's ID for the instant form the ad uses. Set when the ad
        # references an existing form via `lead_form_id`, or once a form built from
        # `lead_form` has been created on the platform.
        sig { returns(T.nilable(String)) }
        attr_accessor :lead_form_id

        # Welcome message for click-to-message ads, shown when the conversation opens.
        # `null` when the ad has none.
        sig do
          returns(
            T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::MessagingConfig)
          )
        end
        attr_reader :messaging_config

        sig do
          params(
            messaging_config:
              T.nilable(
                WhopSDK::AdUpdatedWebhookEvent::Data::MessagingConfig::OrHash
              )
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
        sig { returns(T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::Music)) }
        attr_reader :music

        sig do
          params(
            music:
              T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::Music::OrHash)
          ).void
        end
        attr_writer :music

        sig do
          params(
            id: String,
            ad_campaign:
              WhopSDK::AdUpdatedWebhookEvent::Data::AdCampaign::OrHash,
            ad_group: WhopSDK::AdUpdatedWebhookEvent::Data::AdGroup::OrHash,
            call_to_action:
              T.nilable(
                WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::OrSymbol
              ),
            created_at: String,
            creatives:
              T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::Creative::OrHash],
            delivery_status:
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::OrSymbol,
            descriptions: T::Array[String],
            existing_post_id: T.nilable(String),
            headlines: T::Array[String],
            issues:
              T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::Issue::OrHash],
            post_id: T.nilable(String),
            post_source:
              T.nilable(
                WhopSDK::AdUpdatedWebhookEvent::Data::PostSource::OrSymbol
              ),
            post_thumbnail_url: T.nilable(String),
            primary_texts: T::Array[String],
            social_accounts:
              T::Array[
                WhopSDK::AdUpdatedWebhookEvent::Data::SocialAccount::OrHash
              ],
            status: WhopSDK::AdUpdatedWebhookEvent::Data::Status::OrSymbol,
            title: T.nilable(String),
            updated_at: String,
            url: T.nilable(String),
            url_parameters: T.anything,
            lead_form:
              T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::OrHash),
            lead_form_id: T.nilable(String),
            messaging_config:
              T.nilable(
                WhopSDK::AdUpdatedWebhookEvent::Data::MessagingConfig::OrHash
              ),
            multi_advertiser_ads: T::Boolean,
            music:
              T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::Music::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the ad, prefixed `ad_`.
          id:,
          # The ad campaign this ad belongs to.
          ad_campaign:,
          # The ad group this ad belongs to.
          ad_group:,
          # The call-to-action button shown on the ad.
          call_to_action:,
          # When the ad was created, as an ISO 8601 timestamp.
          created_at:,
          creatives:,
          # Whether the ad is delivering right now, and if not, why. When several states
          # apply at once, the highest-precedence one is returned.
          delivery_status:,
          descriptions:,
          # The post you pointed this ad at, when it promotes one you already published — a
          # Facebook post, Instagram media, or TikTok video ID. `null` when the ad uses
          # uploaded creatives.
          existing_post_id:,
          headlines:,
          issues:,
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
          social_accounts:,
          # Whether the ad is enabled. `active` and `paused` are set by you; `in_review` and
          # `rejected` come from ad review.
          status:,
          # Display title of the ad.
          title:,
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
              ad_campaign: WhopSDK::AdUpdatedWebhookEvent::Data::AdCampaign,
              ad_group: WhopSDK::AdUpdatedWebhookEvent::Data::AdGroup,
              call_to_action:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
                ),
              created_at: String,
              creatives:
                T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::Creative],
              delivery_status:
                WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol,
              descriptions: T::Array[String],
              existing_post_id: T.nilable(String),
              headlines: T::Array[String],
              issues: T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::Issue],
              post_id: T.nilable(String),
              post_source:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::PostSource::TaggedSymbol
                ),
              post_thumbnail_url: T.nilable(String),
              primary_texts: T::Array[String],
              social_accounts:
                T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::SocialAccount],
              status:
                WhopSDK::AdUpdatedWebhookEvent::Data::Status::TaggedSymbol,
              title: T.nilable(String),
              updated_at: String,
              url: T.nilable(String),
              url_parameters: T.anything,
              lead_form:
                T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm),
              lead_form_id: T.nilable(String),
              messaging_config:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::MessagingConfig
                ),
              multi_advertiser_ads: T::Boolean,
              music: T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::Music)
            }
          )
        end
        def to_hash
        end

        class AdCampaign < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdUpdatedWebhookEvent::Data::AdCampaign,
                WhopSDK::Internal::AnyHash
              )
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
              T.any(
                WhopSDK::AdUpdatedWebhookEvent::Data::AdGroup,
                WhopSDK::Internal::AnyHash
              )
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

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEARN_MORE =
            T.let(
              :learn_more,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          SHOP_NOW =
            T.let(
              :shop_now,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          SIGN_UP =
            T.let(
              :sign_up,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          SUBSCRIBE =
            T.let(
              :subscribe,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          GET_STARTED =
            T.let(
              :get_started,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          BOOK_NOW =
            T.let(
              :book_now,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          APPLY_NOW =
            T.let(
              :apply_now,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          CONTACT_US =
            T.let(
              :contact_us,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          DOWNLOAD =
            T.let(
              :download,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          ORDER_NOW =
            T.let(
              :order_now,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          BUY_NOW =
            T.let(
              :buy_now,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          GET_QUOTE =
            T.let(
              :get_quote,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          MESSAGE_PAGE =
            T.let(
              :message_page,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          WHATSAPP_MESSAGE =
            T.let(
              :whatsapp_message,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          INSTAGRAM_MESSAGE =
            T.let(
              :instagram_message,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          CALL_NOW =
            T.let(
              :call_now,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          GET_DIRECTIONS =
            T.let(
              :get_directions,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          SEND_UPDATES =
            T.let(
              :send_updates,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          GET_OFFER =
            T.let(
              :get_offer,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          WATCH_MORE =
            T.let(
              :watch_more,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          LISTEN_NOW =
            T.let(
              :listen_now,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          PLAY_GAME =
            T.let(
              :play_game,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          OPEN_LINK =
            T.let(
              :open_link,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          NO_BUTTON =
            T.let(
              :no_button,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          GET_OFFER_VIEW =
            T.let(
              :get_offer_view,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          GET_EVENT_TICKETS =
            T.let(
              :get_event_tickets,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          SEE_MENU =
            T.let(
              :see_menu,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          REQUEST_TIME =
            T.let(
              :request_time,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          EVENT_RSVP =
            T.let(
              :event_rsvp,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          SEE_DETAILS =
            T.let(
              :see_details,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )
          VIEW_INSTAGRAM_PROFILE =
            T.let(
              :view_instagram_profile,
              WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdUpdatedWebhookEvent::Data::CallToAction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Creative < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdUpdatedWebhookEvent::Data::Creative,
                WhopSDK::Internal::AnyHash
              )
            end

          # The creative attachment's file id.
          sig { returns(String) }
          attr_accessor :id

          # The saved crop window for this creative, in source image pixels. Null for the
          # original asset or a format that has not been cropped.
          sig do
            returns(
              T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Crop)
            )
          end
          attr_reader :crop

          sig do
            params(
              crop:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Crop::OrHash
                )
            ).void
          end
          attr_writer :crop

          # The placement variant this asset covers, or null for the original asset.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format::TaggedSymbol
              )
            )
          end
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
              crop:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Crop::OrHash
                ),
              format_:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format::OrSymbol
                ),
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
                crop:
                  T.nilable(
                    WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Crop
                  ),
                format_:
                  T.nilable(
                    WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format::TaggedSymbol
                  ),
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
                T.any(
                  WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Crop,
                  WhopSDK::Internal::AnyHash
                )
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
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SQUARE =
              T.let(
                :square,
                WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format::TaggedSymbol
              )
            VERTICAL =
              T.let(
                :vertical,
                WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format::TaggedSymbol
              )
            HORIZONTAL =
              T.let(
                :horizontal,
                WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdUpdatedWebhookEvent::Data::Creative::Format::TaggedSymbol
                ]
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
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REJECTED =
            T.let(
              :rejected,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          DRAFT =
            T.let(
              :draft,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          CAMPAIGN_PAUSED =
            T.let(
              :campaign_paused,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          AD_GROUP_PAUSED =
            T.let(
              :ad_group_paused,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          ISSUES =
            T.let(
              :issues,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          LEARNING_LIMITED =
            T.let(
              :learning_limited,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          LEARNING =
            T.let(
              :learning,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Issue < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdUpdatedWebhookEvent::Data::Issue,
                WhopSDK::Internal::AnyHash
              )
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
          sig do
            returns(
              WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
            )
          end
          attr_accessor :resource_type

          # Open issues affecting this ad. Empty when there are none.
          sig do
            params(
              id: String,
              message: String,
              resource_id: T.nilable(String),
              resource_type:
                WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType::OrSymbol
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
                resource_type:
                  WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
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
                T.all(
                  Symbol,
                  WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AD_CAMPAIGN =
              T.let(
                :ad_campaign,
                WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
              )
            AD_GROUP =
              T.let(
                :ad_group,
                WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
              )
            AD =
              T.let(
                :ad,
                WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
                ]
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

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdUpdatedWebhookEvent::Data::PostSource)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FACEBOOK =
            T.let(
              :facebook,
              WhopSDK::AdUpdatedWebhookEvent::Data::PostSource::TaggedSymbol
            )
          INSTAGRAM =
            T.let(
              :instagram,
              WhopSDK::AdUpdatedWebhookEvent::Data::PostSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdUpdatedWebhookEvent::Data::PostSource::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SocialAccount < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdUpdatedWebhookEvent::Data::SocialAccount,
                WhopSDK::Internal::AnyHash
              )
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

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdUpdatedWebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::AdUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::AdUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              WhopSDK::AdUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              WhopSDK::AdUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdUpdatedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class LeadForm < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm,
                WhopSDK::Internal::AnyHash
              )
            end

          # Screen shown after the form is submitted. `null` when the form uses the default.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Completion
              )
            )
          end
          attr_reader :completion

          sig do
            params(
              completion:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Completion::OrHash
                )
            ).void
          end
          attr_writer :completion

          # Custom consent disclaimer shown before submission. `null` when the form has
          # none.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer
              )
            )
          end
          attr_reader :disclaimer

          sig do
            params(
              disclaimer:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::OrHash
                )
            ).void
          end
          attr_writer :disclaimer

          # `more_volume` is quickest to submit; `higher_intent` adds a confirmation step
          # before submission.
          sig do
            returns(
              WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::FormType::TaggedSymbol
            )
          end
          attr_accessor :form_type

          # Intro screen shown before the questions. `null` when the form has none.
          sig do
            returns(
              T.nilable(WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Intro)
            )
          end
          attr_reader :intro

          sig do
            params(
              intro:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Intro::OrHash
                )
            ).void
          end
          attr_writer :intro

          # Internal name of the form.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Whether the phone number must be verified by SMS before submitting.
          sig { returns(T::Boolean) }
          attr_accessor :phone_verification

          # Your privacy policy, linked from the form. `null` when unset.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::PrivacyPolicy
              )
            )
          end
          attr_reader :privacy_policy

          sig do
            params(
              privacy_policy:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::PrivacyPolicy::OrHash
                )
            ).void
          end
          attr_writer :privacy_policy

          sig do
            returns(
              T::Array[WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question]
            )
          end
          attr_accessor :questions

          # The instant lead form shown when someone taps this ad. `null` when the ad
          # group's conversion_location is not an instant-form destination.
          sig do
            params(
              completion:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Completion::OrHash
                ),
              disclaimer:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::OrHash
                ),
              form_type:
                WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::FormType::OrSymbol,
              intro:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Intro::OrHash
                ),
              name: T.nilable(String),
              phone_verification: T::Boolean,
              privacy_policy:
                T.nilable(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::PrivacyPolicy::OrHash
                ),
              questions:
                T::Array[
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::OrHash
                ]
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
                completion:
                  T.nilable(
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Completion
                  ),
                disclaimer:
                  T.nilable(
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer
                  ),
                form_type:
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::FormType::TaggedSymbol,
                intro:
                  T.nilable(
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Intro
                  ),
                name: T.nilable(String),
                phone_verification: T::Boolean,
                privacy_policy:
                  T.nilable(
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::PrivacyPolicy
                  ),
                questions:
                  T::Array[
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question
                  ]
              }
            )
          end
          def to_hash
          end

          class Completion < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Completion,
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
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Disclaimer text.
            sig { returns(T.nilable(String)) }
            attr_accessor :body

            sig do
              returns(
                T::Array[
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::Checkbox
                ]
              )
            end
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
                  T::Array[
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::Checkbox::OrHash
                  ],
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
                    T::Array[
                      WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::Checkbox
                    ],
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
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Disclaimer::Checkbox,
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
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::FormType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MORE_VOLUME =
              T.let(
                :more_volume,
                WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::FormType::TaggedSymbol
              )
            HIGHER_INTENT =
              T.let(
                :higher_intent,
                WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::FormType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::FormType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Intro < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Intro,
                  WhopSDK::Internal::AnyHash
                )
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
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::PrivacyPolicy,
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
                T.any(
                  WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question,
                  WhopSDK::Internal::AnyHash
                )
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
                T.nilable(
                  T::Array[
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option
                  ]
                )
              )
            end
            attr_reader :options

            sig do
              params(
                options:
                  T::Array[
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::OrHash
                  ]
              ).void
            end
            attr_writer :options

            # Questions on the form, in order.
            sig do
              params(
                type: String,
                format_: String,
                label: String,
                options:
                  T::Array[
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::OrHash
                  ]
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
                  options:
                    T::Array[
                      WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option
                    ]
                }
              )
            end
            def to_hash
            end

            class Option < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option,
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
                returns(
                  T.nilable(
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic
                  )
                )
              end
              attr_reader :logic

              sig do
                params(
                  logic:
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::OrHash
                ).void
              end
              attr_writer :logic

              # Choices for `multiple_choice` questions. Absent for other formats.
              sig do
                params(
                  value: String,
                  key: T.nilable(String),
                  logic:
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::OrHash
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
                    logic:
                      WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic
                  }
                )
              end
              def to_hash
              end

              class Logic < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # What happens when the choice is selected.
                sig do
                  returns(
                    WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action::TaggedSymbol
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
                      WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action::OrSymbol,
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
                        WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action::TaggedSymbol,
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
                        WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  GO_TO_QUESTION =
                    T.let(
                      :go_to_question,
                      WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                    )
                  SUBMIT_FORM =
                    T.let(
                      :submit_form,
                      WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                    )
                  CLOSE_FORM =
                    T.let(
                      :close_form,
                      WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        WhopSDK::AdUpdatedWebhookEvent::Data::LeadForm::Question::Option::Logic::Action::TaggedSymbol
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
              T.any(
                WhopSDK::AdUpdatedWebhookEvent::Data::MessagingConfig,
                WhopSDK::Internal::AnyHash
              )
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
            T.type_alias do
              T.any(
                WhopSDK::AdUpdatedWebhookEvent::Data::Music,
                WhopSDK::Internal::AnyHash
              )
            end

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
end

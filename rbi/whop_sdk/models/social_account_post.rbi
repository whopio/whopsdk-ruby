# typed: strong

module WhopSDK
  module Models
    class SocialAccountPost < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::SocialAccountPost, WhopSDK::Internal::AnyHash)
        end

      # The platform's own identifier for the post or media. Use it to reference the
      # post on an ad.
      sig { returns(String) }
      attr_accessor :id

      # The post's call-to-action button, for example shop_now (Facebook only; null for
      # Instagram).
      sig do
        returns(
          T.nilable(WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol)
        )
      end
      attr_accessor :call_to_action

      # The URL the post's call-to-action drives to (Facebook only; null for Instagram).
      sig { returns(T.nilable(String)) }
      attr_accessor :destination_url

      # The URL of the post's media — the image for image posts, the playable video file
      # for video posts. Meta signs these and they expire after roughly 24 hours, so
      # don't store them.
      sig { returns(T.nilable(String)) }
      attr_accessor :media_url

      # Poster image for video posts; null for image posts, where media_url is already
      # the image. Signed and short-lived like media_url.
      sig { returns(T.nilable(String)) }
      attr_accessor :thumbnail_url

      sig do
        params(
          id: String,
          call_to_action:
            T.nilable(WhopSDK::SocialAccountPost::CallToAction::OrSymbol),
          destination_url: T.nilable(String),
          media_url: T.nilable(String),
          thumbnail_url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The platform's own identifier for the post or media. Use it to reference the
        # post on an ad.
        id:,
        # The post's call-to-action button, for example shop_now (Facebook only; null for
        # Instagram).
        call_to_action:,
        # The URL the post's call-to-action drives to (Facebook only; null for Instagram).
        destination_url:,
        # The URL of the post's media — the image for image posts, the playable video file
        # for video posts. Meta signs these and they expire after roughly 24 hours, so
        # don't store them.
        media_url:,
        # Poster image for video posts; null for image posts, where media_url is already
        # the image. Signed and short-lived like media_url.
        thumbnail_url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            call_to_action:
              T.nilable(WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol),
            destination_url: T.nilable(String),
            media_url: T.nilable(String),
            thumbnail_url: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The post's call-to-action button, for example shop_now (Facebook only; null for
      # Instagram).
      module CallToAction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SocialAccountPost::CallToAction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEARN_MORE =
          T.let(
            :learn_more,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        SHOP_NOW =
          T.let(
            :shop_now,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        SIGN_UP =
          T.let(
            :sign_up,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        SUBSCRIBE =
          T.let(
            :subscribe,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        GET_STARTED =
          T.let(
            :get_started,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        BOOK_NOW =
          T.let(
            :book_now,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        APPLY_NOW =
          T.let(
            :apply_now,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        CONTACT_US =
          T.let(
            :contact_us,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        DOWNLOAD =
          T.let(
            :download,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        ORDER_NOW =
          T.let(
            :order_now,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        BUY_NOW =
          T.let(
            :buy_now,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        GET_QUOTE =
          T.let(
            :get_quote,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        MESSAGE_PAGE =
          T.let(
            :message_page,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        WHATSAPP_MESSAGE =
          T.let(
            :whatsapp_message,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        INSTAGRAM_MESSAGE =
          T.let(
            :instagram_message,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        CALL_NOW =
          T.let(
            :call_now,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        GET_DIRECTIONS =
          T.let(
            :get_directions,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        SEND_UPDATES =
          T.let(
            :send_updates,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        GET_OFFER =
          T.let(
            :get_offer,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        WATCH_MORE =
          T.let(
            :watch_more,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        LISTEN_NOW =
          T.let(
            :listen_now,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        PLAY_GAME =
          T.let(
            :play_game,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        OPEN_LINK =
          T.let(
            :open_link,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        NO_BUTTON =
          T.let(
            :no_button,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        GET_OFFER_VIEW =
          T.let(
            :get_offer_view,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        GET_EVENT_TICKETS =
          T.let(
            :get_event_tickets,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        SEE_MENU =
          T.let(
            :see_menu,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        REQUEST_TIME =
          T.let(
            :request_time,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        EVENT_RSVP =
          T.let(
            :event_rsvp,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        SEE_DETAILS =
          T.let(
            :see_details,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )
        VIEW_INSTAGRAM_PROFILE =
          T.let(
            :view_instagram_profile,
            WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SocialAccountPost::CallToAction::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

# frozen_string_literal: true

module WhopSDK
  module Models
    class SocialAccountPost < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The platform's own identifier for the post or media. Use it to reference the
      #   post on an ad.
      #
      #   @return [String]
      required :id, String

      # @!attribute call_to_action
      #   The post's call-to-action button, for example shop_now (Facebook only; null for
      #   Instagram).
      #
      #   @return [Symbol, WhopSDK::Models::SocialAccountPost::CallToAction, nil]
      required :call_to_action, enum: -> { WhopSDK::SocialAccountPost::CallToAction }, nil?: true

      # @!attribute destination_url
      #   The URL the post's call-to-action drives to (Facebook only; null for Instagram).
      #
      #   @return [String, nil]
      required :destination_url, String, nil?: true

      # @!attribute media_url
      #   The URL of the post's media — the image for image posts, the playable video file
      #   for video posts. Meta signs these and they expire after roughly 24 hours, so
      #   don't store them.
      #
      #   @return [String, nil]
      required :media_url, String, nil?: true

      # @!attribute thumbnail_url
      #   Poster image for video posts; null for image posts, where media_url is already
      #   the image. Signed and short-lived like media_url.
      #
      #   @return [String, nil]
      required :thumbnail_url, String, nil?: true

      # @!method initialize(id:, call_to_action:, destination_url:, media_url:, thumbnail_url:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SocialAccountPost} for more details.
      #
      #   @param id [String] The platform's own identifier for the post or media. Use it to reference the pos
      #
      #   @param call_to_action [Symbol, WhopSDK::Models::SocialAccountPost::CallToAction, nil] The post's call-to-action button, for example shop_now (Facebook only; null for
      #
      #   @param destination_url [String, nil] The URL the post's call-to-action drives to (Facebook only; null for Instagram).
      #
      #   @param media_url [String, nil] The URL of the post's media — the image for image posts, the playable video file
      #
      #   @param thumbnail_url [String, nil] Poster image for video posts; null for image posts, where media_url is already t

      # The post's call-to-action button, for example shop_now (Facebook only; null for
      # Instagram).
      #
      # @see WhopSDK::Models::SocialAccountPost#call_to_action
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
    end
  end
end

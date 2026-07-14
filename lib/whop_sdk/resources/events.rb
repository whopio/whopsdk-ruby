# frozen_string_literal: true

module WhopSDK
  module Resources
    # An Event records conversion or engagement activity for an account, such as page
    # views, purchases, or leads. Each event ties the action to the
    # [person](/api-reference/beta/people/person) who took it, so activity can be
    # attributed to the ads and links that drove it.
    #
    # Use the Events API to send new tracking events and list the events recorded for
    # a person.
    class Events
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::EventCreateParams} for more details.
      #
      # Tracks a conversion or engagement event for an account.
      #
      # @overload create(account_id:, event_name:, action_source: nil, context: nil, currency: nil, custom_name: nil, duration: nil, event_id: nil, event_time: nil, plan_id: nil, product_id: nil, referrer_url: nil, resumed: nil, source: nil, title: nil, url: nil, user: nil, value: nil, request_options: {})
      #
      # @param account_id [String] The account to associate with this event.
      #
      # @param event_name [Symbol, WhopSDK::Models::EventCreateParams::EventName] The type of conversion or engagement event
      #
      # @param action_source [Symbol, WhopSDK::Models::EventCreateParams::ActionSource, nil] The channel where an event originated
      #
      # @param context [WhopSDK::Models::EventCreateParams::Context, nil] Tracking and attribution context.
      #
      # @param currency [Symbol, WhopSDK::Models::EventCreateParams::Currency, nil] The available currencies on the platform
      #
      # @param custom_name [String, nil] Custom event name when event_name is 'custom'. Maximum 35 chars for this value.
      #
      # @param duration [Integer, nil] For 'leave' events: milliseconds the visitor spent on the page.
      #
      # @param event_id [String, nil] Client-provided identifier for deduplication. Generated if omitted.
      #
      # @param event_time [Time, nil] When the event occurred. Defaults to now.
      #
      # @param plan_id [String, nil] The plan associated with the event.
      #
      # @param product_id [String, nil] The product associated with the event.
      #
      # @param referrer_url [String, nil] The referring URL.
      #
      # @param resumed [Boolean, nil] For 'page' events: true when the page was restored from the back/forward cache.
      #
      # @param source [String, nil] For 'identify' events: where the identity was captured (url, form, manual, ifram
      #
      # @param title [String, nil] For 'page' events: the document title.
      #
      # @param url [String, nil] The URL where the event occurred.
      #
      # @param user [WhopSDK::Models::EventCreateParams::User, nil] User identity and profile data.
      #
      # @param value [Float, nil] Monetary value associated with the event.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::EventCreateResponse]
      #
      # @see WhopSDK::Models::EventCreateParams
      def create(params)
        parsed, options = WhopSDK::EventCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "events",
          body: parsed,
          model: WhopSDK::Models::EventCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::EventListParams} for more details.
      #
      # Lists pixel events for a person, most recent first. Events are shaped like the
      # POST /events intake: attribution in context, identity in user.
      #
      # @overload list(person_id:, account_id: nil, after: nil, before: nil, first: nil, from: nil, to: nil, request_options: {})
      #
      # @param person_id [String] The ID of the person.
      #
      # @param account_id [String] The ID of the account, which will look like biz\_******\*******. Optional for
      # acco
      #
      # @param after [String] A cursor for fetching events after a previous page.
      #
      # @param before [String] A cursor for fetching events before a later page.
      #
      # @param first [Integer] The number of events to return.
      #
      # @param from [Integer] Start of the time range as a Unix timestamp.
      #
      # @param to [Integer] End of the time range as a Unix timestamp. Defaults to now.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::EventListResponse>]
      #
      # @see WhopSDK::Models::EventListParams
      def list(params)
        parsed, options = WhopSDK::EventListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "events",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::EventListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

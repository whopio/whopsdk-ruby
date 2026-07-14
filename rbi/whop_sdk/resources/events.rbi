# typed: strong

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
      # Tracks a conversion or engagement event for an account.
      sig do
        params(
          account_id: String,
          event_name: WhopSDK::EventCreateParams::EventName::OrSymbol,
          action_source:
            T.nilable(WhopSDK::EventCreateParams::ActionSource::OrSymbol),
          context: T.nilable(WhopSDK::EventCreateParams::Context::OrHash),
          currency: T.nilable(WhopSDK::EventCreateParams::Currency::OrSymbol),
          custom_name: T.nilable(String),
          duration: T.nilable(Integer),
          event_id: T.nilable(String),
          event_time: T.nilable(Time),
          plan_id: T.nilable(String),
          product_id: T.nilable(String),
          referrer_url: T.nilable(String),
          resumed: T.nilable(T::Boolean),
          source: T.nilable(String),
          title: T.nilable(String),
          url: T.nilable(String),
          user: T.nilable(WhopSDK::EventCreateParams::User::OrHash),
          value: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::EventCreateResponse)
      end
      def create(
        # The account to associate with this event.
        account_id:,
        # The type of conversion or engagement event
        event_name:,
        # The channel where an event originated
        action_source: nil,
        # Tracking and attribution context.
        context: nil,
        # The available currencies on the platform
        currency: nil,
        # Custom event name when event_name is 'custom'. Maximum 35 chars for this value.
        custom_name: nil,
        # For 'leave' events: milliseconds the visitor spent on the page.
        duration: nil,
        # Client-provided identifier for deduplication. Generated if omitted.
        event_id: nil,
        # When the event occurred. Defaults to now.
        event_time: nil,
        # The plan associated with the event.
        plan_id: nil,
        # The product associated with the event.
        product_id: nil,
        # The referring URL.
        referrer_url: nil,
        # For 'page' events: true when the page was restored from the back/forward cache.
        resumed: nil,
        # For 'identify' events: where the identity was captured (url, form, manual,
        # iframe).
        source: nil,
        # For 'page' events: the document title.
        title: nil,
        # The URL where the event occurred.
        url: nil,
        # User identity and profile data.
        user: nil,
        # Monetary value associated with the event.
        value: nil,
        request_options: {}
      )
      end

      # Lists pixel events for a person, most recent first. Events are shaped like the
      # POST /events intake: attribution in context, identity in user.
      sig do
        params(
          person_id: String,
          account_id: String,
          after: String,
          before: String,
          first: Integer,
          from: Integer,
          to: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::EventListResponse]
        )
      end
      def list(
        # The ID of the person.
        person_id:,
        # The ID of the account, which will look like biz\_******\*******. Optional for
        # account API keys; required for credentials that can access multiple accounts.
        account_id: nil,
        # A cursor for fetching events after a previous page.
        after: nil,
        # A cursor for fetching events before a later page.
        before: nil,
        # The number of events to return.
        first: nil,
        # Start of the time range as a Unix timestamp.
        from: nil,
        # End of the time range as a Unix timestamp. Defaults to now.
        to: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

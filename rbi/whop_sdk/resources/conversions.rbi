# typed: strong

module WhopSDK
  module Resources
    # Conversions
    class Conversions
      # Track a conversion or engagement event for a company.
      #
      # Required permissions:
      #
      # - `event:create`
      sig do
        params(
          company_id: String,
          event_name: WhopSDK::ConversionCreateParams::EventName::OrSymbol,
          action_source:
            T.nilable(WhopSDK::ConversionCreateParams::ActionSource::OrSymbol),
          context: T.nilable(WhopSDK::ConversionCreateParams::Context::OrHash),
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_name: T.nilable(String),
          event_id: T.nilable(String),
          event_time: T.nilable(Time),
          plan_id: T.nilable(String),
          product_id: T.nilable(String),
          referrer_url: T.nilable(String),
          url: T.nilable(String),
          user: T.nilable(WhopSDK::ConversionCreateParams::User::OrHash),
          value: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::ConversionCreateResponse)
      end
      def create(
        # The company to associate with this event.
        company_id:,
        # The type of event.
        event_name:,
        # The channel where an event originated
        action_source: nil,
        # Tracking and attribution context.
        context: nil,
        # The available currencies on the platform
        currency: nil,
        # Custom event name when event_name is 'custom'.
        custom_name: nil,
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
        # The URL where the event occurred.
        url: nil,
        # User identity and profile data.
        user: nil,
        # Monetary value associated with the event.
        value: nil,
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

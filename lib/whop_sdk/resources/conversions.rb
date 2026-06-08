# frozen_string_literal: true

module WhopSDK
  module Resources
    # Conversions
    class Conversions
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ConversionCreateParams} for more details.
      #
      # Track a conversion or engagement event for a company.
      #
      # Required permissions:
      #
      # - `event:create`
      #
      # @overload create(company_id:, event_name:, action_source: nil, context: nil, currency: nil, custom_name: nil, duration: nil, event_id: nil, event_time: nil, plan_id: nil, product_id: nil, referrer_url: nil, resumed: nil, source: nil, title: nil, url: nil, user: nil, value: nil, request_options: {})
      #
      # @param company_id [String] The company to associate with this event.
      #
      # @param event_name [Symbol, WhopSDK::Models::ConversionCreateParams::EventName] The type of event.
      #
      # @param action_source [Symbol, WhopSDK::Models::ConversionCreateParams::ActionSource, nil] The channel where an event originated
      #
      # @param context [WhopSDK::Models::ConversionCreateParams::Context, nil] Tracking and attribution context.
      #
      # @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      # @param custom_name [String, nil] Custom event name when event_name is 'custom'. Stored as-is; forwarded to Meta C
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
      # @param user [WhopSDK::Models::ConversionCreateParams::User, nil] User identity and profile data.
      #
      # @param value [Float, nil] Monetary value associated with the event.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ConversionCreateResponse]
      #
      # @see WhopSDK::Models::ConversionCreateParams
      def create(params)
        parsed, options = WhopSDK::ConversionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "conversions",
          body: parsed,
          model: WhopSDK::Models::ConversionCreateResponse,
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

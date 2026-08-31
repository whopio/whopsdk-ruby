# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Checkout Configuration is a reusable checkout link owned by an account. In
    # `payment` mode it sells a specific plan; in `setup` mode it collects and saves
    # payment details without charging. Each configuration can also override which
    # payment methods are accepted and how 3D Secure is enforced for that checkout.
    #
    # Use the Checkout Configurations API to create checkout links for an existing or
    # inline plan, list configurations for an account, retrieve the configuration
    # behind a checkout URL, and delete links that should no longer be used.
    class CheckoutConfigurations
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CheckoutConfigurationCreateParams} for more details.
      #
      # Creates a reusable checkout configuration for an existing or inline plan.
      #
      # @overload create(account_id: nil, affiliate_code: nil, currency: nil, metadata: nil, mode: nil, payment_method_configuration: nil, plan: nil, plan_id: nil, redirect_url: nil, three_ds_level: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param account_id [String] Body param: Account ID, prefixed `biz_`.
      #
      # @param affiliate_code [String, nil] Body param: Affiliate code to apply to the checkout.
      #
      # @param currency [String, nil] Body param: Currency used for setup-mode payment method availability.
      #
      # @param metadata [Object, nil] Body param: Custom key-value metadata copied to payments and memberships.
      #
      # @param mode [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Mode] Body param: Controls whether checkout charges the buyer immediately or saves pay
      #
      # @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration, nil] Body param: Payment method overrides for this checkout. `null` uses the plan or
      #
      # @param plan [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan, nil] Body param: Plan attributes used to create or find a plan for this checkout conf
      #
      # @param plan_id [String, nil] Body param: Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
      #
      # @param redirect_url [String, nil] Body param: URL customers are sent to after checkout.
      #
      # @param three_ds_level [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::ThreeDSLevel, nil] Body param: 3D Secure behavior for this checkout.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CheckoutConfigurationCreateResponse]
      #
      # @see WhopSDK::Models::CheckoutConfigurationCreateParams
      def create(params = {})
        parsed, options = WhopSDK::CheckoutConfigurationCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "checkout_configurations",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Models::CheckoutConfigurationCreateResponse,
          options: options
        )
      end

      # Retrieves a checkout configuration by ID. This endpoint is public so a checkout
      # page can load from the configuration URL.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The ID of the checkout configuration.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CheckoutConfigurationRetrieveResponse]
      #
      # @see WhopSDK::Models::CheckoutConfigurationRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::CheckoutConfigurationRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["checkout_configurations/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::CheckoutConfigurationRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CheckoutConfigurationListParams} for more details.
      #
      # Lists checkout configurations for an account.
      #
      # @overload list(account_id:, after: nil, created_after: nil, created_before: nil, direction: nil, first: nil, order: nil, plan_id: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Account ID, prefixed `biz_`.
      #
      # @param after [String] Query param: Cursor for the next page of results.
      #
      # @param created_after [String] Query param: Only return checkout configurations created after this ISO 8601 tim
      #
      # @param created_before [String] Query param: Only return checkout configurations created before this ISO 8601 ti
      #
      # @param direction [Symbol, WhopSDK::Models::CheckoutConfigurationListParams::Direction] Query param: Sort direction. Defaults to `desc`.
      #
      # @param first [Integer] Query param: Number of checkout configurations to return.
      #
      # @param order [Symbol, WhopSDK::Models::CheckoutConfigurationListParams::Order] Query param: Field used to sort checkout configurations.
      #
      # @param plan_id [String] Query param: Only return checkout configurations for this plan ID, prefixed `pla
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CheckoutConfigurationListResponse>]
      #
      # @see WhopSDK::Models::CheckoutConfigurationListParams
      def list(params)
        query_params =
          [:account_id, :after, :created_after, :created_before, :direction, :first, :order, :plan_id]
        parsed, options = WhopSDK::CheckoutConfigurationListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "checkout_configurations",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CheckoutConfigurationListResponse,
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

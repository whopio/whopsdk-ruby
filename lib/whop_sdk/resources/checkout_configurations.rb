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
      # @overload create(affiliate_code: nil, company_id: nil, currency: nil, metadata: nil, mode: nil, payment_method_configuration: nil, plan: nil, plan_id: nil, redirect_url: nil, three_ds_level: nil, request_options: {})
      #
      # @param affiliate_code [String, nil] Affiliate code to apply to the checkout.
      #
      # @param company_id [String] Account ID, prefixed `biz_`.
      #
      # @param currency [String, nil] Currency used for setup-mode payment method availability.
      #
      # @param metadata [Object, nil] Custom key-value metadata copied to payments and memberships.
      #
      # @param mode [Symbol, WhopSDK::Models::CheckoutConfigurationCreateParams::Mode] Checkout mode: `payment` collects payment for a plan now; `setup` saves payment
      #
      # @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration, nil] Payment method overrides for this checkout. `null` uses the plan or platform def
      #
      # @param plan [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan, nil] Plan attributes used to create or find a plan for this checkout configuration. M
      #
      # @param plan_id [String, nil] Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
      #
      # @param redirect_url [String, nil] URL customers are sent to after checkout.
      #
      # @param three_ds_level [String, nil] 3D Secure behavior for this checkout.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CheckoutConfigurationCreateResponse]
      #
      # @see WhopSDK::Models::CheckoutConfigurationCreateParams
      def create(params = {})
        parsed, options = WhopSDK::CheckoutConfigurationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "checkout_configurations",
          body: parsed,
          model: WhopSDK::Models::CheckoutConfigurationCreateResponse,
          options: options
        )
      end

      # Retrieves a checkout configuration by ID. This endpoint is public so a checkout
      # page can load from the configuration URL.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the checkout configuration.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CheckoutConfigurationRetrieveResponse]
      #
      # @see WhopSDK::Models::CheckoutConfigurationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["checkout_configurations/%1$s", id],
          model: WhopSDK::Models::CheckoutConfigurationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists checkout configurations for an account.
      #
      # @overload list(company_id:, after: nil, created_after: nil, created_before: nil, direction: nil, first: nil, order: nil, plan_id: nil, request_options: {})
      #
      # @param company_id [String] Account ID, prefixed `biz_`.
      #
      # @param after [String] Cursor for the next page of results.
      #
      # @param created_after [Integer] Only return checkout configurations created after this Unix timestamp.
      #
      # @param created_before [Integer] Only return checkout configurations created before this Unix timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::CheckoutConfigurationListParams::Direction] Sort direction. Defaults to `desc`.
      #
      # @param first [Integer] Number of checkout configurations to return.
      #
      # @param order [Symbol, WhopSDK::Models::CheckoutConfigurationListParams::Order] Field used to sort checkout configurations.
      #
      # @param plan_id [String] Only return checkout configurations for this plan ID, prefixed `plan_`.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CheckoutConfigurationListResponse>]
      #
      # @see WhopSDK::Models::CheckoutConfigurationListParams
      def list(params)
        parsed, options = WhopSDK::CheckoutConfigurationListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "checkout_configurations",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CheckoutConfigurationListResponse,
          options: options
        )
      end

      # Deletes a checkout configuration so its checkout URL can no longer be used.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the checkout configuration.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see WhopSDK::Models::CheckoutConfigurationDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["checkout_configurations/%1$s", id],
          model: NilClass,
          options: params[:request_options]
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

# frozen_string_literal: true

module WhopSDK
  module Resources
    class CheckoutConfigurations
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CheckoutConfigurationCreateParams} for more details.
      #
      # Creates a new checkout configuration
      #
      # Required permissions:
      #
      # - `checkout_configuration:create`
      # - `plan:create`
      # - `access_pass:create`
      # - `access_pass:update`
      # - `checkout_configuration:basic:read`
      #
      # @overload create(plan:, plan_id:, company_id:, affiliate_code: nil, metadata: nil, payment_method_configuration: nil, redirect_url: nil, mode: :setup, request_options: {})
      #
      # @param plan [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan] Pass this object to create a new plan for this checkout configuration
      #
      # @param plan_id [String] The ID of the plan to use for the checkout configuration
      #
      # @param company_id [String] The ID of the company for which to generate the checkout configuration. Only req
      #
      # @param affiliate_code [String, nil] The affiliate code to use for the checkout configuration
      #
      # @param metadata [Hash{Symbol=>Object}, nil] The metadata to use for the checkout configuration
      #
      # @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration, nil] This currently only works for configurations made in 'setup' mode. The explicit
      #
      # @param redirect_url [String, nil] The URL to redirect the user to after the checkout configuration is created
      #
      # @param mode [Symbol, :setup]
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CheckoutConfiguration]
      #
      # @see WhopSDK::Models::CheckoutConfigurationCreateParams
      def create(params)
        parsed, options = WhopSDK::CheckoutConfigurationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "checkout_configurations",
          body: parsed,
          model: WhopSDK::CheckoutConfiguration,
          options: options
        )
      end

      # Retrieves a checkout configuration by ID
      #
      # Required permissions:
      #
      # - `checkout_configuration:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the checkout configuration
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CheckoutConfiguration]
      #
      # @see WhopSDK::Models::CheckoutConfigurationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["checkout_configurations/%1$s", id],
          model: WhopSDK::CheckoutConfiguration,
          options: params[:request_options]
        )
      end

      # Lists checkout configurations
      #
      # Required permissions:
      #
      # - `checkout_configuration:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, plan_id: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list checkout configurations for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param plan_id [String, nil] The ID of the plan to filter checkout configurations by
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CheckoutConfigurationListResponse>]
      #
      # @see WhopSDK::Models::CheckoutConfigurationListParams
      def list(params)
        parsed, options = WhopSDK::CheckoutConfigurationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "checkout_configurations",
          query: parsed,
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

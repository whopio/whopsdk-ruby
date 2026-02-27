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
      # @overload create(plan:, plan_id:, company_id:, affiliate_code: nil, currency: nil, metadata: nil, payment_method_configuration: nil, redirect_url: nil, source_url: nil, mode: :setup, request_options: {})
      #
      # @param plan [WhopSDK::Models::CheckoutConfigurationCreateParams::Plan] The plan attributes to create a new plan inline for this checkout configuration.
      #
      # @param plan_id [String] The unique identifier of an existing plan to use for this checkout configuration
      #
      # @param company_id [String] The unique identifier of the company to create the checkout configuration for. O
      #
      # @param affiliate_code [String, nil] An affiliate tracking code to attribute the checkout to a specific affiliate.
      #
      # @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Custom key-value metadata to attach to the checkout configuration.
      #
      # @param payment_method_configuration [WhopSDK::Models::CheckoutConfigurationCreateParams::PaymentMethodConfiguration, nil] The explicit payment method configuration for the checkout session. Only applies
      #
      # @param redirect_url [String, nil] The URL to redirect the user to after checkout is completed.
      #
      # @param source_url [String, nil] The URL of the page where the checkout is being initiated from.
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

      # Retrieves the details of an existing checkout configuration.
      #
      # Required permissions:
      #
      # - `checkout_configuration:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the checkout configuration.
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CheckoutConfigurationListParams} for more details.
      #
      # Returns a paginated list of checkout configurations for a company, with optional
      # filtering by plan and creation date.
      #
      # Required permissions:
      #
      # - `checkout_configuration:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, plan_id: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list checkout configurations for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return checkout configurations created after this timestamp.
      #
      # @param created_before [Time, nil] Only return checkout configurations created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param plan_id [String, nil] Filter checkout configurations to only those associated with this plan identifie
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

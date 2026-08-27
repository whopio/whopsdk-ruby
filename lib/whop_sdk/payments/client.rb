# frozen_string_literal: true

module Whop_sdk
  module Payments
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of payments for the actor in context, with optional filtering by product, plan, status,
      # billing reason, currency, and creation date.
      #
      # Required permissions:
      #  - `payment:basic:read`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `member:email:read`
      #  - `member:basic:read`
      #  - `member:phone:read`
      #  - `promo_code:basic:read`
      #  - `shipment:basic:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :after
      # @option params [String, nil] :before
      # @option params [Integer, nil] :first
      # @option params [Integer, nil] :last
      # @option params [String, nil] :company_id
      # @option params [Whop_sdk::Types::Direction, nil] :direction
      # @option params [Whop_sdk::Types::ReceiptV2Order, nil] :order
      # @option params [String, nil] :product_ids
      # @option params [Whop_sdk::Types::BillingReasons, nil] :billing_reasons
      # @option params [Whop_sdk::Types::Currencies, nil] :currencies
      # @option params [String, nil] :plan_ids
      # @option params [Whop_sdk::Types::ReceiptStatus, nil] :statuses
      # @option params [Whop_sdk::Types::FriendlyReceiptStatus, nil] :substatuses
      # @option params [Boolean, nil] :include_free
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [String, nil] :updated_before
      # @option params [String, nil] :updated_after
      # @option params [String, nil] :query
      # @option params [String, nil] :checkout_configuration_ids
      #
      # @example
      #   client.payments.list(
      #     first: 42,
      #     last: 42,
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     created_before: "2023-12-01T05:00:00Z",
      #     created_after: "2023-12-01T05:00:00Z",
      #     updated_before: "2023-12-01T05:00:00Z",
      #     updated_after: "2023-12-01T05:00:00Z"
      #   )
      #
      # @return [Whop_sdk::Payments::Types::ListPaymentsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["company_id"] = params[:company_id] if params.key?(:company_id)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["product_ids"] = params[:product_ids] if params.key?(:product_ids)
        query_params["billing_reasons"] = params[:billing_reasons] if params.key?(:billing_reasons)
        query_params["currencies"] = params[:currencies] if params.key?(:currencies)
        query_params["plan_ids"] = params[:plan_ids] if params.key?(:plan_ids)
        query_params["statuses"] = params[:statuses] if params.key?(:statuses)
        query_params["substatuses"] = params[:substatuses] if params.key?(:substatuses)
        query_params["include_free"] = params[:include_free] if params.key?(:include_free)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["updated_before"] = params[:updated_before] if params.key?(:updated_before)
        query_params["updated_after"] = params[:updated_after] if params.key?(:updated_after)
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["checkout_configuration_ids"] = params[:checkout_configuration_ids] if params.key?(:checkout_configuration_ids)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "payments",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Whop_sdk::Payments::Types::ListPaymentsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Charge an existing member off-session using one of their stored payment methods. You can provide an existing
      # plan, or create a new one in-line. This endpoint will respond with a payment object immediately, but the payment
      # is processed asynchronously in the background. Use webhooks to be notified when the payment succeeds or fails.
      #
      # Required permissions:
      #  - `payment:charge`
      #  - `plan:create`
      #  - `access_pass:create`
      #  - `access_pass:update`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `member:email:read`
      #  - `member:basic:read`
      #  - `member:phone:read`
      #  - `promo_code:basic:read`
      #  - `shipment:basic:read`
      #  - `payment:dispute:read`
      #  - `payment:resolution_center_case:read`
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Payments::Types::CreatePaymentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.payments.create(
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     confirmation_token: "confirmation_token",
      #     plan: {
      #       currency: "usd"
      #     }
      #   )
      #
      # @return [Whop_sdk::Payments::Types::CreatePaymentsResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "payments",
          body: Whop_sdk::Payments::Types::CreatePaymentsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Payments::Types::CreatePaymentsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the details of an existing payment.
      #
      # Required permissions:
      #  - `payment:basic:read`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `member:email:read`
      #  - `member:basic:read`
      #  - `member:phone:read`
      #  - `promo_code:basic:read`
      #  - `shipment:basic:read`
      #  - `payment:dispute:read`
      #  - `payment:resolution_center_case:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.payments.retrieve(id: "pay_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Payments::Types::RetrievePaymentsResponse]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "payments/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Payments::Types::RetrievePaymentsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Captures the full amount of a card payment created with `capture: false`. The payment must still be in
      # `requires_capture` before `capture_expires_at`. Partial capture, multiple captures, capturing more than the
      # authorized amount, and tips are not supported.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.payments.capture(id: "id")
      #
      # @return [Whop_sdk::Types::PaymentStatus]
      def capture(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "payments/#{URI.encode_uri_component(params[:id].to_s)}/capture",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PaymentStatus.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the list of fees associated with a specific payment, including platform fees and processing fees.
      #
      # Required permissions:
      #  - `payment:basic:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :after
      # @option params [String, nil] :before
      # @option params [Integer, nil] :first
      # @option params [Integer, nil] :last
      #
      # @example
      #   client.payments.list_fees(
      #     id: "pay_xxxxxxxxxxxxxx",
      #     first: 42,
      #     last: 42
      #   )
      #
      # @return [Whop_sdk::Payments::Types::ListFeesPaymentsResponse]
      def list_fees(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["last"] = params[:last] if params.key?(:last)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "payments/#{URI.encode_uri_component(params[:id].to_s)}/fees",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Whop_sdk::Payments::Types::ListFeesPaymentsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Issue a full or partial refund for a payment. The refund is processed through the original payment processor and
      # the membership status is updated accordingly.
      #
      # Required permissions:
      #  - `payment:manage`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `member:email:read`
      #  - `member:basic:read`
      #  - `member:phone:read`
      #  - `promo_code:basic:read`
      #  - `shipment:basic:read`
      #  - `payment:dispute:read`
      #  - `payment:resolution_center_case:read`
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Payments::Types::RefundPaymentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.payments.refund(id: "pay_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::Payment]
      def refund(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Payments::Types::RefundPaymentsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "payments/#{URI.encode_uri_component(params[:id].to_s)}/refund",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Payment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retry a failed or pending payment. This re-attempts the charge using the original payment method and plan
      # details.
      #
      # Required permissions:
      #  - `payment:manage`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `member:email:read`
      #  - `member:basic:read`
      #  - `member:phone:read`
      #  - `promo_code:basic:read`
      #  - `shipment:basic:read`
      #  - `payment:dispute:read`
      #  - `payment:resolution_center_case:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.payments.retry_(id: "pay_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::Payment]
      def retry_(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "payments/#{URI.encode_uri_component(params[:id].to_s)}/retry",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Payment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Void a payment that has not yet been settled. Voiding cancels the payment before it is captured by the payment
      # processor.
      #
      # Required permissions:
      #  - `payment:manage`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `member:email:read`
      #  - `member:basic:read`
      #  - `member:phone:read`
      #  - `promo_code:basic:read`
      #  - `shipment:basic:read`
      #  - `payment:dispute:read`
      #  - `payment:resolution_center_case:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.payments.void(id: "pay_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::Payment]
      def void(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "payments/#{URI.encode_uri_component(params[:id].to_s)}/void",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Payment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Changes where the buyer lands after completing an off-site step, up until they return. Accepts either a secret
      # key or the payment's own `client_secret`, so the surface that knows the final destination can set it.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Payments::Types::UpdateReturnURLPaymentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :payment_id
      #
      # @example
      #   client.payments.update_return_url(
      #     payment_id: "payment_id",
      #     return_url: "https://shinetime.example/checkout/thanks"
      #   )
      #
      # @return [Whop_sdk::Types::PaymentStatus]
      def update_return_url(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Payments::Types::UpdateReturnURLPaymentsRequest.new(params).to_h
        non_body_param_names = %w[payment_id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "payments/#{URI.encode_uri_component(params[:payment_id].to_s)}/return_url",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PaymentStatus.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves how far a payment has got and what the buyer must do next, if anything. A payment is collected in the
      # background, so poll this rather than reading the create response. Accepts either a secret key or the payment's
      # own `client_secret`, so the surface collecting the payment can poll it directly.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :payment_id
      #
      # @example
      #   client.payments.retrieve_status(payment_id: "payment_id")
      #
      # @return [Whop_sdk::Types::PaymentStatus]
      def retrieve_status(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "payments/#{URI.encode_uri_component(params[:payment_id].to_s)}/status",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PaymentStatus.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end

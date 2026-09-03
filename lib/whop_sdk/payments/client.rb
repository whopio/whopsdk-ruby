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

      # Lists payments, newest first. Without filters this is every payment the caller can read: a company credential's
      # own account, or for a user every account they can read payments for. Filters narrow by account, buyer, product,
      # plan, membership, status, billing reason, currency, and creation window. Filtering by
      # `billing_reason=subscription_cycle` also matches renewals recorded as `subscription_update`.
      # `settlement_time_at` is null on list rows — retrieve the payment for it.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::Payments::Types::ListPaymentsRequestStatus, nil] :status
      # @option params [Whop_sdk::Payments::Types::ListPaymentsRequestBillingReason, nil] :billing_reason
      # @option params [String, nil] :currency
      # @option params [String, nil] :user_id
      # @option params [String, nil] :query
      # @option params [String, nil] :member_id
      # @option params [String, nil] :membership_id
      # @option params [String, nil] :product_id
      # @option params [String, nil] :plan_id
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [Whop_sdk::Payments::Types::ListPaymentsRequestOrder, nil] :order
      # @option params [Whop_sdk::Payments::Types::ListPaymentsRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.payments.list
      #
      # @return [Whop_sdk::Payments::Types::ListPaymentsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["billing_reason"] = params[:billing_reason] if params.key?(:billing_reason)
        query_params["currency"] = params[:currency] if params.key?(:currency)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["member_id"] = params[:member_id] if params.key?(:member_id)
        query_params["membership_id"] = params[:membership_id] if params.key?(:membership_id)
        query_params["product_id"] = params[:product_id] if params.key?(:product_id)
        query_params["plan_id"] = params[:plan_id] if params.key?(:plan_id)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)

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

      # Charges a buyer for a plan. Pass a payment method already on file (`member_id` and `payment_method_id`), or a
      # `confirmation_token` describing a method the buyer just supplied. Collection runs in the background: the
      # response is the payment as created, not its outcome — poll Retrieve status for how far it has got and, for a
      # confirmation-token payment, what the buyer must still do. `plan_id` names the plan to charge for.
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
      #     account_id: "biz_xxxxxxxxxxxxxx",
      #     plan_id: "plan_xxxxxxxxxxxxxx"
      #   )
      #
      # @return [Whop_sdk::Types::Payment]
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
          Whop_sdk::Types::Payment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns one payment. Related records are ids — resolve a plan, membership, member or shipment on its own
      # endpoint, and list this payment's refunds, disputes or Resolution Center cases with `?payment_id=`.
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
      #   client.payments.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::Payment]
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
          Whop_sdk::Types::Payment.load(response.body)
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

      # Returns the fee breakdown of one payment — Whop's fee, processing, affiliate and other lines — each in the
      # currency it was collected in and converted to the payment's settlement currency. The list is complete in one
      # page.
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
      #   client.payments.list_fees(id: "id")
      #
      # @return [Whop_sdk::Payments::Types::ListFeesPaymentsResponse]
      def list_fees(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "payments/#{URI.encode_uri_component(params[:id].to_s)}/fees",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Payments::Types::ListFeesPaymentsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Issues a full or partial refund for a payment. The refund is processed through the original payment processor
      # and the membership status is updated accordingly.
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
      #   client.payments.refund(id: "id")
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

      # Retries a failed or pending payment. This re-attempts the charge using the original payment method and plan
      # details.
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
      #   client.payments.retry_(id: "id")
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

      # Voids a payment that has not yet been settled. Voiding cancels the payment before it is captured by the payment
      # processor.
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
      #   client.payments.void(id: "id")
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

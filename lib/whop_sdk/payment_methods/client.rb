# frozen_string_literal: true

module Whop_sdk
  module PaymentMethods
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of payment methods for a member or company, or for the authenticated user when neither
      # is given, with optional filtering by creation date. A payment method is a stored representation of how a
      # customer intends to pay, such as a card, bank account, or digital wallet.
      #
      # Required permissions:
      #  - `member:payment_methods:read`
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
      # @option params [String, nil] :member_id
      # @option params [String, nil] :company_id
      # @option params [Whop_sdk::Types::Direction, nil] :direction
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [Whop_sdk::Types::FutureUsageTypes, nil] :future_usage
      # @option params [Whop_sdk::Types::PaymentMethodTypes, nil] :payment_method_types
      # @option params [Whop_sdk::Types::CardBrands, nil] :card_brands
      # @option params [Whop_sdk::Types::CardFundingTypes, nil] :card_funding_types
      # @option params [Boolean, nil] :has_payer_document
      # @option params [Boolean, nil] :expired
      # @option params [Boolean, nil] :broken
      #
      # @example
      #   client.payment_methods.list(
      #     first: 42,
      #     last: 42,
      #     member_id: "mber_xxxxxxxxxxxxx",
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     created_before: "2023-12-01T05:00:00Z",
      #     created_after: "2023-12-01T05:00:00Z"
      #   )
      #
      # @return [Whop_sdk::PaymentMethods::Types::ListPaymentMethodsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["member_id"] = params[:member_id] if params.key?(:member_id)
        query_params["company_id"] = params[:company_id] if params.key?(:company_id)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["future_usage"] = params[:future_usage] if params.key?(:future_usage)
        query_params["payment_method_types"] = params[:payment_method_types] if params.key?(:payment_method_types)
        query_params["card_brands"] = params[:card_brands] if params.key?(:card_brands)
        query_params["card_funding_types"] = params[:card_funding_types] if params.key?(:card_funding_types)
        query_params["has_payer_document"] = params[:has_payer_document] if params.key?(:has_payer_document)
        query_params["expired"] = params[:expired] if params.key?(:expired)
        query_params["broken"] = params[:broken] if params.key?(:broken)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "payment_methods",
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
            parsed_response = Whop_sdk::PaymentMethods::Types::ListPaymentMethodsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Retrieves the details of an existing payment method. Addresses a member's wallet when member_id or company_id is
      # given, otherwise your own.
      #
      # Required permissions:
      #  - `member:payment_methods:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :company_id
      # @option params [String, nil] :member_id
      #
      # @example
      #   client.payment_methods.retrieve(
      #     id: "payt_xxxxxxxxxxxxx",
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     member_id: "mber_xxxxxxxxxxxxx"
      #   )
      #
      # @return [Whop_sdk::Types::PaymentMethod]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["company_id"] = params[:company_id] if params.key?(:company_id)
        query_params["member_id"] = params[:member_id] if params.key?(:member_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "payment_methods/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::PaymentMethod.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a saved payment method. Cannot delete a payment method attached to an active subscription.
      #
      # Required permissions:
      #  - `member:payment_methods:manage`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :company_id
      # @option params [String, nil] :member_id
      #
      # @example
      #   client.payment_methods.delete_payment_method(
      #     id: "payt_xxxxxxxxxxxxx",
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     member_id: "mber_xxxxxxxxxxxxx"
      #   )
      #
      # @return [Boolean]
      def delete_payment_method(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["company_id"] = params[:company_id] if params.key?(:company_id)
        query_params["member_id"] = params[:member_id] if params.key?(:member_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "payment_methods/#{URI.encode_uri_component(params[:id].to_s)}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end

# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Lists the bank accounts, wallets, and crypto addresses an account or user can pay out to, newest first.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :account_id
        # @option params [String, nil] :user_id
        # @option params [Whop_sdk::Payouts::Methods::Types::ListMethodsRequestStatus, nil] :status
        # @option params [Integer, nil] :amount
        # @option params [String, nil] :currency
        # @option params [Boolean, nil] :include_limits
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Integer, nil] :last
        # @option params [String, nil] :before
        #
        # @example
        #   client.payouts.methods.list
        #
        # @return [Whop_sdk::Payouts::Methods::Types::ListMethodsResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["account_id"] = params[:account_id] if params.key?(:account_id)
          query_params["user_id"] = params[:user_id] if params.key?(:user_id)
          query_params["status"] = params[:status] if params.key?(:status)
          query_params["amount"] = params[:amount] if params.key?(:amount)
          query_params["currency"] = params[:currency] if params.key?(:currency)
          query_params["include_limits"] = params[:include_limits] if params.key?(:include_limits)
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
              path: "payouts/methods",
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
              parsed_response = Whop_sdk::Payouts::Methods::Types::ListMethodsResponse.load(response.body)
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Saves a new place an account or user can pay out to. Sensitive details are vaulted in transit and never stored
        # raw.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Payouts::Methods::Types::CreateMethodsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.payouts.methods.create(supported_payout_method_id: "podst_xxxxxxxxxxxxxx")
        #
        # @return [Whop_sdk::Payouts::Methods::Types::CreateMethodsResponse]
        def create(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "payouts/methods",
            body: Whop_sdk::Payouts::Methods::Types::CreateMethodsRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Payouts::Methods::Types::CreateMethodsResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Deletes a saved payout method so it can no longer receive payouts.
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
        #   client.payouts.methods.delete(id: "id")
        #
        # @return [Whop_sdk::Payouts::Methods::Types::DeleteMethodsResponse]
        def delete(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "payouts/methods/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Payouts::Methods::Types::DeleteMethodsResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Changes the label used to identify a saved payout method or makes it the account's default payout method.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Payouts::Methods::Types::UpdateMethodsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.payouts.methods.update(id: "id")
        #
        # @return [Whop_sdk::Payouts::Methods::Types::UpdateMethodsResponse]
        def update(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Payouts::Methods::Types::UpdateMethodsRequest.new(params).to_h
          non_body_param_names = %w[id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PATCH",
            path: "payouts/methods/#{URI.encode_uri_component(params[:id].to_s)}",
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
            Whop_sdk::Payouts::Methods::Types::UpdateMethodsResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end

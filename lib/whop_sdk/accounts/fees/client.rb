# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        # @param base_url [String, nil]
        # @param environment [Hash[Symbol, String], nil]
        #
        # @return [void]
        def initialize(client:, base_url: nil, environment: nil)
          @client = client
          @base_url = base_url
          @environment = environment
        end

        # Retrieves the account's fees: a singleton document keyed by fee, with any markups its platform adds.
        # `adjustable` on each fee says what the caller may change.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        #
        # @example
        #   client.accounts.fees.retrieve(account_id: "account_id")
        #
        # @return [Whop_sdk::Types::AccountFees]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/fees",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::AccountFees.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Updates the account's fees. Each key present in the body is replaced; omitted keys are left untouched. Only
        # fees the document reports as `adjustable` can be changed.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Accounts::Fees::Types::UpdateFeesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        #
        # @example
        #   client.accounts.fees.update(account_id: "account_id")
        #
        # @return [Whop_sdk::Types::AccountFees]
        def update(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Accounts::Fees::Types::UpdateFeesRequest.new(params).to_h
          non_body_param_names = %w[account_id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "PATCH",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/fees",
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
            Whop_sdk::Types::AccountFees.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Retrieves the account's preferences: a singleton settings document keyed by preference name.
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
        #   client.accounts.preferences.retrieve(account_id: "account_id")
        #
        # @return [Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponse]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/preferences",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Updates the account's preferences. Each top-level key present in the body is replaced as a whole; omitted keys
        # are left untouched. `ads_triple_whale_integration` takes the Data-In API key to connect with, or `null` to
        # disconnect. `ads_payment_methods` always requires a `primary` entry. `backup` is optional and any pairing is
        # allowed — two cards, `card`+`platform_balance`, or a single method — so a card-only advertiser can fund ads
        # without a platform balance. The `primary` and `backup` must be different sources. A `platform_balance` entry
        # may omit `id` to use the account's default Whop balance. Configuring a `card` requires a user token; account
        # API keys can set up platform-balance billing only.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        #
        # @example
        #   client.accounts.preferences.update(account_id: "account_id")
        #
        # @return [Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponse]
        def update(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequest.new(params).to_h
          non_body_param_names = %w[account_id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PATCH",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/preferences",
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
            Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
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

      # Lists the external accounts linked to an account or user.
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
      # @option params [Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestPlatform, nil] :platform
      # @option params [Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestTrustLevel, nil] :trust_level
      # @option params [Boolean, nil] :verified
      # @option params [Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestScopesItem, nil] :scopes
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      # @option params [Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestOrder, nil] :order
      # @option params [Whop_sdk::ExternalAccounts::Types::ListExternalAccountsRequestDirection, nil] :direction
      #
      # @example
      #   client.external_accounts.list
      #
      # @return [Whop_sdk::ExternalAccounts::Types::ListExternalAccountsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["platform"] = params[:platform] if params.key?(:platform)
        query_params["trust_level"] = params[:trust_level] if params.key?(:trust_level)
        query_params["verified"] = params[:verified] if params.key?(:verified)
        query_params["scopes"] = params[:scopes] if params.key?(:scopes)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "external_accounts",
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
            parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::ExternalAccounts::Types::ListExternalAccountsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates or returns a Whop-managed Facebook page or TikTok account for an account.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ExternalAccounts::Types::CreateExternalAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.external_accounts.create(platform: "facebook")
      #
      # @return [Whop_sdk::Types::ExternalAccount]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "external_accounts",
          body: Whop_sdk::ExternalAccounts::Types::CreateExternalAccountsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ExternalAccount.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Starts an OAuth connection flow and returns an authorize_url where the user can connect an external account.
      # LinkedIn supports personal profiles only, with scopes omitted. TikTok connects the authenticated user’s profile
      # when scopes are omitted or company advertising assets with advertise. Meta Business and Snapchat support
      # advertising connections only and require advertise. Personal profile connections must be completed in a browser
      # signed in as the initiating Whop user.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ExternalAccounts::Types::ConnectExternalAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.external_accounts.connect(
      #     platform: "meta_business",
      #     redirect_url: "https://example.com/settings/social-accounts"
      #   )
      #
      # @return [Whop_sdk::ExternalAccounts::Types::ConnectExternalAccountsResponse]
      def connect(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "external_accounts/connect",
          body: Whop_sdk::ExternalAccounts::Types::ConnectExternalAccountsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::ExternalAccounts::Types::ConnectExternalAccountsResponse.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Disconnects an external account from an account or user without deleting the underlying platform account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      # @option params [String, nil] :user_id
      #
      # @example
      #   client.external_accounts.delete(id: "id")
      #
      # @return [Whop_sdk::ExternalAccounts::Types::DeleteExternalAccountsResponse]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "DELETE",
          path: "external_accounts/#{URI.encode_uri_component(params[:id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::ExternalAccounts::Types::DeleteExternalAccountsResponse.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Refreshes the state of an external account. Use it to clear an `error` that has been resolved.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ExternalAccounts::Types::RefreshExternalAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.external_accounts.refresh(id: "id")
      #
      # @return [Whop_sdk::Types::ExternalAccount]
      def refresh(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::ExternalAccounts::Types::RefreshExternalAccountsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "external_accounts/#{URI.encode_uri_component(params[:id].to_s)}/refresh",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ExternalAccount.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [Whop_sdk::Partners::Client]
      def partners
        @partners ||= Whop_sdk::ExternalAccounts::Partners::Client.new(client: @client, base_url: @base_url, environment: @environment)
      end

      # @return [Whop_sdk::LeadForms::Client]
      def lead_forms
        @lead_forms ||= Whop_sdk::ExternalAccounts::LeadForms::Client.new(client: @client, base_url: @base_url, environment: @environment)
      end

      # @return [Whop_sdk::Posts::Client]
      def posts
        @posts ||= Whop_sdk::ExternalAccounts::Posts::Client.new(client: @client, base_url: @base_url, environment: @environment)
      end
    end
  end
end

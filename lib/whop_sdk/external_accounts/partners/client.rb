# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Partners
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

        # Lists the creators an Instagram account runs partnership ads with, and where each creator's permission stands.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :external_account_id
        # @option params [String, nil] :account_id
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        #
        # @example
        #   client.external_accounts.partners.list(external_account_id: "external_account_id")
        #
        # @return [Whop_sdk::ExternalAccounts::Partners::Types::ListPartnersResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["account_id"] = params[:account_id] if params.key?(:account_id)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)

          Whop_sdk::Internal::CursorItemIterator.new(
            cursor_field: :end_cursor,
            item_field: :data,
            initial_cursor: query_params["after"]
          ) do |next_cursor|
            query_params["after"] = next_cursor
            request = Whop_sdk::Internal::JSON::Request.new(
              base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
              method: "GET",
              path: "external_accounts/#{URI.encode_uri_component(params[:external_account_id].to_s)}/partners",
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
              parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::ExternalAccounts::Partners::Types::ListPartnersResponse.load(response.body))
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Invites an Instagram creator to run partnership ads with an Instagram account. The creator approves the
        # invitation in the Instagram app, and `partnership_status` stays `pending` until they do;
        # [refresh](/api-reference/beta/external-accounts/refresh) the partner to pick up their answer.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::ExternalAccounts::Partners::Types::CreatePartnersRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :external_account_id
        #
        # @example
        #   client.external_accounts.partners.create(
        #     external_account_id: "external_account_id",
        #     username: "@luverahealth"
        #   )
        #
        # @return [Whop_sdk::Types::ExternalAccount]
        def create(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::ExternalAccounts::Partners::Types::CreatePartnersRequest.new(params).to_h
          non_body_param_names = %w[external_account_id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "POST",
            path: "external_accounts/#{URI.encode_uri_component(params[:external_account_id].to_s)}/partners",
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

        # Revokes a creator's permission to run partnership ads with an Instagram account. Every account that advertises
        # as the Instagram account loses the partner, since the permission belongs to the Instagram account.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :external_account_id
        # @option params [String] :id
        # @option params [String, nil] :account_id
        #
        # @example
        #   client.external_accounts.partners.delete(
        #     external_account_id: "external_account_id",
        #     id: "id"
        #   )
        #
        # @return [Whop_sdk::ExternalAccounts::Partners::Types::DeletePartnersResponse]
        def delete(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["account_id"] = params[:account_id] if params.key?(:account_id)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "DELETE",
            path: "external_accounts/#{URI.encode_uri_component(params[:external_account_id].to_s)}/partners/#{URI.encode_uri_component(params[:id].to_s)}",
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
            (response.body.to_s.empty? ? nil : Whop_sdk::ExternalAccounts::Partners::Types::DeletePartnersResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end

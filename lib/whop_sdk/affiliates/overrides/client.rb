# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Overrides
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns a paginated list of overrides for an affiliate.
        #
        # Required permissions:
        #  - `affiliate:basic:read`
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
        # @option params [Whop_sdk::Types::AffiliateOverrideRoles, nil] :override_type
        #
        # @example
        #   client.affiliates.overrides.list(
        #     id: "aff_xxxxxxxxxxxxxx",
        #     first: 42,
        #     last: 42
        #   )
        #
        # @return [Whop_sdk::Affiliates::Overrides::Types::ListOverridesResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["after"] = params[:after] if params.key?(:after)
          query_params["before"] = params[:before] if params.key?(:before)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["last"] = params[:last] if params.key?(:last)
          query_params["override_type"] = params[:override_type] if params.key?(:override_type)

          Whop_sdk::Internal::CursorItemIterator.new(
            cursor_field: :end_cursor,
            item_field: :data,
            initial_cursor: query_params["after"]
          ) do |next_cursor|
            query_params["after"] = next_cursor
            request = Whop_sdk::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "GET",
              path: "affiliates/#{URI.encode_uri_component(params[:id].to_s)}/overrides",
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
              parsed_response = Whop_sdk::Affiliates::Overrides::Types::ListOverridesResponse.load(response.body)
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Creates a commission override for an affiliate.
        #
        # Required permissions:
        #  - `affiliate:create`
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Affiliates::Overrides::Types::CreateOverridesRequestBody]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.affiliates.overrides.create(id: "aff_xxxxxxxxxxxxxx")
        #
        # @return [Whop_sdk::Affiliates::Overrides::Types::CreateOverridesResponse]
        def create(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[id]
          body_params = params.except(*path_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "affiliates/#{URI.encode_uri_component(params[:id].to_s)}/overrides",
            body: Whop_sdk::Affiliates::Overrides::Types::CreateOverridesRequestBody.new(body_params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Affiliates::Overrides::Types::CreateOverridesResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Retrieves the details of a specific affiliate override.
        #
        # Required permissions:
        #  - `affiliate:basic:read`
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        # @option params [String] :override_id
        #
        # @example
        #   client.affiliates.overrides.retrieve(
        #     id: "aff_xxxxxxxxxxxxxx",
        #     override_id: "override_id"
        #   )
        #
        # @return [Whop_sdk::Affiliates::Overrides::Types::RetrieveOverridesResponse]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "affiliates/#{URI.encode_uri_component(params[:id].to_s)}/overrides/#{URI.encode_uri_component(params[:override_id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Affiliates::Overrides::Types::RetrieveOverridesResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Deletes an affiliate override.
        #
        # Required permissions:
        #  - `affiliate:update`
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        # @option params [String] :override_id
        #
        # @example
        #   client.affiliates.overrides.delete(
        #     id: "aff_xxxxxxxxxxxxxx",
        #     override_id: "override_id"
        #   )
        #
        # @return [Boolean]
        def delete(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "affiliates/#{URI.encode_uri_component(params[:id].to_s)}/overrides/#{URI.encode_uri_component(params[:override_id].to_s)}",
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

        # Updates an existing affiliate override.
        #
        # Required permissions:
        #  - `affiliate:update`
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Affiliates::Overrides::Types::UpdateOverridesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        # @option params [String] :override_id
        #
        # @example
        #   client.affiliates.overrides.update(
        #     id: "aff_xxxxxxxxxxxxxx",
        #     override_id: "override_id"
        #   )
        #
        # @return [Whop_sdk::Affiliates::Overrides::Types::UpdateOverridesResponse]
        def update(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Affiliates::Overrides::Types::UpdateOverridesRequest.new(params).to_h
          non_body_param_names = %w[id override_id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PATCH",
            path: "affiliates/#{URI.encode_uri_component(params[:id].to_s)}/overrides/#{URI.encode_uri_component(params[:override_id].to_s)}",
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
            Whop_sdk::Affiliates::Overrides::Types::UpdateOverridesResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end

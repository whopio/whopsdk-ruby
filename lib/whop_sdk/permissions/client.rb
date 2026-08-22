# frozen_string_literal: true

module Whop_sdk
  module Permissions
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists permission actions and whether the calling credential is granted each one for a resource. Answers for
      # whichever identity authenticated the request — a user session, an OAuth token, or an account or app API key — so
      # it never describes who else can reach the resource.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :resource_id
      # @option params [String, nil] :actions
      #
      # @example
      #   client.permissions.list(resource_id: "resource_id")
      #
      # @return [Whop_sdk::Permissions::Types::ListPermissionsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["resource_id"] = params[:resource_id] if params.key?(:resource_id)
        query_params["actions"] = params[:actions] if params.key?(:actions)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "permissions",
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
          Whop_sdk::Permissions::Types::ListPermissionsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end

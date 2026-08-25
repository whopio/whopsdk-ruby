# frozen_string_literal: true

module Whop_sdk
  module Apps
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists apps on the Whop platform: the app store's live apps, or — with `account_id` and developer access to that
      # account — every app the account owns. Requires authentication, except for the publicly readable lists:
      # `verified_apps_only=true`, and `app_type=website` with no `account_id`, which returns every live deployed
      # website that Whop has not verified — verified templates are the curated `verified_apps_only=true` list instead.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::Apps::Types::ListAppsRequestAppType, nil] :app_type
      # @option params [Whop_sdk::Apps::Types::ListAppsRequestViewType, nil] :view_type
      # @option params [Boolean, nil] :verified_apps_only
      # @option params [Boolean, nil] :recommended
      # @option params [String, nil] :query
      # @option params [Whop_sdk::Apps::Types::ListAppsRequestOrder, nil] :order
      # @option params [Whop_sdk::Apps::Types::ListAppsRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.apps.list
      #
      # @return [Whop_sdk::Apps::Types::ListAppsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["app_type"] = params[:app_type] if params.key?(:app_type)
        query_params["view_type"] = params[:view_type] if params.key?(:view_type)
        query_params["verified_apps_only"] = params[:verified_apps_only] if params.key?(:verified_apps_only)
        query_params["recommended"] = params[:recommended] if params.key?(:recommended)
        query_params["query"] = params[:query] if params.key?(:query)
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
            path: "apps",
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
            parsed_response = Whop_sdk::Apps::Types::ListAppsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Registers a new app on the Whop developer platform. Apps provide custom experiences that can be added to
      # products.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Apps::Types::CreateAppsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.apps.create(name: "Shine Time Booking")
      #
      # @return [Whop_sdk::Types::App]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "apps",
          body: Whop_sdk::Apps::Types::CreateAppsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::App.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the permission requirements for an app
      #
      # Required permissions:
      #  - `developer:update_app_authorization`
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Apps::Types::UpdatePermissionsAppRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :app_id
      #
      # @example
      #   client.apps.update_permissions_app(
      #     app_id: "app_id",
      #     requested_permissions: [{
      #       action: "action",
      #       is_required: true,
      #       justification: "justification"
      #     }]
      #   )
      #
      # @return [Boolean]
      def update_permissions_app(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Apps::Types::UpdatePermissionsAppRequest.new(params).to_h
        non_body_param_names = %w[app_id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "apps/#{URI.encode_uri_component(params[:app_id].to_s)}/permissions",
          body: body,
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

      # Retrieves an app by ID, claimed route, or proxy domain id. Credential fields (api_key, default_api_key, secrets)
      # render `null` unless the caller has the corresponding developer permission on the owning account.
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
      #   client.apps.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::App]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "apps/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::App.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes an app. The app stops resolving within seconds — a website's site stops serving, and any claimed
      # subdomain is reserved for a month before it can be claimed again.
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
      #   client.apps.delete(id: "id")
      #
      # @return [Whop_sdk::Apps::Types::DeleteAppsResponse]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "apps/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Apps::Types::DeleteAppsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the settings, metadata, or status of an app. Fields that are omitted keep their current value.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Apps::Types::UpdateAppsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.apps.update(id: "id")
      #
      # @return [Whop_sdk::Types::App]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Apps::Types::UpdateAppsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "apps/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::App.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Builds the app's current source and ships it. Returns the run it started, so the caller can render progress from
      # this response and then follow it on the app's `deployment` field. Only one deployment runs per app at a time —
      # calling this while one is in flight reports that run rather than starting a second, and calling it with nothing
      # to publish reports that instead of starting one.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Apps::Types::DeployAppsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.apps.deploy(id: "id")
      #
      # @return [Whop_sdk::Types::AppDeployment]
      def deploy(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Apps::Types::DeployAppsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "apps/#{URI.encode_uri_component(params[:id].to_s)}/deploy",
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
          Whop_sdk::Types::AppDeployment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists a hosted app's server runtime logs, most recent first: console output, uncaught exceptions, and
      # failed-request summaries captured on whop.app hosting. Logs are retained for 7 days.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :app_build_id
      # @option params [Whop_sdk::Apps::Types::LogsAppsRequestLevel, nil] :level
      # @option params [String, nil] :query
      # @option params [String, nil] :created_after
      # @option params [String, nil] :created_before
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [String, nil] :before
      #
      # @example
      #   client.apps.logs(id: "id")
      #
      # @return [Whop_sdk::Apps::Types::LogsAppsResponse]
      def logs(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["app_build_id"] = params[:app_build_id] if params.key?(:app_build_id)
        query_params["level"] = params[:level] if params.key?(:level)
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
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
            path: "apps/#{URI.encode_uri_component(params[:id].to_s)}/logs",
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
            parsed_response = Whop_sdk::Apps::Types::LogsAppsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Replaces the set of permissions the app requests from users when they install it. Requires a user session: the
      # `developer:update_app_authorization` scope cannot be delegated to API keys. Sensitive permissions require
      # step-up verification.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Apps::Types::UpdatePermissionsAppsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.apps.update_permissions(
      #     id: "id",
      #     requested_permissions: [{
      #       action: "company:basic:read",
      #       is_required: true,
      #       justification: "Reads basic account info to render the dashboard home."
      #     }]
      #   )
      #
      # @return [Whop_sdk::Types::App]
      def update_permissions(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Apps::Types::UpdatePermissionsAppsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "apps/#{URI.encode_uri_component(params[:id].to_s)}/permissions",
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
          Whop_sdk::Types::App.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end

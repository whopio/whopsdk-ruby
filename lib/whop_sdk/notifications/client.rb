# frozen_string_literal: true

module Whop_sdk
  module Notifications
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists the authenticated user's notifications, newest first. Requires a user credential — an account API key has
      # no notification feed. Without filters the feed spans every experience the user belongs to plus the teams they
      # are a member of.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :unread
      # @option params [String, nil] :experience_id
      # @option params [String, nil] :account_id
      # @option params [Boolean, nil] :mentions
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      #
      # @example
      #   client.notifications.list
      #
      # @return [Whop_sdk::Notifications::Types::ListNotificationsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["unread"] = params[:unread] if params.key?(:unread)
        query_params["experience_id"] = params[:experience_id] if params.key?(:experience_id)
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["mentions"] = params[:mentions] if params.key?(:mentions)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "notifications",
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
            parsed_response = Whop_sdk::Notifications::Types::ListNotificationsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Queues a notification to every user of an experience or to an account's team, processed asynchronously. Every
      # send is attributed to an app: use an app API key, or a credential acting on behalf of an app. Narrow the
      # audience with `user_ids` to send a mention.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Notifications::Types::CreateNotificationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.notifications.create(
      #     content: "Drop off at 4180 Burnet Rd. Plan on two days for the full coating.",
      #     title: "Your ceramic coating is booked"
      #   )
      #
      # @return [Whop_sdk::Notifications::Types::CreateNotificationsResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "notifications",
          body: Whop_sdk::Notifications::Types::CreateNotificationsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Notifications::Types::CreateNotificationsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the authenticated user's per-experience unread badge state. Requires a user credential. Returns one row
      # per experience the user belongs to (or per requested experience).
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :experience_ids
      # @option params [String, nil] :last_fetched_at
      #
      # @example
      #   client.notifications.badges(experience_ids: ["exp_xxxxxxxxxxxxxx"])
      #
      # @return [Whop_sdk::Notifications::Types::BadgesNotificationsResponse]
      def badges(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["experience_ids"] = params[:experience_ids] if params.key?(:experience_ids)
        query_params["last_fetched_at"] = params[:last_fetched_at] if params.key?(:last_fetched_at)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "notifications/badges",
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
          Whop_sdk::Notifications::Types::BadgesNotificationsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Marks the authenticated user's notifications as read: one experience's (`experience_id`) or everything (`all:
      # true`) — exactly one of the two. Requires a user credential. Responds with the refreshed badge rows for the
      # affected scope.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Notifications::Types::MarkReadNotificationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.notifications.mark_read
      #
      # @return [Whop_sdk::Notifications::Types::MarkReadNotificationsResponse]
      def mark_read(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "notifications/mark_read",
          body: Whop_sdk::Notifications::Types::MarkReadNotificationsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Notifications::Types::MarkReadNotificationsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single notification by id — either an `id` returned by List Notifications, or the ephemeral id
      # delivered with a push/websocket event. Requires a user credential.
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
      #   client.notifications.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::Notification]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "notifications/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Notification.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [Whop_sdk::Topics::Client]
      def topics
        @topics ||= Whop_sdk::Notifications::Topics::Client.new(client: @client)
      end
    end
  end
end

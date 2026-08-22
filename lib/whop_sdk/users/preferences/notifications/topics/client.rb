# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Topics
          class Client
            # @param client [Whop_sdk::Internal::Http::RawClient]
            #
            # @return [void]
            def initialize(client:)
              @client = client
            end

            # Lists the authenticated user's topic-scoped notification preferences, plus user-agnostic platform
            # defaults. Each filter matches preferences scoped to its value or not narrowed on that dimension.
            # Per-experience levels are listed separately, by `GET /users/me/preferences/notifications/experiences`.
            #
            # @param request_options [Hash]
            # @param params [Hash]
            # @option request_options [String] :base_url
            # @option request_options [Hash{String => Object}] :additional_headers
            # @option request_options [Hash{String => Object}] :additional_query_parameters
            # @option request_options [Hash{String => Object}] :additional_body_parameters
            # @option request_options [Integer] :timeout_in_seconds
            # @option params [Whop_sdk::Users::Preferences::Notifications::Topics::Types::ListTopicsRequestChannel, nil] :channel
            # @option params [String, nil] :account_id
            # @option params [String, nil] :team_account_id
            # @option params [String, nil] :experience_id
            # @option params [String, nil] :topic_id
            # @option params [Integer, nil] :first
            # @option params [String, nil] :after
            #
            # @example
            #   client.users.preferences.notifications.topics.list
            #
            # @return [Whop_sdk::Users::Preferences::Notifications::Topics::Types::ListTopicsResponse]
            def list(request_options: {}, **params)
              params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
              query_params = {}
              query_params["channel"] = params[:channel] if params.key?(:channel)
              query_params["account_id"] = params[:account_id] if params.key?(:account_id)
              query_params["team_account_id"] = params[:team_account_id] if params.key?(:team_account_id)
              query_params["experience_id"] = params[:experience_id] if params.key?(:experience_id)
              query_params["topic_id"] = params[:topic_id] if params.key?(:topic_id)
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
                  path: "users/me/preferences/notifications/topics",
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
                  parsed_response = Whop_sdk::Users::Preferences::Notifications::Topics::Types::ListTopicsResponse.load(response.body)
                  [parsed_response, response]
                else
                  error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
                  raise error_class.new(response.body, code: code)
                end
              end
            end
          end
        end
      end
    end
  end
end

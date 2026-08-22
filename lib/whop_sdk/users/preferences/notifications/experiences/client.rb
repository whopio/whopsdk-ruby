# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Experiences
          class Client
            # @param client [Whop_sdk::Internal::Http::RawClient]
            #
            # @return [void]
            def initialize(client:)
              @client = client
            end

            # Lists the authenticated user's per-experience notification levels. Experiences the user never set a level
            # for are omitted — their effective level is `all`.
            #
            # @param request_options [Hash]
            # @param params [Hash]
            # @option request_options [String] :base_url
            # @option request_options [Hash{String => Object}] :additional_headers
            # @option request_options [Hash{String => Object}] :additional_query_parameters
            # @option request_options [Hash{String => Object}] :additional_body_parameters
            # @option request_options [Integer] :timeout_in_seconds
            # @option params [Integer, nil] :first
            # @option params [String, nil] :after
            #
            # @example
            #   client.users.preferences.notifications.experiences.list
            #
            # @return [Whop_sdk::Users::Preferences::Notifications::Experiences::Types::ListExperiencesResponse]
            def list(request_options: {}, **params)
              params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
              query_params = {}
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
                  path: "users/me/preferences/notifications/experiences",
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
                  parsed_response = Whop_sdk::Users::Preferences::Notifications::Experiences::Types::ListExperiencesResponse.load(response.body)
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

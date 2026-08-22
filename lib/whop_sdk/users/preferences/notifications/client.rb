# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        class Client
          # @param client [Whop_sdk::Internal::Http::RawClient]
          #
          # @return [void]
          def initialize(client:)
            @client = client
          end

          # Sets the authenticated user's notification preferences. Each preference is addressed by `scope`, not by id,
          # so a scope read back from either list endpoint can be sent straight here.
          #
          # A scope naming an experience with no topic sets that experience's level, and accepts all three levels. Any
          # other scope sets a topic override, which is binary — `all` or `nothing` — and requires a `channel`.
          #
          # `level: null` clears the preference. Preferences are stored as overrides, so clearing one means the scope
          # inherits its default again rather than being switched off.
          #
          # The batch is applied in one transaction: if any entry is rejected, none are written. Experience levels are
          # applied before topic overrides, because setting a level replaces every topic preference for that experience
          # — so an override sent alongside a level wins. The response reports what each scope now resolves to, in the
          # order the entries were sent.
          #
          # @param request_options [Hash]
          # @param params [Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsRequest]
          # @option request_options [String] :base_url
          # @option request_options [Hash{String => Object}] :additional_headers
          # @option request_options [Hash{String => Object}] :additional_query_parameters
          # @option request_options [Hash{String => Object}] :additional_body_parameters
          # @option request_options [Integer] :timeout_in_seconds
          #
          # @example
          #   client.users.preferences.notifications.set(preferences: [{
          #     scope: {}
          #   }])
          #
          # @return [Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsResponse]
          def set(request_options: {}, **params)
            params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
            request = Whop_sdk::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "PATCH",
              path: "users/me/preferences/notifications",
              body: Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsRequest.new(params).to_h,
              request_options: request_options
            )
            begin
              response = @client.send(request)
            rescue Net::HTTPRequestTimeout
              raise Whop_sdk::Errors::TimeoutError
            end
            code = response.code.to_i
            if code.between?(200, 299)
              Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsResponse.load(response.body)
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end

          # @return [Whop_sdk::Experiences::Client]
          def experiences
            @experiences ||= Whop_sdk::Users::Preferences::Notifications::Experiences::Client.new(client: @client)
          end

          # @return [Whop_sdk::Topics::Client]
          def topics
            @topics ||= Whop_sdk::Users::Preferences::Notifications::Topics::Client.new(client: @client)
          end
        end
      end
    end
  end
end

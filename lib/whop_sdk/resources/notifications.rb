# frozen_string_literal: true

module WhopSDK
  module Resources
    class Notifications
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::NotificationCreateParams} for more details.
      #
      # Send a push notification to users in an experience or company team. The
      # notification is processed asynchronously and supports targeting specific users.
      #
      # Required permissions:
      #
      # - `notification:create`
      #
      # @overload create(company_id:, content:, title:, experience_id:, icon_user_id: nil, rest_path: nil, subtitle: nil, user_ids: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to target. Only team members of this compan
      #
      # @param content [String] The main body text of the notification displayed to the user.
      #
      # @param title [String] The headline text of the notification, displayed prominently to the user.
      #
      # @param experience_id [String] The unique identifier of the experience to target. All users with access to this
      #
      # @param icon_user_id [String, nil] The unique identifier of a user whose profile picture will be used as the notifi
      #
      # @param rest_path [String, nil] A path segment appended to the generated deep link that opens your app. Use [res
      #
      # @param subtitle [String, nil] An optional secondary line of text displayed below the title in the notification
      #
      # @param user_ids [Array<String>, nil] An optional list of user IDs to narrow the audience. When provided, only these u
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::NotificationCreateResponse]
      #
      # @see WhopSDK::Models::NotificationCreateParams
      def create(params)
        parsed, options = WhopSDK::NotificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "notifications",
          body: parsed,
          model: WhopSDK::Models::NotificationCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

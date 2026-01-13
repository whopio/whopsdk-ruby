# frozen_string_literal: true

module WhopSDK
  module Resources
    class Notifications
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::NotificationCreateParams} for more details.
      #
      # Queues a notification to be sent to users in an experience or company team
      #
      # Required permissions:
      #
      # - `notification:create`
      #
      # @overload create(company_id:, content:, title:, experience_id:, icon_user_id: nil, rest_path: nil, subtitle: nil, user_ids: nil, request_options: {})
      #
      # @param company_id [String] The id of the company to target. Only team members of this company will receive
      #
      # @param content [String] The content of the notification
      #
      # @param title [String] The title of the notification
      #
      # @param experience_id [String] The id of the experience to target. All users with access to this experience (cu
      #
      # @param icon_user_id [String, nil] Optional: ID of a Whop user whose profile picture will be used as the notificati
      #
      # @param rest_path [String, nil] The rest path to append to the generated deep link that opens your app. Use [res
      #
      # @param subtitle [String, nil] The subtitle of the notification
      #
      # @param user_ids [Array<String>, nil] If provided, this will only send to these users if they are also in the main sco
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

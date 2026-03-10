# frozen_string_literal: true

module WhopSDK
  module Resources
    # Notifications
    class Notifications
      # Send a push notification to users in an experience or company team. The
      # notification is processed asynchronously and supports targeting specific users.
      #
      # Required permissions:
      #
      # - `notification:create`
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [WhopSDK::Models::NotificationCreateParams::Body::SendNotificationV2InputWithCompanyID, WhopSDK::Models::NotificationCreateParams::Body::SendNotificationV2InputWithExperienceID] Parameters for SendNotificationV2
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
          body: parsed[:body],
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

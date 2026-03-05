# typed: strong

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
      sig do
        params(
          body:
            T.any(
              WhopSDK::NotificationCreateParams::Body::SendNotificationV2InputWithCompanyID::OrHash,
              WhopSDK::NotificationCreateParams::Body::SendNotificationV2InputWithExperienceID::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::NotificationCreateResponse)
      end
      def create(
        # Parameters for SendNotificationV2
        body:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

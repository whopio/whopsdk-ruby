# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Notifications#create
    class NotificationCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute success
      #   Whether the notification was successfully queued for delivery
      #
      #   @return [Boolean]
      required :success, WhopSDK::Internal::Type::Boolean

      # @!method initialize(success:)
      #   Response from queuing a notification
      #
      #   @param success [Boolean] Whether the notification was successfully queued for delivery
    end
  end
end

# typed: strong

module WhopSDK
  module Models
    class NotificationCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::NotificationCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Whether the notification was successfully queued for delivery
      sig { returns(T::Boolean) }
      attr_accessor :success

      # Response from queuing a notification
      sig { params(success: T::Boolean).returns(T.attached_class) }
      def self.new(
        # Whether the notification was successfully queued for delivery
        success:
      )
      end

      sig { override.returns({ success: T::Boolean }) }
      def to_hash
      end
    end
  end
end

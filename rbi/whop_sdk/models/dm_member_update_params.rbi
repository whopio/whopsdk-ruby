# typed: strong

module WhopSDK
  module Models
    class DmMemberUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::DmMemberUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The notification preferences for a DMs feed member
      sig do
        returns(
          T.nilable(WhopSDK::DmFeedMemberNotificationPreferences::OrSymbol)
        )
      end
      attr_accessor :notification_preference

      # The statuses of a DMs feed member
      sig { returns(T.nilable(WhopSDK::DmFeedMemberStatuses::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          notification_preference:
            T.nilable(WhopSDK::DmFeedMemberNotificationPreferences::OrSymbol),
          status: T.nilable(WhopSDK::DmFeedMemberStatuses::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The notification preferences for a DMs feed member
        notification_preference: nil,
        # The statuses of a DMs feed member
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            notification_preference:
              T.nilable(WhopSDK::DmFeedMemberNotificationPreferences::OrSymbol),
            status: T.nilable(WhopSDK::DmFeedMemberStatuses::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

# typed: strong

module WhopSDK
  module Models
    class SupportChannelCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SupportChannelCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to create the support channel in.
      sig { returns(String) }
      attr_accessor :account_id

      # The user ID (e.g. 'user_xxxxx') or username of the customer to open a support
      # channel for.
      sig { returns(String) }
      attr_accessor :user_id

      # Optional custom display name for the support channel.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_name

      # Whether Whop app notifications are enabled for this support channel. Webhooks
      # still fire.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :notifications_enabled

      sig do
        params(
          account_id: String,
          user_id: String,
          custom_name: T.nilable(String),
          notifications_enabled: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to create the support channel in.
        account_id:,
        # The user ID (e.g. 'user_xxxxx') or username of the customer to open a support
        # channel for.
        user_id:,
        # Optional custom display name for the support channel.
        custom_name: nil,
        # Whether Whop app notifications are enabled for this support channel. Webhooks
        # still fire.
        notifications_enabled: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            user_id: String,
            custom_name: T.nilable(String),
            notifications_enabled: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

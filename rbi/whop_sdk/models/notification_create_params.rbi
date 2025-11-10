# typed: strong

module WhopSDK
  module Models
    class NotificationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::NotificationCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The id of the company to target. Only team members of this company will receive
      # the notification. When clicked will take the user to your dashboard app view.
      sig { returns(String) }
      attr_accessor :company_id

      # The content of the notification
      sig { returns(String) }
      attr_accessor :content

      # The title of the notification
      sig { returns(String) }
      attr_accessor :title

      # Optional: ID of a Whop user whose profile picture will be used as the
      # notification icon. If not provided, defaults to the experience or company
      # avatar.
      sig { returns(T.nilable(String)) }
      attr_accessor :icon_user_id

      # The rest path to append to the generated deep link that opens your app. Use
      # [restPath] in your app path in the dashboard to read this parameter.
      sig { returns(T.nilable(String)) }
      attr_accessor :rest_path

      # The subtitle of the notification
      sig { returns(T.nilable(String)) }
      attr_accessor :subtitle

      # If provided, this will only send to these users if they are also in the main
      # scope (experience or company)
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :user_ids

      # The id of the experience to target. All users with access to this experience
      # (customers and admins) will receive the notification. When clicked, open your
      # experience view.
      sig { returns(String) }
      attr_accessor :experience_id

      sig do
        params(
          company_id: String,
          content: String,
          title: String,
          experience_id: String,
          icon_user_id: T.nilable(String),
          rest_path: T.nilable(String),
          subtitle: T.nilable(String),
          user_ids: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The id of the company to target. Only team members of this company will receive
        # the notification. When clicked will take the user to your dashboard app view.
        company_id:,
        # The content of the notification
        content:,
        # The title of the notification
        title:,
        # The id of the experience to target. All users with access to this experience
        # (customers and admins) will receive the notification. When clicked, open your
        # experience view.
        experience_id:,
        # Optional: ID of a Whop user whose profile picture will be used as the
        # notification icon. If not provided, defaults to the experience or company
        # avatar.
        icon_user_id: nil,
        # The rest path to append to the generated deep link that opens your app. Use
        # [restPath] in your app path in the dashboard to read this parameter.
        rest_path: nil,
        # The subtitle of the notification
        subtitle: nil,
        # If provided, this will only send to these users if they are also in the main
        # scope (experience or company)
        user_ids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            content: String,
            title: String,
            icon_user_id: T.nilable(String),
            rest_path: T.nilable(String),
            subtitle: T.nilable(String),
            user_ids: T.nilable(T::Array[String]),
            experience_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

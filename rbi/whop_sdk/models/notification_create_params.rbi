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

      # The unique identifier of the company to target. Only team members of this
      # company will receive the notification. Clicking the notification opens your
      # dashboard app view.
      sig { returns(String) }
      attr_accessor :company_id

      # The main body text of the notification displayed to the user.
      sig { returns(String) }
      attr_accessor :content

      # The headline text of the notification, displayed prominently to the user.
      sig { returns(String) }
      attr_accessor :title

      # The unique identifier of a user whose profile picture will be used as the
      # notification icon. Defaults to the experience or company avatar when not
      # provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :icon_user_id

      # A path segment appended to the generated deep link that opens your app. Use
      # [restPath] in your app path configuration to read this parameter. For example,
      # '/settings/billing'.
      sig { returns(T.nilable(String)) }
      attr_accessor :rest_path

      # An optional secondary line of text displayed below the title in the
      # notification.
      sig { returns(T.nilable(String)) }
      attr_accessor :subtitle

      # An optional list of user IDs to narrow the audience. When provided, only these
      # users receive the notification, provided they are in the targeted experience or
      # company.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :user_ids

      # The unique identifier of the experience to target. All users with access to this
      # experience will receive the notification. Clicking the notification opens the
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
        # The unique identifier of the company to target. Only team members of this
        # company will receive the notification. Clicking the notification opens your
        # dashboard app view.
        company_id:,
        # The main body text of the notification displayed to the user.
        content:,
        # The headline text of the notification, displayed prominently to the user.
        title:,
        # The unique identifier of the experience to target. All users with access to this
        # experience will receive the notification. Clicking the notification opens the
        # experience view.
        experience_id:,
        # The unique identifier of a user whose profile picture will be used as the
        # notification icon. Defaults to the experience or company avatar when not
        # provided.
        icon_user_id: nil,
        # A path segment appended to the generated deep link that opens your app. Use
        # [restPath] in your app path configuration to read this parameter. For example,
        # '/settings/billing'.
        rest_path: nil,
        # An optional secondary line of text displayed below the title in the
        # notification.
        subtitle: nil,
        # An optional list of user IDs to narrow the audience. When provided, only these
        # users receive the notification, provided they are in the targeted experience or
        # company.
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

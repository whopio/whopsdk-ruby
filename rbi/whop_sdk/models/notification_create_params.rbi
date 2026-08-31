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

      # Main body text of the notification.
      sig { returns(String) }
      attr_accessor :content

      # Headline text of the notification.
      sig { returns(String) }
      attr_accessor :title

      # Account whose team members receive the notification (`biz_` tag). Exactly one of
      # `experience_id` or `account_id` is required.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Experience whose users receive the notification (`exp_` tag). Exactly one of
      # `experience_id` or `account_id` is required.
      sig { returns(T.nilable(String)) }
      attr_reader :experience_id

      sig { params(experience_id: String).void }
      attr_writer :experience_id

      # User whose profile picture is used as the notification icon. Defaults to the
      # experience or account avatar.
      sig { returns(T.nilable(String)) }
      attr_accessor :icon_user_id

      # Path segment appended to the generated deep link that opens your app, for
      # example `/settings/billing`.
      sig { returns(T.nilable(String)) }
      attr_accessor :rest_path

      # Optional secondary line displayed below the title.
      sig { returns(T.nilable(String)) }
      attr_accessor :subtitle

      # Optional `user_` tags narrowing the audience. When provided, only these users
      # are notified (as a mention), provided they are in the targeted experience or
      # account.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_ids

      sig { params(user_ids: T::Array[String]).void }
      attr_writer :user_ids

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          content: String,
          title: String,
          account_id: String,
          experience_id: String,
          icon_user_id: T.nilable(String),
          rest_path: T.nilable(String),
          subtitle: T.nilable(String),
          user_ids: T::Array[String],
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Main body text of the notification.
        content:,
        # Headline text of the notification.
        title:,
        # Account whose team members receive the notification (`biz_` tag). Exactly one of
        # `experience_id` or `account_id` is required.
        account_id: nil,
        # Experience whose users receive the notification (`exp_` tag). Exactly one of
        # `experience_id` or `account_id` is required.
        experience_id: nil,
        # User whose profile picture is used as the notification icon. Defaults to the
        # experience or account avatar.
        icon_user_id: nil,
        # Path segment appended to the generated deep link that opens your app, for
        # example `/settings/billing`.
        rest_path: nil,
        # Optional secondary line displayed below the title.
        subtitle: nil,
        # Optional `user_` tags narrowing the audience. When provided, only these users
        # are notified (as a mention), provided they are in the targeted experience or
        # account.
        user_ids: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            content: String,
            title: String,
            account_id: String,
            experience_id: String,
            icon_user_id: T.nilable(String),
            rest_path: T.nilable(String),
            subtitle: T.nilable(String),
            user_ids: T::Array[String],
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

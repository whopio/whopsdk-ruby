# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Notifications#create
    class NotificationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute content
      #   Main body text of the notification.
      #
      #   @return [String]
      required :content, String

      # @!attribute title
      #   Headline text of the notification.
      #
      #   @return [String]
      required :title, String

      # @!attribute account_id
      #   Account whose team members receive the notification (`biz_` tag). Exactly one of
      #   `experience_id` or `account_id` is required.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute experience_id
      #   Experience whose users receive the notification (`exp_` tag). Exactly one of
      #   `experience_id` or `account_id` is required.
      #
      #   @return [String, nil]
      optional :experience_id, String

      # @!attribute icon_user_id
      #   User whose profile picture is used as the notification icon. Defaults to the
      #   experience or account avatar.
      #
      #   @return [String, nil]
      optional :icon_user_id, String, nil?: true

      # @!attribute rest_path
      #   Path segment appended to the generated deep link that opens your app, for
      #   example `/settings/billing`.
      #
      #   @return [String, nil]
      optional :rest_path, String, nil?: true

      # @!attribute subtitle
      #   Optional secondary line displayed below the title.
      #
      #   @return [String, nil]
      optional :subtitle, String, nil?: true

      # @!attribute user_ids
      #   Optional `user_` tags narrowing the audience. When provided, only these users
      #   are notified (as a mention), provided they are in the targeted experience or
      #   account.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(content:, title:, account_id: nil, experience_id: nil, icon_user_id: nil, rest_path: nil, subtitle: nil, user_ids: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::NotificationCreateParams} for more details.
      #
      #   @param content [String] Main body text of the notification.
      #
      #   @param title [String] Headline text of the notification.
      #
      #   @param account_id [String] Account whose team members receive the notification (`biz_` tag). Exactly one of
      #
      #   @param experience_id [String] Experience whose users receive the notification (`exp_` tag). Exactly one of `ex
      #
      #   @param icon_user_id [String, nil] User whose profile picture is used as the notification icon. Defaults to the exp
      #
      #   @param rest_path [String, nil] Path segment appended to the generated deep link that opens your app, for exampl
      #
      #   @param subtitle [String, nil] Optional secondary line displayed below the title.
      #
      #   @param user_ids [Array<String>] Optional `user_` tags narrowing the audience. When provided, only these users ar
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

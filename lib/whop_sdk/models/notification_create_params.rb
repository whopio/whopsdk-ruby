# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Notifications#create
    class NotificationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to target. Only team members of this
      #   company will receive the notification. Clicking the notification opens your
      #   dashboard app view.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute content
      #   The main body text of the notification displayed to the user.
      #
      #   @return [String]
      required :content, String

      # @!attribute title
      #   The headline text of the notification, displayed prominently to the user.
      #
      #   @return [String]
      required :title, String

      # @!attribute icon_user_id
      #   The unique identifier of a user whose profile picture will be used as the
      #   notification icon. Defaults to the experience or company avatar when not
      #   provided.
      #
      #   @return [String, nil]
      optional :icon_user_id, String, nil?: true

      # @!attribute rest_path
      #   A path segment appended to the generated deep link that opens your app. Use
      #   [restPath] in your app path configuration to read this parameter. For example,
      #   '/settings/billing'.
      #
      #   @return [String, nil]
      optional :rest_path, String, nil?: true

      # @!attribute subtitle
      #   An optional secondary line of text displayed below the title in the
      #   notification.
      #
      #   @return [String, nil]
      optional :subtitle, String, nil?: true

      # @!attribute user_ids
      #   An optional list of user IDs to narrow the audience. When provided, only these
      #   users receive the notification, provided they are in the targeted experience or
      #   company.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute experience_id
      #   The unique identifier of the experience to target. All users with access to this
      #   experience will receive the notification. Clicking the notification opens the
      #   experience view.
      #
      #   @return [String]
      required :experience_id, String

      # @!method initialize(company_id:, content:, title:, experience_id:, icon_user_id: nil, rest_path: nil, subtitle: nil, user_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::NotificationCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to target. Only team members of this compan
      #
      #   @param content [String] The main body text of the notification displayed to the user.
      #
      #   @param title [String] The headline text of the notification, displayed prominently to the user.
      #
      #   @param experience_id [String] The unique identifier of the experience to target. All users with access to this
      #
      #   @param icon_user_id [String, nil] The unique identifier of a user whose profile picture will be used as the notifi
      #
      #   @param rest_path [String, nil] A path segment appended to the generated deep link that opens your app. Use [res
      #
      #   @param subtitle [String, nil] An optional secondary line of text displayed below the title in the notification
      #
      #   @param user_ids [Array<String>, nil] An optional list of user IDs to narrow the audience. When provided, only these u
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Notifications#create
    class NotificationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The id of the company to target. Only team members of this company will receive
      #   the notification. When clicked will take the user to your dashboard app view.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute content
      #   The content of the notification
      #
      #   @return [String]
      required :content, String

      # @!attribute title
      #   The title of the notification
      #
      #   @return [String]
      required :title, String

      # @!attribute icon_user_id
      #   Optional: ID of a Whop user whose profile picture will be used as the
      #   notification icon. If not provided, defaults to the experience or company
      #   avatar.
      #
      #   @return [String, nil]
      optional :icon_user_id, String, nil?: true

      # @!attribute rest_path
      #   The rest path to append to the generated deep link that opens your app. Use
      #   [restPath] in your app path in the dashboard to read this parameter.
      #
      #   @return [String, nil]
      optional :rest_path, String, nil?: true

      # @!attribute subtitle
      #   The subtitle of the notification
      #
      #   @return [String, nil]
      optional :subtitle, String, nil?: true

      # @!attribute user_ids
      #   If provided, this will only send to these users if they are also in the main
      #   scope (experience or company)
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute experience_id
      #   The id of the experience to target. All users with access to this experience
      #   (customers and admins) will receive the notification. When clicked, open your
      #   experience view.
      #
      #   @return [String]
      required :experience_id, String

      # @!method initialize(company_id:, content:, title:, experience_id:, icon_user_id: nil, rest_path: nil, subtitle: nil, user_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::NotificationCreateParams} for more details.
      #
      #   @param company_id [String] The id of the company to target. Only team members of this company will receive
      #
      #   @param content [String] The content of the notification
      #
      #   @param title [String] The title of the notification
      #
      #   @param experience_id [String] The id of the experience to target. All users with access to this experience (cu
      #
      #   @param icon_user_id [String, nil] Optional: ID of a Whop user whose profile picture will be used as the notificati
      #
      #   @param rest_path [String, nil] The rest path to append to the generated deep link that opens your app. Use [res
      #
      #   @param subtitle [String, nil] The subtitle of the notification
      #
      #   @param user_ids [Array<String>, nil] If provided, this will only send to these users if they are also in the main sco
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

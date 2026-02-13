# typed: strong

module WhopSDK
  module Resources
    class Notifications
      # Send a push notification to users in an experience or company team. The
      # notification is processed asynchronously and supports targeting specific users.
      #
      # Required permissions:
      #
      # - `notification:create`
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
        ).returns(WhopSDK::Models::NotificationCreateResponse)
      end
      def create(
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

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

# typed: strong

module WhopSDK
  module Resources
    class Notifications
      # Queues a notification to be sent to users in an experience or company team
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

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

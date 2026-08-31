# typed: strong

module WhopSDK
  module Resources
    # A Notification is a message delivered to a user — a new post, a payment, a
    # mention. Every notification comes from an experience the user belongs to or a
    # team they are on, and users control what they receive with notification
    # preferences.
    #
    # Every notification belongs to a topic: the category it falls under, such as new
    # sales or account activity. Topics carry a default, so a user only needs a
    # preference row where they diverge from it. `GET /notifications/topics` lists the
    # platform's visible topics, and a topic's `id` is what the notification
    # preference endpoints take as `topic_id` — the catalog is the only place those
    # ids come from, so read it rather than hardcoding. Each topic also carries an
    # `identifier` such as `new-follower`, which is stable across environments and is
    # the value to match on in code.
    #
    # Use the Notifications API to list the authenticated user's feed, read
    # per-experience unread badges, mark an experience (or everything) as read, send
    # notifications from your app to an experience's users or an account's team, and
    # list the topic catalog.
    class Notifications
      # Queues a notification to every user of an experience or to an account's team,
      # processed asynchronously. Every send is attributed to an app: use an app API
      # key, or a credential acting on behalf of an app. Narrow the audience with
      # `user_ids` to send a mention.
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
        ).returns(WhopSDK::Models::NotificationCreateResponse)
      end
      def create(
        # Body param: Main body text of the notification.
        content:,
        # Body param: Headline text of the notification.
        title:,
        # Body param: Account whose team members receive the notification (`biz_` tag).
        # Exactly one of `experience_id` or `account_id` is required.
        account_id: nil,
        # Body param: Experience whose users receive the notification (`exp_` tag).
        # Exactly one of `experience_id` or `account_id` is required.
        experience_id: nil,
        # Body param: User whose profile picture is used as the notification icon.
        # Defaults to the experience or account avatar.
        icon_user_id: nil,
        # Body param: Path segment appended to the generated deep link that opens your
        # app, for example `/settings/billing`.
        rest_path: nil,
        # Body param: Optional secondary line displayed below the title.
        subtitle: nil,
        # Body param: Optional `user_` tags narrowing the audience. When provided, only
        # these users are notified (as a mention), provided they are in the targeted
        # experience or account.
        user_ids: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
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

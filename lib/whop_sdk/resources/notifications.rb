# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::NotificationCreateParams} for more details.
      #
      # Queues a notification to every user of an experience or to an account's team,
      # processed asynchronously. Every send is attributed to an app: use an app API
      # key, or a credential acting on behalf of an app. Narrow the audience with
      # `user_ids` to send a mention.
      #
      # @overload create(content:, title:, account_id: nil, experience_id: nil, icon_user_id: nil, rest_path: nil, subtitle: nil, user_ids: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param content [String] Body param: Main body text of the notification.
      #
      # @param title [String] Body param: Headline text of the notification.
      #
      # @param account_id [String] Body param: Account whose team members receive the notification (`biz_` tag). Ex
      #
      # @param experience_id [String] Body param: Experience whose users receive the notification (`exp_` tag). Exactl
      #
      # @param icon_user_id [String, nil] Body param: User whose profile picture is used as the notification icon. Default
      #
      # @param rest_path [String, nil] Body param: Path segment appended to the generated deep link that opens your app
      #
      # @param subtitle [String, nil] Body param: Optional secondary line displayed below the title.
      #
      # @param user_ids [Array<String>] Body param: Optional `user_` tags narrowing the audience. When provided, only th
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::NotificationCreateResponse]
      #
      # @see WhopSDK::Models::NotificationCreateParams
      def create(params)
        parsed, options = WhopSDK::NotificationCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "notifications",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Models::NotificationCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

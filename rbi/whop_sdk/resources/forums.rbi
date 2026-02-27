# typed: strong

module WhopSDK
  module Resources
    # Forums
    class Forums
      # Retrieves the details of an existing forum.
      #
      # Required permissions:
      #
      # - `forum:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Forum)
      end
      def retrieve(
        # The unique identifier of the forum or experience to retrieve.
        id,
        request_options: {}
      )
      end

      # Update moderation and notification settings for a forum, such as who can post,
      # who can comment, and email notification preferences.
      #
      # Required permissions:
      #
      # - `forum:moderate`
      sig do
        params(
          id: String,
          email_notification_preference:
            T.nilable(WhopSDK::EmailNotificationPreferences::OrSymbol),
          who_can_comment: T.nilable(WhopSDK::WhoCanCommentTypes::OrSymbol),
          who_can_post: T.nilable(WhopSDK::WhoCanPostTypes::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Forum)
      end
      def update(
        # The unique identifier of the forum to update. Accepts either an experience ID
        # (e.g. 'exp_xxxxx') or a forum ID.
        id,
        # Email notification preference option for a forum feed
        email_notification_preference: nil,
        # Who can comment on a forum feed
        who_can_comment: nil,
        # Who can post on a forum feed
        who_can_post: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of forums within a specific company, with optional
      # filtering by product.
      #
      # Required permissions:
      #
      # - `forum:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          product_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::ForumListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list forums for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of a product to filter by. When set, only forums connected
        # to this product are returned.
        product_id: nil,
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

# frozen_string_literal: true

module WhopSDK
  module Resources
    # Forums
    class Forums
      # Retrieves the details of an existing forum.
      #
      # Required permissions:
      #
      # - `forum:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the forum or experience to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Forum]
      #
      # @see WhopSDK::Models::ForumRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["forums/%1$s", id],
          model: WhopSDK::Forum,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ForumUpdateParams} for more details.
      #
      # Update moderation and notification settings for a forum, such as who can post,
      # who can comment, and email notification preferences.
      #
      # Required permissions:
      #
      # - `forum:moderate`
      #
      # @overload update(id, email_notification_preference: nil, who_can_comment: nil, who_can_post: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the forum to update. Accepts either an experience ID (e
      #
      # @param email_notification_preference [Symbol, WhopSDK::Models::EmailNotificationPreferences, nil] Email notification preference option for a forum feed
      #
      # @param who_can_comment [Symbol, WhopSDK::Models::WhoCanCommentTypes, nil] Who can comment on a forum feed
      #
      # @param who_can_post [Symbol, WhopSDK::Models::WhoCanPostTypes, nil] Who can post on a forum feed
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Forum]
      #
      # @see WhopSDK::Models::ForumUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::ForumUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["forums/%1$s", id],
          body: parsed,
          model: WhopSDK::Forum,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ForumListParams} for more details.
      #
      # Returns a paginated list of forums within a specific company, with optional
      # filtering by product.
      #
      # Required permissions:
      #
      # - `forum:read`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, product_id: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list forums for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param product_id [String, nil] The unique identifier of a product to filter by. When set, only forums connected
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ForumListResponse>]
      #
      # @see WhopSDK::Models::ForumListParams
      def list(params)
        parsed, options = WhopSDK::ForumListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "forums",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ForumListResponse,
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

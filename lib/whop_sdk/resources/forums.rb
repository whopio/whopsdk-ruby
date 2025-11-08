# frozen_string_literal: true

module WhopSDK
  module Resources
    class Forums
      # Retrieves a forum
      #
      # Required permissions:
      #
      # - `forum:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the forum to fetch, it can be an experience ID or a forum ID
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

      # Updates a forum
      #
      # Required permissions:
      #
      # - `forum:moderate`
      #
      # @overload update(id, email_notification_preference: nil, who_can_comment: nil, who_can_post: nil, request_options: {})
      #
      # @param id [String] Experience ID (exp\_\*) or Forum external ID
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

      # Lists forums inside a company
      #
      # Required permissions:
      #
      # - `forum:read`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, product_id: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list forums for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param product_id [String, nil] If provided, only forums connected to this product are returned
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ForumListResponse>]
      #
      # @see WhopSDK::Models::ForumListParams
      def list(params)
        parsed, options = WhopSDK::ForumListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "forums",
          query: parsed,
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

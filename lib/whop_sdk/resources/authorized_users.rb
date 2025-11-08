# frozen_string_literal: true

module WhopSDK
  module Resources
    class AuthorizedUsers
      # Retrieves a authorized user by ID
      #
      # Required permissions:
      #
      # - `company:authorized_user:read`
      # - `member:email:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the authorized user
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AuthorizedUserRetrieveResponse]
      #
      # @see WhopSDK::Models::AuthorizedUserRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["authorized_users/%1$s", id],
          model: WhopSDK::Models::AuthorizedUserRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists authorized users
      #
      # Required permissions:
      #
      # - `company:authorized_user:read`
      # - `member:email:read`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, role: nil, user_id: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list authorized users for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param role [Symbol, WhopSDK::Models::AuthorizedUserRoles, nil] Possible roles an authorized user can have
      #
      # @param user_id [String, nil] Filter by the user ID to check if the user is an authorized user
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AuthorizedUserListResponse>]
      #
      # @see WhopSDK::Models::AuthorizedUserListParams
      def list(params)
        parsed, options = WhopSDK::AuthorizedUserListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "authorized_users",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AuthorizedUserListResponse,
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

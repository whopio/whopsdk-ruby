# frozen_string_literal: true

module WhopSDK
  module Resources
    class AuthorizedUsers
      # Retrieves the details of an existing authorized user.
      #
      # Required permissions:
      #
      # - `company:authorized_user:read`
      # - `member:email:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the authorized user to retrieve.
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AuthorizedUserListParams} for more details.
      #
      # Returns a paginated list of authorized team members for a company, with optional
      # filtering by user, role, and creation date.
      #
      # Required permissions:
      #
      # - `company:authorized_user:read`
      # - `member:email:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, last: nil, role: nil, user_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The unique identifier of the company to list authorized users for.
      #
      # @param created_after [Time, nil] Only return authorized users created after this timestamp.
      #
      # @param created_before [Time, nil] Only return authorized users created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param role [Symbol, WhopSDK::Models::AuthorizedUserRoles, nil] Possible roles an authorized user can have
      #
      # @param user_id [String, nil] Filter results to a specific user to check if they are an authorized team member
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AuthorizedUserListResponse>]
      #
      # @see WhopSDK::Models::AuthorizedUserListParams
      def list(params = {})
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

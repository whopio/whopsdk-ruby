# frozen_string_literal: true

module WhopSDK
  module Resources
    # Authorized users
    class AuthorizedUsers
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AuthorizedUserCreateParams} for more details.
      #
      # Add a new authorized user to a company.
      #
      # Required permissions:
      #
      # - `authorized_user:create`
      # - `member:email:read`
      #
      # @overload create(company_id:, role:, user_id:, send_emails: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to add the authorized user to.
      #
      # @param role [Symbol, WhopSDK::Models::AuthorizedUserRoles] The role to assign to the authorized user within the company. Supported roles: '
      #
      # @param user_id [String] The ID of the user to add as an authorized user.
      #
      # @param send_emails [Boolean, nil] Whether to send notification emails to the user on creation.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AuthorizedUser]
      #
      # @see WhopSDK::Models::AuthorizedUserCreateParams
      def create(params)
        parsed, options = WhopSDK::AuthorizedUserCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "authorized_users",
          body: parsed,
          model: WhopSDK::AuthorizedUser,
          options: options
        )
      end

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
      # @return [WhopSDK::Models::AuthorizedUser]
      #
      # @see WhopSDK::Models::AuthorizedUserRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["authorized_users/%1$s", id],
          model: WhopSDK::AuthorizedUser,
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
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "authorized_users",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AuthorizedUserListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AuthorizedUserDeleteParams} for more details.
      #
      # Remove an authorized user from a company.
      #
      # Required permissions:
      #
      # - `authorized_user:delete`
      #
      # @overload delete(id, company_id: nil, request_options: {})
      #
      # @param id [String] The ID of the authorized user or user to remove.
      #
      # @param company_id [String, nil] The ID of the company the authorized user belongs to. Optional if the authorized
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::AuthorizedUserDeleteParams
      def delete(id, params = {})
        parsed, options = WhopSDK::AuthorizedUserDeleteParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :delete,
          path: ["authorized_users/%1$s", id],
          query: query,
          model: WhopSDK::Internal::Type::Boolean,
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

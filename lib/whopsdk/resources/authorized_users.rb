# frozen_string_literal: true

module Whopsdk
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
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::AuthorizedUserRetrieveResponse]
      #
      # @see Whopsdk::Models::AuthorizedUserRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["authorized_users/%1$s", id],
          model: Whopsdk::Models::AuthorizedUserRetrieveResponse,
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
      # @param role [Symbol, Whopsdk::Models::AuthorizedUserRoles, nil] Possible roles an authorized user can have
      #
      # @param user_id [String, nil] Filter by the user ID to check if the user is an authorized user
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::AuthorizedUserListResponse, nil>]
      #
      # @see Whopsdk::Models::AuthorizedUserListParams
      def list(params)
        parsed, options = Whopsdk::AuthorizedUserListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "authorized_users",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::AuthorizedUserListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end

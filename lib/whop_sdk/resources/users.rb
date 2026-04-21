# frozen_string_literal: true

module WhopSDK
  module Resources
    # Users
    class Users
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserRetrieveParams} for more details.
      #
      # Retrieves the details of an existing user.
      #
      # @overload retrieve(id, company_id: nil, request_options: {})
      #
      # @param id [String] The unique identifier or username of the user.
      #
      # @param company_id [String, nil] When provided, returns the user's company-specific profile overrides (name, prof
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::UserRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["users/%1$s", id],
          query: query,
          model: WhopSDK::User,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserUpdateParams} for more details.
      #
      # Update a user's profile by their ID.
      #
      # Required permissions:
      #
      # - `user:profile:update`
      #
      # @overload update(id, bio: nil, company_id: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the user to update. Accepts 'me', a user tag, or a user
      #
      # @param bio [String, nil] A short biography displayed on the user's public profile.
      #
      # @param company_id [String, nil] When provided, updates the user's profile overrides for this company instead of
      #
      # @param name [String, nil] The user's display name shown on their public profile. Maximum 100 characters.
      #
      # @param profile_picture [WhopSDK::Models::UserUpdateParams::ProfilePicture, nil] The user's profile picture image attachment.
      #
      # @param username [String, nil] The user's unique username. Alphanumeric characters and hyphens only. Maximum 42
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::UserUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["users/%1$s", id],
          body: parsed,
          model: WhopSDK::User,
          options: options
        )
      end

      # Search for users by name or username, ranked by social proximity to the
      # authenticated user.
      #
      # @overload list(after: nil, before: nil, first: nil, last: nil, query: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param query [String, nil] Search term to filter by name or username.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::UserListResponse>]
      #
      # @see WhopSDK::Models::UserListParams
      def list(params = {})
        parsed, options = WhopSDK::UserListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "users",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::UserListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserCheckAccessParams} for more details.
      #
      # Check whether a user has access to a specific resource, and return their access
      # level.
      #
      # @overload check_access(resource_id, id:, request_options: {})
      #
      # @param resource_id [String] The unique identifier of the resource to check access for. Accepts a company, pr
      #
      # @param id [String] The unique identifier or username of the user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::UserCheckAccessResponse]
      #
      # @see WhopSDK::Models::UserCheckAccessParams
      def check_access(resource_id, params)
        parsed, options = WhopSDK::UserCheckAccessParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["users/%1$s/access/%2$s", id, resource_id],
          model: WhopSDK::Models::UserCheckAccessResponse,
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

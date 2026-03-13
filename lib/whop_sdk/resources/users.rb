# frozen_string_literal: true

module WhopSDK
  module Resources
    # Users
    class Users
      # Retrieves the details of an existing user.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier or username of the user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["users/%1$s", id],
          model: WhopSDK::User,
          options: params[:request_options]
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserUpdateProfileParams} for more details.
      #
      # Update the currently authenticated user's profile.
      #
      # Required permissions:
      #
      # - `user:profile:update`
      #
      # @overload update_profile(bio: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #
      # @param bio [String, nil] A short biography displayed on the user's public profile.
      #
      # @param name [String, nil] The user's display name shown on their public profile. Maximum 100 characters.
      #
      # @param profile_picture [WhopSDK::Models::UserUpdateProfileParams::ProfilePicture, nil] The user's profile picture image attachment.
      #
      # @param username [String, nil] The user's unique username. Alphanumeric characters and hyphens only. Maximum 42
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::User]
      #
      # @see WhopSDK::Models::UserUpdateProfileParams
      def update_profile(params = {})
        parsed, options = WhopSDK::UserUpdateProfileParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "users/me",
          body: parsed,
          model: WhopSDK::User,
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

# frozen_string_literal: true

module WhopSDK
  module Resources
    class Users
      # Retrieves a user by ID or username
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID (user_xxx) or username of the user
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::UserCheckAccessParams} for more details.
      #
      # Check if a user has access (and their access level) to a resource
      #
      # @overload check_access(resource_id, id:, request_options: {})
      #
      # @param resource_id [String] The ID of the resource. Can be a company (biz_xxx), product (prod_xxx), or exper
      #
      # @param id [String] The ID (user_xxx) or username of the user
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

      # Updates the current user's profile
      #
      # Required permissions:
      #
      # - `user:profile:update`
      #
      # @overload update_profile(bio: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #
      # @param bio [String, nil] User biography
      #
      # @param name [String, nil] Display name
      #
      # @param profile_picture [WhopSDK::Models::UserUpdateProfileParams::ProfilePicture, nil] Profile picture
      #
      # @param username [String, nil] Username (alphanumeric and hyphens)
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

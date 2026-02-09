# typed: strong

module WhopSDK
  module Resources
    class Users
      # Retrieves a user by ID or username
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def retrieve(
        # The ID (user_xxx) or username of the user
        id,
        request_options: {}
      )
      end

      # Check if a user has access (and their access level) to a resource
      sig do
        params(
          resource_id: String,
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::UserCheckAccessResponse)
      end
      def check_access(
        # The ID of the resource. Can be a company (biz_xxx), product (prod_xxx), or
        # experience (exp_xxx)
        resource_id,
        # The ID (user_xxx) or username of the user
        id:,
        request_options: {}
      )
      end

      # Updates the current user's profile
      #
      # Required permissions:
      #
      # - `user:profile:update`
      sig do
        params(
          bio: T.nilable(String),
          name: T.nilable(String),
          profile_picture:
            T.nilable(WhopSDK::UserUpdateProfileParams::ProfilePicture::OrHash),
          username: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::User)
      end
      def update_profile(
        # User biography
        bio: nil,
        # Display name
        name: nil,
        # Profile picture
        profile_picture: nil,
        # Username (alphanumeric and hyphens)
        username: nil,
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

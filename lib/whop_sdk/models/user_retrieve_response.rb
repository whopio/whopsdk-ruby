# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#retrieve
    class UserRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the user.
      #
      #   @return [String]
      required :id, String

      # @!attribute bio
      #   The user's bio
      #
      #   @return [String, nil]
      required :bio, String, nil?: true

      # @!attribute created_at
      #   When the user was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The name of the user from their Whop account.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute profile_picture
      #   The user's profile picture
      #
      #   @return [WhopSDK::Models::UserRetrieveResponse::ProfilePicture, nil]
      required :profile_picture, -> { WhopSDK::Models::UserRetrieveResponse::ProfilePicture }, nil?: true

      # @!attribute username
      #   The username of the user from their Whop account.
      #
      #   @return [String]
      required :username, String

      # @!method initialize(id:, bio:, created_at:, name:, profile_picture:, username:)
      #   An object representing a (sanitized) user of the site.
      #
      #   @param id [String] The internal ID of the user.
      #
      #   @param bio [String, nil] The user's bio
      #
      #   @param created_at [Time] When the user was created.
      #
      #   @param name [String, nil] The name of the user from their Whop account.
      #
      #   @param profile_picture [WhopSDK::Models::UserRetrieveResponse::ProfilePicture, nil] The user's profile picture
      #
      #   @param username [String] The username of the user from their Whop account.

      # @see WhopSDK::Models::UserRetrieveResponse#profile_picture
      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::UserRetrieveResponse::ProfilePicture} for more details.
        #
        #   The user's profile picture
        #
        #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
      end
    end
  end
end

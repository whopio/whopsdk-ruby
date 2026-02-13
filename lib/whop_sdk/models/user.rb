# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#retrieve
    class User < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the user.
      #
      #   @return [String]
      required :id, String

      # @!attribute bio
      #   A short biography written by the user, displayed on their public profile.
      #
      #   @return [String, nil]
      required :bio, String, nil?: true

      # @!attribute created_at
      #   The datetime the user was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The user's display name shown on their public profile.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute profile_picture
      #   The user's profile picture attachment with URL, content type, and file metadata.
      #   Null if using a legacy profile picture.
      #
      #   @return [WhopSDK::Models::User::ProfilePicture, nil]
      required :profile_picture, -> { WhopSDK::User::ProfilePicture }, nil?: true

      # @!attribute username
      #   The user's unique username shown on their public profile.
      #
      #   @return [String]
      required :username, String

      # @!method initialize(id:, bio:, created_at:, name:, profile_picture:, username:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::User}
      #   for more details.
      #
      #   A user account on Whop. Contains profile information, identity details, and
      #   social connections.
      #
      #   @param id [String] The unique identifier for the user.
      #
      #   @param bio [String, nil] A short biography written by the user, displayed on their public profile.
      #
      #   @param created_at [Time] The datetime the user was created.
      #
      #   @param name [String, nil] The user's display name shown on their public profile.
      #
      #   @param profile_picture [WhopSDK::Models::User::ProfilePicture, nil] The user's profile picture attachment with URL, content type, and file metadata.
      #
      #   @param username [String] The user's unique username shown on their public profile.

      # @see WhopSDK::Models::User#profile_picture
      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::User::ProfilePicture} for more details.
        #
        #   The user's profile picture attachment with URL, content type, and file metadata.
        #   Null if using a legacy profile picture.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end
    end
  end
end

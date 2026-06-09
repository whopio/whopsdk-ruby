# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#retrieve
    class User < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the user, which will look like user\_******\*******
      #
      #   @return [String]
      required :id, String

      # @!attribute bio
      #   The user's biography
      #
      #   @return [String, nil]
      required :bio, String, nil?: true

      # @!attribute created_at
      #   When the user was created, as an ISO 8601 timestamp
      #
      #   @return [String]
      required :created_at, String

      # @!attribute name
      #   The user's display name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute profile_picture
      #   The user's profile picture, an object with a url
      #
      #   @return [Object, nil]
      required :profile_picture, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute username
      #   The user's unique username
      #
      #   @return [String]
      required :username, String

      # @!method initialize(id:, bio:, created_at:, name:, profile_picture:, username:)
      #   @param id [String] The ID of the user, which will look like user\_******\*******
      #
      #   @param bio [String, nil] The user's biography
      #
      #   @param created_at [String] When the user was created, as an ISO 8601 timestamp
      #
      #   @param name [String, nil] The user's display name
      #
      #   @param profile_picture [Object, nil] The user's profile picture, an object with a url
      #
      #   @param username [String] The user's unique username
    end
  end
end

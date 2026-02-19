# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#update_profile
    class UserUpdateProfileParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute bio
      #   A short biography displayed on the user's public profile.
      #
      #   @return [String, nil]
      optional :bio, String, nil?: true

      # @!attribute name
      #   The user's display name shown on their public profile. Maximum 100 characters.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute profile_picture
      #   The user's profile picture image attachment.
      #
      #   @return [WhopSDK::Models::UserUpdateProfileParams::ProfilePicture, nil]
      optional :profile_picture, -> { WhopSDK::UserUpdateProfileParams::ProfilePicture }, nil?: true

      # @!attribute username
      #   The user's unique username. Alphanumeric characters and hyphens only. Maximum 42
      #   characters.
      #
      #   @return [String, nil]
      optional :username, String, nil?: true

      # @!method initialize(bio: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::UserUpdateProfileParams} for more details.
      #
      #   @param bio [String, nil] A short biography displayed on the user's public profile.
      #
      #   @param name [String, nil] The user's display name shown on their public profile. Maximum 100 characters.
      #
      #   @param profile_picture [WhopSDK::Models::UserUpdateProfileParams::ProfilePicture, nil] The user's profile picture image attachment.
      #
      #   @param username [String, nil] The user's unique username. Alphanumeric characters and hyphens only. Maximum 42
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The user's profile picture image attachment.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end

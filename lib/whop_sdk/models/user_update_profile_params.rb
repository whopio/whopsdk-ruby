# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#update_profile
    class UserUpdateProfileParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute bio
      #   User biography
      #
      #   @return [String, nil]
      optional :bio, String, nil?: true

      # @!attribute name
      #   Display name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute profile_picture
      #   Profile picture
      #
      #   @return [WhopSDK::Models::UserUpdateProfileParams::ProfilePicture, nil]
      optional :profile_picture, -> { WhopSDK::UserUpdateProfileParams::ProfilePicture }, nil?: true

      # @!attribute username
      #   Username (alphanumeric and hyphens)
      #
      #   @return [String, nil]
      optional :username, String, nil?: true

      # @!method initialize(bio: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #   @param bio [String, nil] User biography
      #
      #   @param name [String, nil] Display name
      #
      #   @param profile_picture [WhopSDK::Models::UserUpdateProfileParams::ProfilePicture, nil] Profile picture
      #
      #   @param username [String, nil] Username (alphanumeric and hyphens)
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Profile picture
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end

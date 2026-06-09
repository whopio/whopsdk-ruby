# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#update
    class UserUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute bio
      #   A short biography displayed on the user's public profile.
      #
      #   @return [String, nil]
      optional :bio, String, nil?: true

      # @!attribute company_id
      #   When provided, updates the user's profile overrides for this company instead of
      #   the global profile. Pass name and profile_picture to set overrides, or null to
      #   clear them.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute name
      #   The user's display name shown on their public profile. Maximum 100 characters.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute profile_picture
      #   The user's profile picture image attachment.
      #
      #   @return [WhopSDK::Models::UserUpdateParams::ProfilePicture, nil]
      optional :profile_picture, -> { WhopSDK::UserUpdateParams::ProfilePicture }, nil?: true

      # @!attribute username
      #   The user's unique username. Alphanumeric characters and hyphens only. Maximum 42
      #   characters.
      #
      #   @return [String, nil]
      optional :username, String, nil?: true

      # @!method initialize(id:, bio: nil, company_id: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::UserUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param bio [String, nil] A short biography displayed on the user's public profile.
      #
      #   @param company_id [String, nil] When provided, updates the user's profile overrides for this company instead of
      #
      #   @param name [String, nil] The user's display name shown on their public profile. Maximum 100 characters.
      #
      #   @param profile_picture [WhopSDK::Models::UserUpdateParams::ProfilePicture, nil] The user's profile picture image attachment.
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

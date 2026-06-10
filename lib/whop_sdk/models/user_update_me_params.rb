# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#update_me
    class UserUpdateMeParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   When set, updates the authenticated user's profile override for this account
      #   instead of their global profile.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute bio
      #
      #   @return [String, nil]
      optional :bio, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute profile_picture
      #
      #   @return [WhopSDK::Models::UserUpdateMeParams::ProfilePicture, nil]
      optional :profile_picture, -> { WhopSDK::UserUpdateMeParams::ProfilePicture }

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(account_id: nil, bio: nil, name: nil, profile_picture: nil, username: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::UserUpdateMeParams} for more details.
      #
      #   @param account_id [String] When set, updates the authenticated user's profile override for this account ins
      #
      #   @param bio [String]
      #
      #   @param name [String]
      #
      #   @param profile_picture [WhopSDK::Models::UserUpdateMeParams::ProfilePicture]
      #
      #   @param username [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute direct_upload_id
        #
        #   @return [String, nil]
        optional :direct_upload_id, String

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   @param id [String]
        #   @param direct_upload_id [String]
      end
    end
  end
end

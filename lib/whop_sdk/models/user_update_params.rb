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

      # @!attribute account_id
      #   The account whose profile override to update. Required for API key callers.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute banner
      #
      #   @return [WhopSDK::Models::UserUpdateParams::Banner, nil]
      optional :banner, -> { WhopSDK::UserUpdateParams::Banner }, nil?: true

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
      #   @return [WhopSDK::Models::UserUpdateParams::ProfilePicture, nil]
      optional :profile_picture, -> { WhopSDK::UserUpdateParams::ProfilePicture }

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(id:, account_id: nil, banner: nil, bio: nil, name: nil, profile_picture: nil, username: nil, api_version_date: nil, request_options: {})
      #   @param id [String]
      #
      #   @param account_id [String] The account whose profile override to update. Required for API key callers.
      #
      #   @param banner [WhopSDK::Models::UserUpdateParams::Banner, nil]
      #
      #   @param bio [String]
      #
      #   @param name [String]
      #
      #   @param profile_picture [WhopSDK::Models::UserUpdateParams::ProfilePicture]
      #
      #   @param username [String]
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Banner < WhopSDK::Internal::Type::BaseModel
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

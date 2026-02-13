# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AuthorizedUsers#list
    class AuthorizedUserListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the authorized user.
      #
      #   @return [String]
      required :id, String

      # @!attribute company
      #   The company this authorized user has access to.
      #
      #   @return [WhopSDK::Models::AuthorizedUserListResponse::Company]
      required :company, -> { WhopSDK::Models::AuthorizedUserListResponse::Company }

      # @!attribute role
      #   The permission role assigned to this authorized user within the company.
      #
      #   @return [Symbol, WhopSDK::Models::AuthorizedUserRoles]
      required :role, enum: -> { WhopSDK::AuthorizedUserRoles }

      # @!attribute user
      #   The user account linked to this authorized user record.
      #
      #   @return [WhopSDK::Models::AuthorizedUserListResponse::User]
      required :user, -> { WhopSDK::Models::AuthorizedUserListResponse::User }

      # @!method initialize(id:, company:, role:, user:)
      #   A user who has been granted administrative access to manage a company's
      #   dashboard and settings.
      #
      #   @param id [String] The unique identifier for the authorized user.
      #
      #   @param company [WhopSDK::Models::AuthorizedUserListResponse::Company] The company this authorized user has access to.
      #
      #   @param role [Symbol, WhopSDK::Models::AuthorizedUserRoles] The permission role assigned to this authorized user within the company.
      #
      #   @param user [WhopSDK::Models::AuthorizedUserListResponse::User] The user account linked to this authorized user record.

      # @see WhopSDK::Models::AuthorizedUserListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the company shown to customers.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company this authorized user has access to.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      # @see WhopSDK::Models::AuthorizedUserListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The user's email address. Requires the member:email:read permission to access.
        #   Null if not authorized.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, email:, name:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AuthorizedUserListResponse::User} for more details.
        #
        #   The user account linked to this authorized user record.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param email [String, nil] The user's email address. Requires the member:email:read permission to access. N
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end

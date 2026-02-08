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
      #   The company associated with the authorized user.
      #
      #   @return [WhopSDK::Models::AuthorizedUserListResponse::Company]
      required :company, -> { WhopSDK::Models::AuthorizedUserListResponse::Company }

      # @!attribute role
      #   The role of the authorized user in the company.
      #
      #   @return [Symbol, WhopSDK::Models::AuthorizedUserRoles]
      required :role, enum: -> { WhopSDK::AuthorizedUserRoles }

      # @!attribute user
      #   The user associated with the authorized user.
      #
      #   @return [WhopSDK::Models::AuthorizedUserListResponse::User]
      required :user, -> { WhopSDK::Models::AuthorizedUserListResponse::User }

      # @!method initialize(id:, company:, role:, user:)
      #   A user who has elevated security privileges for a company
      #
      #   @param id [String] The unique identifier for the authorized user.
      #
      #   @param company [WhopSDK::Models::AuthorizedUserListResponse::Company] The company associated with the authorized user.
      #
      #   @param role [Symbol, WhopSDK::Models::AuthorizedUserRoles] The role of the authorized user in the company.
      #
      #   @param user [WhopSDK::Models::AuthorizedUserListResponse::User] The user associated with the authorized user.

      # @see WhopSDK::Models::AuthorizedUserListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company associated with the authorized user.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The title of the company.
      end

      # @see WhopSDK::Models::AuthorizedUserListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The email of the user
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, email:, name:, username:)
        #   The user associated with the authorized user.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param email [String, nil] The email of the user
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end

# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::AuthorizedUsers#list
    class AuthorizedUserListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID representing the authorized user object.
      #
      #   @return [String]
      required :id, String

      # @!attribute role
      #   The role of the authorized user in the company.
      #
      #   @return [Symbol, Whopsdk::Models::AuthorizedUserRoles]
      required :role, enum: -> { Whopsdk::AuthorizedUserRoles }

      # @!attribute user
      #   The user associated with the authorized user.
      #
      #   @return [Whopsdk::Models::AuthorizedUserListResponse::User]
      required :user, -> { Whopsdk::Models::AuthorizedUserListResponse::User }

      # @!method initialize(id:, role:, user:)
      #   A user who has elevated security privileges for a company
      #
      #   @param id [String] A unique ID representing the authorized user object.
      #
      #   @param role [Symbol, Whopsdk::Models::AuthorizedUserRoles] The role of the authorized user in the company.
      #
      #   @param user [Whopsdk::Models::AuthorizedUserListResponse::User] The user associated with the authorized user.

      # @see Whopsdk::Models::AuthorizedUserListResponse#user
      class User < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
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
        #   @param id [String] The internal ID of the user.
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

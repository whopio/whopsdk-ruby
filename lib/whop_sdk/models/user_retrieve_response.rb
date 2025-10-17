# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#retrieve
    class UserRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the user.
      #
      #   @return [String]
      required :id, String

      # @!attribute bio
      #   The user's bio
      #
      #   @return [String, nil]
      required :bio, String, nil?: true

      # @!attribute created_at
      #   When the user was created.
      #
      #   @return [Time]
      required :created_at, Time

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

      # @!method initialize(id:, bio:, created_at:, name:, username:)
      #   An object representing a (sanitized) user of the site.
      #
      #   @param id [String] The internal ID of the user.
      #
      #   @param bio [String, nil] The user's bio
      #
      #   @param created_at [Time] When the user was created.
      #
      #   @param name [String, nil] The name of the user from their Whop account.
      #
      #   @param username [String] The username of the user from their Whop account.
    end
  end
end

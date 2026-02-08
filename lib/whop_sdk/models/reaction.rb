# frozen_string_literal: true

module WhopSDK
  module Models
    class Reaction < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute emoji
      #   The emoji that was used in shortcode format (:heart:)
      #
      #   @return [String, nil]
      required :emoji, String, nil?: true

      # @!attribute resource_id
      #   The ID of the post this reaction belongs to
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute user
      #   The user who reacted to the post
      #
      #   @return [WhopSDK::Models::Reaction::User]
      required :user, -> { WhopSDK::Reaction::User }

      # @!method initialize(id:, emoji:, resource_id:, user:)
      #   Represents a reaction to a feed post
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param emoji [String, nil] The emoji that was used in shortcode format (:heart:)
      #
      #   @param resource_id [String] The ID of the post this reaction belongs to
      #
      #   @param user [WhopSDK::Models::Reaction::User] The user who reacted to the post

      # @see WhopSDK::Models::Reaction#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

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

        # @!method initialize(id:, name:, username:)
        #   The user who reacted to the post
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end

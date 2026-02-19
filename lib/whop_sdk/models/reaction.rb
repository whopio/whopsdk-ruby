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
      #   The emoji used for this reaction in shortcode format. Null if the reaction type
      #   is not emoji.
      #
      #   @return [String, nil]
      required :emoji, String, nil?: true

      # @!attribute resource_id
      #   The unique identifier of the post this reaction was left on.
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute user
      #   The user who left this reaction on the post.
      #
      #   @return [WhopSDK::Models::Reaction::User]
      required :user, -> { WhopSDK::Reaction::User }

      # @!method initialize(id:, emoji:, resource_id:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Reaction} for more details.
      #
      #   A single reaction left by a user on a feed post, such as a like or emoji.
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param emoji [String, nil] The emoji used for this reaction in shortcode format. Null if the reaction type
      #
      #   @param resource_id [String] The unique identifier of the post this reaction was left on.
      #
      #   @param user [WhopSDK::Models::Reaction::User] The user who left this reaction on the post.

      # @see WhopSDK::Models::Reaction#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

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

        # @!method initialize(id:, name:, username:)
        #   The user who left this reaction on the post.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end

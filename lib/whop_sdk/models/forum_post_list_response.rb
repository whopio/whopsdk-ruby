# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ForumPosts#list
    class ForumPostListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute comment_count
      #   The total number of direct comments on this post.
      #
      #   @return [Integer]
      required :comment_count, Integer

      # @!attribute content
      #   The body of the forum post in Markdown format. Null if the post is paywalled and
      #   the current user does not have access.
      #
      #   @return [String, nil]
      required :content, String, nil?: true

      # @!attribute created_at
      #   The time this post was created, as a Unix timestamp.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_edited
      #   Whether this post has been edited after its initial creation.
      #
      #   @return [Boolean]
      required :is_edited, WhopSDK::Internal::Type::Boolean

      # @!attribute is_pinned
      #   Whether this post is pinned to the top of the forum feed.
      #
      #   @return [Boolean]
      required :is_pinned, WhopSDK::Internal::Type::Boolean

      # @!attribute is_poster_admin
      #   Whether the author of this post is an admin of the company that owns the forum.
      #
      #   @return [Boolean]
      required :is_poster_admin, WhopSDK::Internal::Type::Boolean

      # @!attribute like_count
      #   The total number of like reactions this post has received.
      #
      #   @return [Integer, nil]
      required :like_count, Integer, nil?: true

      # @!attribute parent_id
      #   The unique identifier of the parent post. Null if this is a top-level post.
      #
      #   @return [String, nil]
      required :parent_id, String, nil?: true

      # @!attribute title
      #   The headline of the forum post. Null if the post has no title.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   The time this post was last updated, as a Unix timestamp.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who authored this forum post.
      #
      #   @return [WhopSDK::Models::ForumPostListResponse::User]
      required :user, -> { WhopSDK::Models::ForumPostListResponse::User }

      # @!attribute view_count
      #   The total number of times this post has been viewed by users.
      #
      #   @return [Integer, nil]
      required :view_count, Integer, nil?: true

      # @!method initialize(id:, comment_count:, content:, created_at:, is_edited:, is_pinned:, is_poster_admin:, like_count:, parent_id:, title:, updated_at:, user:, view_count:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ForumPostListResponse} for more details.
      #
      #   A post or comment in a forum feed, supporting rich text, attachments, polls, and
      #   reactions.
      #
      #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param comment_count [Integer] The total number of direct comments on this post.
      #
      #   @param content [String, nil] The body of the forum post in Markdown format. Null if the post is paywalled and
      #
      #   @param created_at [Time] The time this post was created, as a Unix timestamp.
      #
      #   @param is_edited [Boolean] Whether this post has been edited after its initial creation.
      #
      #   @param is_pinned [Boolean] Whether this post is pinned to the top of the forum feed.
      #
      #   @param is_poster_admin [Boolean] Whether the author of this post is an admin of the company that owns the forum.
      #
      #   @param like_count [Integer, nil] The total number of like reactions this post has received.
      #
      #   @param parent_id [String, nil] The unique identifier of the parent post. Null if this is a top-level post.
      #
      #   @param title [String, nil] The headline of the forum post. Null if the post has no title.
      #
      #   @param updated_at [Time] The time this post was last updated, as a Unix timestamp.
      #
      #   @param user [WhopSDK::Models::ForumPostListResponse::User] The user who authored this forum post.
      #
      #   @param view_count [Integer, nil] The total number of times this post has been viewed by users.

      # @see WhopSDK::Models::ForumPostListResponse#user
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
        #   The user who authored this forum post.
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

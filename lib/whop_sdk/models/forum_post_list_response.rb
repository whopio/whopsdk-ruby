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
      #   The amount of comments on this post
      #
      #   @return [Integer]
      required :comment_count, Integer

      # @!attribute content
      #   The content of the forum post in Markdown format
      #
      #   @return [String, nil]
      required :content, String, nil?: true

      # @!attribute created_at
      #   The timestamp when the post was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_edited
      #   Whether the forum post has been edited
      #
      #   @return [Boolean]
      required :is_edited, WhopSDK::Internal::Type::Boolean

      # @!attribute is_pinned
      #   Whether this forum post is pinned
      #
      #   @return [Boolean]
      required :is_pinned, WhopSDK::Internal::Type::Boolean

      # @!attribute is_poster_admin
      #   Whether the user that sent the post is an admin of the company
      #
      #   @return [Boolean]
      required :is_poster_admin, WhopSDK::Internal::Type::Boolean

      # @!attribute like_count
      #   The number of likes this post has received
      #
      #   @return [Integer, nil]
      required :like_count, Integer, nil?: true

      # @!attribute parent_id
      #   The ID of the parent forum post, if applicable
      #
      #   @return [String, nil]
      required :parent_id, String, nil?: true

      # @!attribute title
      #   The title of the forum post
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   The timestamp when the post was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who created this forum post
      #
      #   @return [WhopSDK::Models::ForumPostListResponse::User]
      required :user, -> { WhopSDK::Models::ForumPostListResponse::User }

      # @!attribute view_count
      #   The number of times this message has been viewed
      #
      #   @return [Integer, nil]
      required :view_count, Integer, nil?: true

      # @!method initialize(id:, comment_count:, content:, created_at:, is_edited:, is_pinned:, is_poster_admin:, like_count:, parent_id:, title:, updated_at:, user:, view_count:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ForumPostListResponse} for more details.
      #
      #   Represents a post in forum
      #
      #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param comment_count [Integer] The amount of comments on this post
      #
      #   @param content [String, nil] The content of the forum post in Markdown format
      #
      #   @param created_at [Time] The timestamp when the post was created
      #
      #   @param is_edited [Boolean] Whether the forum post has been edited
      #
      #   @param is_pinned [Boolean] Whether this forum post is pinned
      #
      #   @param is_poster_admin [Boolean] Whether the user that sent the post is an admin of the company
      #
      #   @param like_count [Integer, nil] The number of likes this post has received
      #
      #   @param parent_id [String, nil] The ID of the parent forum post, if applicable
      #
      #   @param title [String, nil] The title of the forum post
      #
      #   @param updated_at [Time] The timestamp when the post was last updated
      #
      #   @param user [WhopSDK::Models::ForumPostListResponse::User] The user who created this forum post
      #
      #   @param view_count [Integer, nil] The number of times this message has been viewed

      # @see WhopSDK::Models::ForumPostListResponse#user
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
        #   The user who created this forum post
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

# typed: strong

module Whopsdk
  module Models
    class ForumPostListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::ForumPostListResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The amount of comments on this post
      sig { returns(Integer) }
      attr_accessor :comment_count

      # The content of the forum post in Markdown format
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Whether the forum post has been edited
      sig { returns(T::Boolean) }
      attr_accessor :is_edited

      # Whether this forum post is pinned
      sig { returns(T::Boolean) }
      attr_accessor :is_pinned

      # Whether the user that sent the post is an admin of the company
      sig { returns(T::Boolean) }
      attr_accessor :is_poster_admin

      # The number of likes this post has received
      sig { returns(T.nilable(Integer)) }
      attr_accessor :like_count

      # The ID of the parent forum post, if applicable
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_id

      # The title of the forum post
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The user who created this forum post
      sig { returns(Whopsdk::Models::ForumPostListResponse::User) }
      attr_reader :user

      sig do
        params(user: Whopsdk::Models::ForumPostListResponse::User::OrHash).void
      end
      attr_writer :user

      # The number of times this message has been viewed
      sig { returns(T.nilable(Integer)) }
      attr_accessor :view_count

      # Represents a post in forum
      sig do
        params(
          id: String,
          comment_count: Integer,
          content: T.nilable(String),
          is_edited: T::Boolean,
          is_pinned: T::Boolean,
          is_poster_admin: T::Boolean,
          like_count: T.nilable(Integer),
          parent_id: T.nilable(String),
          title: T.nilable(String),
          user: Whopsdk::Models::ForumPostListResponse::User::OrHash,
          view_count: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # The amount of comments on this post
        comment_count:,
        # The content of the forum post in Markdown format
        content:,
        # Whether the forum post has been edited
        is_edited:,
        # Whether this forum post is pinned
        is_pinned:,
        # Whether the user that sent the post is an admin of the company
        is_poster_admin:,
        # The number of likes this post has received
        like_count:,
        # The ID of the parent forum post, if applicable
        parent_id:,
        # The title of the forum post
        title:,
        # The user who created this forum post
        user:,
        # The number of times this message has been viewed
        view_count:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            comment_count: Integer,
            content: T.nilable(String),
            is_edited: T::Boolean,
            is_pinned: T::Boolean,
            is_poster_admin: T::Boolean,
            like_count: T.nilable(Integer),
            parent_id: T.nilable(String),
            title: T.nilable(String),
            user: Whopsdk::Models::ForumPostListResponse::User,
            view_count: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      class User < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::ForumPostListResponse::User,
              Whopsdk::Internal::AnyHash
            )
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user who created this forum post
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end

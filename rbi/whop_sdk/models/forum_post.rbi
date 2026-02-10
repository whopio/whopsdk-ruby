# typed: strong

module WhopSDK
  module Models
    class ForumPost < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::ForumPost, WhopSDK::Internal::AnyHash) }

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
      sig { returns(String) }
      attr_accessor :id

      # The total number of direct comments on this post.
      sig { returns(Integer) }
      attr_accessor :comment_count

      # The body of the forum post in Markdown format. Null if the post is paywalled and
      # the current user does not have access.
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # The time this post was created, as a Unix timestamp.
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether this post has been edited after its initial creation.
      sig { returns(T::Boolean) }
      attr_accessor :is_edited

      # Whether this post is pinned to the top of the forum feed.
      sig { returns(T::Boolean) }
      attr_accessor :is_pinned

      # Whether the author of this post is an admin of the company that owns the forum.
      sig { returns(T::Boolean) }
      attr_accessor :is_poster_admin

      # The total number of like reactions this post has received.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :like_count

      # The unique identifier of the parent post. Null if this is a top-level post.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_id

      # The headline of the forum post. Null if the post has no title.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The time this post was last updated, as a Unix timestamp.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user who authored this forum post.
      sig { returns(WhopSDK::ForumPost::User) }
      attr_reader :user

      sig { params(user: WhopSDK::ForumPost::User::OrHash).void }
      attr_writer :user

      # The total number of times this post has been viewed by users.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :view_count

      # A post or comment in a forum feed, supporting rich text, attachments, polls, and
      # reactions.
      sig do
        params(
          id: String,
          comment_count: Integer,
          content: T.nilable(String),
          created_at: Time,
          is_edited: T::Boolean,
          is_pinned: T::Boolean,
          is_poster_admin: T::Boolean,
          like_count: T.nilable(Integer),
          parent_id: T.nilable(String),
          title: T.nilable(String),
          updated_at: Time,
          user: WhopSDK::ForumPost::User::OrHash,
          view_count: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        id:,
        # The total number of direct comments on this post.
        comment_count:,
        # The body of the forum post in Markdown format. Null if the post is paywalled and
        # the current user does not have access.
        content:,
        # The time this post was created, as a Unix timestamp.
        created_at:,
        # Whether this post has been edited after its initial creation.
        is_edited:,
        # Whether this post is pinned to the top of the forum feed.
        is_pinned:,
        # Whether the author of this post is an admin of the company that owns the forum.
        is_poster_admin:,
        # The total number of like reactions this post has received.
        like_count:,
        # The unique identifier of the parent post. Null if this is a top-level post.
        parent_id:,
        # The headline of the forum post. Null if the post has no title.
        title:,
        # The time this post was last updated, as a Unix timestamp.
        updated_at:,
        # The user who authored this forum post.
        user:,
        # The total number of times this post has been viewed by users.
        view_count:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            comment_count: Integer,
            content: T.nilable(String),
            created_at: Time,
            is_edited: T::Boolean,
            is_pinned: T::Boolean,
            is_poster_admin: T::Boolean,
            like_count: T.nilable(Integer),
            parent_id: T.nilable(String),
            title: T.nilable(String),
            updated_at: Time,
            user: WhopSDK::ForumPost::User,
            view_count: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::ForumPost::User, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user who authored this forum post.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
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
